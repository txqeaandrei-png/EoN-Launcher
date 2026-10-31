#include "eon/runtime/runtime.h"

namespace eon::runtime {

bool Runtime::initialize() {
    std::lock_guard<std::mutex> lock(mutex_);
    if (state_ == LifecycleState::Ready || state_ == LifecycleState::Foreground ||
        state_ == LifecycleState::Background) {
        return true;
    }
    lastError_.clear();
    const bool rendererReady = renderer_.initialize();
    const bool inputReady = input_.initialize();
    if (!rendererReady || !inputReady) {
        lastError_ = !rendererReady ? "renderer initialization failed" : "input initialization failed";
        renderer_.shutdown();
        input_.shutdown();
        state_ = LifecycleState::Stopped;
        jniBridgeActive_ = false;
        return false;
    }
    gui_.initialize();
    state_ = LifecycleState::Ready;
    jniBridgeActive_ = true;
    ++generation_;
    return true;
}

void Runtime::resume() {
    std::lock_guard<std::mutex> lock(mutex_);
    if (state_ == LifecycleState::Ready || state_ == LifecycleState::Background) {
        state_ = LifecycleState::Foreground;
    }
}

void Runtime::pause() {
    std::lock_guard<std::mutex> lock(mutex_);
    if (state_ == LifecycleState::Foreground) {
        state_ = LifecycleState::Background;
    }
}

void Runtime::shutdown() {
    {
        std::lock_guard<std::mutex> lock(mutex_);
        if (state_ == LifecycleState::Cold || state_ == LifecycleState::Stopped) {
            return;
        }
        state_ = LifecycleState::Stopped;
        jniBridgeActive_ = false;
    }
    renderer_.shutdown();
    input_.shutdown();
    gui_.shutdown();
}

void Runtime::setLibraryLoaded(bool loaded) {
    std::lock_guard<std::mutex> lock(mutex_);
    libraryLoaded_ = loaded;
}

void Runtime::setGuiVisible(bool visible) { gui_.setVisible(visible); }
void Runtime::setGuiCategory(const std::string& category) { gui_.setCategory(category); }
void Runtime::setGuiSearch(const std::string& search) { gui_.setSearch(search); }
void Runtime::setModuleEnabled(const std::string& moduleId, bool enabled) {
    gui_.setModuleEnabled(moduleId, enabled);
}
void Runtime::setSetting(const std::string& moduleId, const std::string& setting,
                         const std::string& value) {
    gui_.setSetting(moduleId, setting, value);
}

void Runtime::updateScreenMetrics(const SurfaceMetrics& metrics) {
    input_.setScreenMetrics(metrics);
}

bool Runtime::initializeRenderSurface() {
    return renderer_.onSurfaceCreated();
}

void Runtime::resizeRenderSurface(const SurfaceMetrics& metrics) {
    renderer_.onSurfaceChanged(metrics);
}

void Runtime::renderFrame(double deltaSeconds) { renderer_.renderFrame(deltaSeconds); }
void Runtime::destroyRenderSurface() { renderer_.onSurfaceDestroyed(); }

bool Runtime::processInput(const InputEvent& event, const SurfaceMetrics& metrics) {
    input_.setScreenMetrics(metrics);
    return input_.onInputEvent(event);
}

void Runtime::setError(const std::string& error) {
    std::lock_guard<std::mutex> lock(mutex_);
    lastError_ = error;
}

RuntimeSnapshot Runtime::snapshot() const {
    std::lock_guard<std::mutex> lock(mutex_);
    RuntimeSnapshot value;
    value.state = state_;
    value.generation = generation_;
    value.authorizedHostAttached = false;
    value.libraryLoaded = libraryLoaded_;
    value.jniBridgeActive = jniBridgeActive_;
    value.renderer = renderer_.snapshot();
    value.input = input_.snapshot();
    value.gui = gui_.snapshot();
    value.lastError = lastError_;
    return value;
}

const char* lifecycleStateName(LifecycleState state) {
    switch (state) {
        case LifecycleState::Cold:
            return "cold";
        case LifecycleState::Ready:
            return "ready";
        case LifecycleState::Foreground:
            return "foreground";
        case LifecycleState::Background:
            return "background";
        case LifecycleState::Stopped:
            return "stopped";
    }
    return "unknown";
}

Runtime& sharedRuntime() {
    static Runtime runtime;
    return runtime;
}

}  // namespace eon::runtime