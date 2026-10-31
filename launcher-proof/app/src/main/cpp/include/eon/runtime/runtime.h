#pragma once

#include <cstdint>
#include <mutex>

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
};

class Runtime final {
public:
    bool initialize();
    void resume();
    void pause();
    void shutdown();
    RuntimeSnapshot snapshot() const;

private:
    mutable std::mutex mutex_;
    LifecycleState state_ = LifecycleState::Cold;
    std::uint64_t generation_ = 0;
};

const char* lifecycleStateName(LifecycleState state);

}  // namespace eon::runtime