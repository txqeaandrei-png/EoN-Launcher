#include "eon/runtime/interfaces.h"

#include <unordered_set>

namespace eon::runtime {
namespace {

const char* phaseName(InputPhase phase) {
    switch (phase) {
        case InputPhase::Down: return "down";
        case InputPhase::Move: return "move";
        case InputPhase::Up: return "up";
        case InputPhase::Cancel: return "cancel";
        case InputPhase::KeyDown: return "key_down";
        case InputPhase::KeyUp: return "key_up";
    }
    return "unknown";
}

}  // namespace

bool NativeInput::initialize() {
    std::lock_guard<std::mutex> lock(mutex_);
    initialized_ = true;
    eventCount_ = 0;
    screenWidth_ = 0;
    screenHeight_ = 0;
    density_ = 1.0f;
    activePointers_.clear();
    activePointersCount_ = 0;
    lastEvent_ = "none";
    return true;
}

bool NativeInput::onInputEvent(const InputEvent& event) {
    std::lock_guard<std::mutex> lock(mutex_);
    if (!initialized_) {
        return false;
    }
    ++eventCount_;
    lastEvent_ = phaseName(event.phase);
    switch (event.phase) {
        case InputPhase::Down:
            if (event.pointerId >= 0) activePointers_.insert(event.pointerId);
            break;
        case InputPhase::Up:
            activePointers_.erase(event.pointerId);
            break;
        case InputPhase::Cancel:
            activePointers_.clear();
            break;
        default:
            break;
    }
    activePointersCount_ = static_cast<int>(activePointers_.size());
    return true;
}

void NativeInput::setScreenMetrics(const SurfaceMetrics& metrics) {
    std::lock_guard<std::mutex> lock(mutex_);
    screenWidth_ = metrics.width;
    screenHeight_ = metrics.height;
    density_ = metrics.density;
}

void NativeInput::shutdown() {
    std::lock_guard<std::mutex> lock(mutex_);
    initialized_ = false;
    activePointers_.clear();
    activePointersCount_ = 0;
}

InputSnapshot NativeInput::snapshot() const {
    std::lock_guard<std::mutex> lock(mutex_);
    return InputSnapshot{initialized_, eventCount_, screenWidth_, screenHeight_, density_,
                         activePointersCount_, lastEvent_};
}

}  // namespace eon::runtime