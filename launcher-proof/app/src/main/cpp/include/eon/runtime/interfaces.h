#pragma once

#include <cstdint>
#include <map>
#include <mutex>
#include <string>
#include <unordered_set>
#include <vector>

namespace eon::runtime {

struct SurfaceMetrics {
    int width = 0;
    int height = 0;
    float density = 1.0f;
};

enum class InputPhase {
    Down,
    Move,
    Up,
    Cancel,
    KeyDown,
    KeyUp,
};

struct InputEvent {
    InputPhase phase = InputPhase::Cancel;
    int pointerId = -1;
    int keyCode = 0;
    float x = 0.0f;
    float y = 0.0f;
    std::int64_t eventTimeMillis = 0;
};

class IInputSink {
public:
    virtual ~IInputSink() = default;
    virtual bool onInputEvent(const InputEvent& event) = 0;
};

class IRenderBackend {
public:
    virtual ~IRenderBackend() = default;
    virtual bool onSurfaceCreated() = 0;
    virtual void onSurfaceChanged(const SurfaceMetrics& metrics) = 0;
    virtual void renderFrame(double deltaSeconds) = 0;
    virtual void onSurfaceDestroyed() = 0;
};

struct RenderSnapshot {
    bool initialized = false;
    bool surfaceAttached = false;
    int width = 0;
    int height = 0;
    float density = 1.0f;
    std::uint64_t frameCount = 0;
    std::string lastError;
};

class NativeRenderer final : public IRenderBackend {
public:
    bool initialize();
    bool onSurfaceCreated() override;
    void onSurfaceChanged(const SurfaceMetrics& metrics) override;
    void renderFrame(double deltaSeconds) override;
    void onSurfaceDestroyed() override;
    void shutdown();
    RenderSnapshot snapshot() const;

private:
    mutable std::mutex mutex_;
    bool initialized_ = false;
    bool surfaceAttached_ = false;
    int width_ = 0;
    int height_ = 0;
    float density_ = 1.0f;
    std::uint64_t frameCount_ = 0;
    std::string lastError_;
};

struct InputSnapshot {
    bool initialized = false;
    std::uint64_t eventCount = 0;
    int screenWidth = 0;
    int screenHeight = 0;
    float density = 1.0f;
    int activePointers = 0;
    std::string lastEvent;
};

class NativeInput final : public IInputSink {
public:
    bool initialize();
    bool onInputEvent(const InputEvent& event) override;
    void setScreenMetrics(const SurfaceMetrics& metrics);
    void shutdown();
    InputSnapshot snapshot() const;

private:
    mutable std::mutex mutex_;
    bool initialized_ = false;
    std::uint64_t eventCount_ = 0;
    int screenWidth_ = 0;
    int screenHeight_ = 0;
    float density_ = 1.0f;
    int activePointersCount_ = 0;
    std::string lastEvent_ = "none";
    std::unordered_set<int> activePointers_;
};

enum class GuiCommandType {
    FilledRectangle,
    OutlineRectangle,
    Text,
    Line,
};

struct GuiCommand {
    GuiCommandType type = GuiCommandType::FilledRectangle;
    float x = 0.0f;
    float y = 0.0f;
    float width = 0.0f;
    float height = 0.0f;
    std::uint32_t colorRgba = 0;
    std::string text;
};

using GuiFrame = std::vector<GuiCommand>;

struct GuiSnapshot {
    bool initialized = false;
    bool visible = false;
    std::string category = "Combat";
    std::string search;
    std::uint64_t eventCount = 0;
    std::uint32_t prototypeToggles = 0;
    std::string lastEvent = "none";
};

class GuiBridge final {
public:
    void initialize();
    void setVisible(bool visible);
    void setCategory(const std::string& category);
    void setSearch(const std::string& search);
    void setModuleEnabled(const std::string& moduleId, bool enabled);
    void setSetting(const std::string& moduleId, const std::string& setting,
                    const std::string& value);
    void shutdown();
    GuiSnapshot snapshot() const;

private:
    void recordEvent(const std::string& event);
    mutable std::mutex mutex_;
    bool initialized_ = false;
    bool visible_ = false;
    std::string category_ = "Combat";
    std::string search_;
    std::uint64_t eventCount_ = 0;
    std::uint32_t prototypeToggles_ = 0;
    std::string lastEvent_ = "none";
    std::map<std::string, bool> modules_;
    std::map<std::string, std::string> settings_;
};

class IGuiRenderer {
public:
    virtual ~IGuiRenderer() = default;
    virtual bool initialize() = 0;
    virtual void render(const GuiFrame& frame, const SurfaceMetrics& metrics) = 0;
    virtual void shutdown() = 0;
};

class IAuthorizedGameHost {
public:
    virtual ~IAuthorizedGameHost() = default;
    virtual bool attach() = 0;
    virtual void detach() = 0;
    virtual bool isAttached() const = 0;
};

struct ModuleDescriptor {
    std::string id;
    std::string displayName;
    std::string category;
};

class IModule {
public:
    virtual ~IModule() = default;
    virtual const ModuleDescriptor& descriptor() const = 0;
    virtual bool enable() = 0;
    virtual void disable() = 0;
};

}  // namespace eon::runtime