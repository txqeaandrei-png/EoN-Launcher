#pragma once

#include <cstdint>
#include <mutex>
#include <string>

#include "eon/runtime/interfaces.h"

namespace eon::runtime {

enum class LifecycleState {
    Cold,
    Ready,
    Foreground,
    Background,
    Stopped,
};

struct RuntimeSnapshot {
    LifecycleState state = LifecycleState::Cold;
    std::uint64_t generation = 0;
    bool authorizedHostAttached = false;
    bool libraryLoaded = false;
    bool jniBridgeActive = false;
    RenderSnapshot renderer;
    InputSnapshot input;
    GuiSnapshot gui;
    std::string lastError;
};

class Runtime final {
public:
    bool initialize();
    void resume();
    void pause();
    void shutdown();
    void setLibraryLoaded(bool loaded);
    void setGuiVisible(bool visible);
    void setGuiCategory(const std::string& category);
    void setGuiSearch(const std::string& search);
    void setModuleEnabled(const std::string& moduleId, bool enabled);
    void setSetting(const std::string& moduleId, const std::string& setting,
                    const std::string& value);
    void updateScreenMetrics(const SurfaceMetrics& metrics);
    bool initializeRenderSurface();
    void resizeRenderSurface(const SurfaceMetrics& metrics);
    void renderFrame(double deltaSeconds);
    void destroyRenderSurface();
    bool processInput(const InputEvent& event, const SurfaceMetrics& metrics);
    void setError(const std::string& error);
    RuntimeSnapshot snapshot() const;

private:
    mutable std::mutex mutex_;
    LifecycleState state_ = LifecycleState::Cold;
    std::uint64_t generation_ = 0;
    bool libraryLoaded_ = false;
    bool jniBridgeActive_ = false;
    std::string lastError_;
    NativeRenderer renderer_;
    NativeInput input_;
    GuiBridge gui_;
};

const char* lifecycleStateName(LifecycleState state);
Runtime& sharedRuntime();

}  // namespace eon::runtime