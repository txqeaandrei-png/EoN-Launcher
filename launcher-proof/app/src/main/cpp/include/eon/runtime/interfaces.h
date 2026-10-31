#pragma once

#include <cstdint>
#include <string>
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