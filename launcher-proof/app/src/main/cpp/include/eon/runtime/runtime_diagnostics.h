#pragma once

#include <string>

#include "eon/runtime/runtime.h"

namespace eon::runtime {

class RuntimeDiagnostics final {
public:
    static std::string toJson(const RuntimeSnapshot& snapshot);
};

}  // namespace eon::runtime