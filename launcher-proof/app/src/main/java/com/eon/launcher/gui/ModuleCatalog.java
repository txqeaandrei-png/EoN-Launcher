package com.eon.launcher.gui;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public final class ModuleCatalog {
    private static final List<ModuleDefinition> MODULES = createModules();

    private ModuleCatalog() {
    }

    public static List<ModuleDefinition> all() {
        return MODULES;
    }

    private static List<ModuleDefinition> createModules() {
        List<ModuleDefinition> modules = new ArrayList<>();
        modules.add(ModuleDefinition.range("aimbot", "AimBot", "Recovered module label; prototype only.", ModuleCategory.COMBAT, "Field of view", 10, 120, 65));
        modules.add(ModuleDefinition.range("aura", "Aura", "Recovered module label; prototype only.", ModuleCategory.COMBAT, "Target range", 1, 8, 3));
        modules.add(ModuleDefinition.range("autoclicker", "AutoClicker", "Recovered module label; prototype only.", ModuleCategory.COMBAT, "Click interval", 1, 20, 8));
        modules.add(ModuleDefinition.choices("autosprint", "AutoSprint", "Recovered module label; prototype only.", ModuleCategory.MOVEMENT, "Activation", "Automatic", "Manual"));
        modules.add(ModuleDefinition.range("speed", "Speed", "Recovered module label; prototype only.", ModuleCategory.MOVEMENT, "Multiplier", 1, 10, 2));
        modules.add(ModuleDefinition.choices("flight", "Flight", "Recovered module label; prototype only.", ModuleCategory.MOVEMENT, "Mode", "Creative", "Glide"));
        modules.add(ModuleDefinition.choices("namespoof", "NameSpoof", "Recovered module label; prototype only.", ModuleCategory.MISC, "Label style", "Short", "Classic", "Custom"));
        modules.add(ModuleDefinition.choices("notifications", "Notifications", "Recovered module label; prototype only.", ModuleCategory.MISC, "Style", "Minimal", "Detailed"));
        modules.add(ModuleDefinition.choices("pktlogger", "PktLogger", "Recovered module label; prototype only.", ModuleCategory.MISC, "Detail", "Summary", "Full"));
        modules.add(ModuleDefinition.choices("playerinfo", "PlayerInfo", "Recovered module label; prototype only.", ModuleCategory.PLAYER, "Display", "Compact", "Detailed"));
        modules.add(ModuleDefinition.range("invhelper", "InvHelper", "Recovered module label; prototype only.", ModuleCategory.PLAYER, "Hotbar slots", 1, 9, 9));
        modules.add(ModuleDefinition.choices("autototem", "AutoTotem", "Recovered module label; prototype only.", ModuleCategory.PLAYER, "Preference", "Offhand", "Hotbar"));
        modules.add(ModuleDefinition.choices("esp", "ESP", "Recovered module label; prototype only.", ModuleCategory.RENDER, "Style", "Outline", "Box"));
        modules.add(ModuleDefinition.choices("chestesp", "ChestESP", "Recovered module label; prototype only.", ModuleCategory.RENDER, "Marker", "Icon", "Outline"));
        modules.add(ModuleDefinition.range("nametag", "NameTag", "Recovered module label; prototype only.", ModuleCategory.RENDER, "Scale", 75, 150, 100));
        modules.add(ModuleDefinition.range("tracer", "Tracer", "Recovered module label; prototype only.", ModuleCategory.RENDER, "Opacity", 10, 100, 70));
        modules.add(ModuleDefinition.choices("ui-accent", "Accent color", "Changes this prototype's accent color.", ModuleCategory.SETTINGS, "Palette", "Mint", "Cyan", "Lime"));
        modules.add(ModuleDefinition.choices("ui-density", "Card spacing", "Changes this prototype's card spacing.", ModuleCategory.SETTINGS, "Density", "Comfortable", "Compact"));
        modules.add(ModuleDefinition.choices("ui-motion", "Motion", "Changes this prototype's transition style.", ModuleCategory.SETTINGS, "Transitions", "Standard", "Soft", "Reduced"));
        modules.add(ModuleDefinition.choices("ui-descriptions", "Module descriptions", "Show or hide descriptions in the catalog.", ModuleCategory.SETTINGS, "Visibility", "Show", "Hide"));
        return Collections.unmodifiableList(modules);
    }
}