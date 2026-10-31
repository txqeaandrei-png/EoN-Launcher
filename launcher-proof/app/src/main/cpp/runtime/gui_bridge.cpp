#include "eon/runtime/interfaces.h"

namespace eon::runtime {

void GuiBridge::initialize() {
    std::lock_guard<std::mutex> lock(mutex_);
    initialized_ = true;
    visible_ = false;
    category_ = "Combat";
    search_.clear();
    eventCount_ = 0;
    prototypeToggles_ = 0;
    lastEvent_ = "none";
    modules_.clear();
    settings_.clear();
}

void GuiBridge::recordEvent(const std::string& event) {
    ++eventCount_;
    lastEvent_ = event;
}

void GuiBridge::setVisible(bool visible) {
    std::lock_guard<std::mutex> lock(mutex_);
    if (!initialized_ || visible_ == visible) return;
    visible_ = visible;
    recordEvent(visible ? "visible" : "hidden");
}

void GuiBridge::setCategory(const std::string& category) {
    std::lock_guard<std::mutex> lock(mutex_);
    if (!initialized_ || category_ == category) return;
    category_ = category;
    recordEvent("category:" + category);
}

void GuiBridge::setSearch(const std::string& search) {
    std::lock_guard<std::mutex> lock(mutex_);
    if (!initialized_ || search_ == search) return;
    search_ = search;
    recordEvent("search");
}

void GuiBridge::setModuleEnabled(const std::string& moduleId, bool enabled) {
    std::lock_guard<std::mutex> lock(mutex_);
    if (!initialized_) return;
    const auto existing = modules_.find(moduleId);
    if (existing != modules_.end() && existing->second == enabled) return;
    modules_[moduleId] = enabled;
    prototypeToggles_ = 0;
    for (const auto& module : modules_) {
        if (module.second) ++prototypeToggles_;
    }
    recordEvent("module:" + moduleId);
}

void GuiBridge::setSetting(const std::string& moduleId, const std::string& setting,
                           const std::string& value) {
    std::lock_guard<std::mutex> lock(mutex_);
    if (!initialized_) return;
    const std::string key = moduleId + "." + setting;
    const auto existing = settings_.find(key);
    if (existing != settings_.end() && existing->second == value) return;
    settings_[key] = value;
    recordEvent("setting:" + key);
}

void GuiBridge::shutdown() {
    std::lock_guard<std::mutex> lock(mutex_);
    initialized_ = false;
    visible_ = false;
    modules_.clear();
    settings_.clear();
}

GuiSnapshot GuiBridge::snapshot() const {
    std::lock_guard<std::mutex> lock(mutex_);
    return GuiSnapshot{initialized_, visible_, category_, search_, eventCount_, prototypeToggles_, lastEvent_};
}

}  // namespace eon::runtime