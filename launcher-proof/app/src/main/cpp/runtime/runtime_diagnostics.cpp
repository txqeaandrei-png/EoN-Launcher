#include "eon/runtime/runtime_diagnostics.h"

#include <iomanip>
#include <sstream>

namespace eon::runtime {
namespace {

std::string escaped(const std::string& value) {
    std::ostringstream result;
    for (unsigned char ch : value) {
        switch (ch) {
            case '"': result << "\\\""; break;
            case '\\': result << "\\\\"; break;
            case '\n': result << "\\n"; break;
            case '\r': result << "\\r"; break;
            case '\t': result << "\\t"; break;
            default:
                if (ch < 0x20) {
                    result << "\\u" << std::hex << std::setw(4) << std::setfill('0')
                           << static_cast<int>(ch) << std::dec;
                } else {
                    result << static_cast<char>(ch);
                }
        }
    }
    return result.str();
}

}  // namespace

std::string RuntimeDiagnostics::toJson(const RuntimeSnapshot& value) {
    std::ostringstream json;
    json << "{"
         << "\"libraryLoaded\":" << (value.libraryLoaded ? "true" : "false") << ','
         << "\"initialized\":" << ((value.state != LifecycleState::Cold && value.state != LifecycleState::Stopped) ? "true" : "false") << ','
         << "\"runtimeState\":\"" << lifecycleStateName(value.state) << "\","
         << "\"jniBridgeStatus\":\"" << (value.jniBridgeActive ? "CONNECTED" : "DISCONNECTED") << "\","
         << "\"rendererStatus\":\"" << (value.renderer.surfaceAttached ? "CONNECTED" : "DISCONNECTED") << "\","
         << "\"rendererInitialized\":" << (value.renderer.initialized ? "true" : "false") << ','
         << "\"inputStatus\":\"" << (value.input.initialized ? "CONNECTED" : "DISCONNECTED") << "\","
         << "\"hostStatus\":\"" << (value.authorizedHostAttached ? "CONNECTED" : "DISCONNECTED") << "\","
         << "\"guiInitialized\":" << (value.gui.initialized ? "true" : "false") << ','
         << "\"guiVisible\":" << (value.gui.visible ? "true" : "false") << ','
         << "\"screenWidth\":" << value.input.screenWidth << ','
         << "\"screenHeight\":" << value.input.screenHeight << ','
         << "\"density\":" << value.input.density << ','
         << "\"frameCount\":" << value.renderer.frameCount << ','
         << "\"inputEventCount\":" << value.input.eventCount << ','
         << "\"activePointers\":" << value.input.activePointers << ','
         << "\"guiEventCount\":" << value.gui.eventCount << ','
         << "\"prototypeToggles\":" << value.gui.prototypeToggles << ','
         << "\"guiCategory\":\"" << escaped(value.gui.category) << "\","
         << "\"search\":\"" << escaped(value.gui.search) << "\","
         << "\"lastGuiEvent\":\"" << escaped(value.gui.lastEvent) << "\","
         << "\"lastInputEvent\":\"" << escaped(value.input.lastEvent) << "\","
         << "\"renderError\":\"" << escaped(value.renderer.lastError) << "\","
         << "\"runtimeError\":\"" << escaped(value.lastError) << "\","
         << "\"generation\":" << value.generation
         << "}";
    return json.str();
}

}  // namespace eon::runtime