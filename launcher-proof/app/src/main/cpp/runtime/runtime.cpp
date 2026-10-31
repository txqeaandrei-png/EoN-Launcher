#include "eon/runtime/runtime.h"

namespace eon::runtime {

bool Runtime::initialize() {
    std::lock_guard<std::mutex> lock(mutex_);
    if (state_ == LifecycleState::Ready || state_ == LifecycleState::Foreground ||
        state_ == LifecycleState::Background) {
        return true;
    }
    state_ = LifecycleState::Ready;
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
    std::lock_guard<std::mutex> lock(mutex_);
    if (state_ != LifecycleState::Cold && state_ != LifecycleState::Stopped) {
        state_ = LifecycleState::Stopped;
    }
}

RuntimeSnapshot Runtime::snapshot() const {
    std::lock_guard<std::mutex> lock(mutex_);
    return RuntimeSnapshot{state_, generation_, false};
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

}  // namespace eon::runtime