#include "eon/runtime/interfaces.h"

#include <GLES2/gl2.h>

namespace eon::runtime {

bool NativeRenderer::initialize() {
    std::lock_guard<std::mutex> lock(mutex_);
    initialized_ = true;
    surfaceAttached_ = false;
    width_ = 0;
    height_ = 0;
    frameCount_ = 0;
    lastError_.clear();
    return true;
}

bool NativeRenderer::onSurfaceCreated() {
    std::lock_guard<std::mutex> lock(mutex_);
    if (!initialized_) {
        lastError_ = "renderer not initialized";
        return false;
    }
    while (glGetError() != GL_NO_ERROR) {
    }
    glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
    const GLenum error = glGetError();
    if (error != GL_NO_ERROR) {
        lastError_ = "GLES surface initialization error " + std::to_string(error);
        surfaceAttached_ = false;
        return false;
    }
    surfaceAttached_ = true;
    width_ = 0;
    height_ = 0;
    return true;
}

void NativeRenderer::onSurfaceChanged(const SurfaceMetrics& metrics) {
    std::lock_guard<std::mutex> lock(mutex_);
    if (!initialized_ || !surfaceAttached_) {
        return;
    }
    if (metrics.width <= 0 || metrics.height <= 0) {
        lastError_ = "invalid GLES surface dimensions";
        return;
    }
    width_ = metrics.width;
    height_ = metrics.height;
    density_ = metrics.density;
    glViewport(0, 0, width_, height_);
    const GLenum error = glGetError();
    if (error != GL_NO_ERROR) {
        lastError_ = "GLES viewport error " + std::to_string(error);
    }
}

void NativeRenderer::renderFrame(double deltaSeconds) {
    static_cast<void>(deltaSeconds);
    std::lock_guard<std::mutex> lock(mutex_);
    if (!initialized_ || !surfaceAttached_) {
        return;
    }
    while (glGetError() != GL_NO_ERROR) {
    }
    glClear(GL_COLOR_BUFFER_BIT);
    const GLenum error = glGetError();
    if (error != GL_NO_ERROR) {
        lastError_ = "GLES clear error " + std::to_string(error);
        return;
    }
    lastError_.clear();
    ++frameCount_;
}

void NativeRenderer::onSurfaceDestroyed() {
    std::lock_guard<std::mutex> lock(mutex_);
    surfaceAttached_ = false;
    width_ = 0;
    height_ = 0;
}

void NativeRenderer::shutdown() {
    std::lock_guard<std::mutex> lock(mutex_);
    surfaceAttached_ = false;
    initialized_ = false;
    width_ = 0;
    height_ = 0;
}

RenderSnapshot NativeRenderer::snapshot() const {
    std::lock_guard<std::mutex> lock(mutex_);
    return RenderSnapshot{initialized_, surfaceAttached_, width_, height_, density_, frameCount_, lastError_};
}

}  // namespace eon::runtime