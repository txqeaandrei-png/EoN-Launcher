package com.eon.launcher.gui;

public enum ModuleCategory {
    COMBAT("Combat"),
    MOVEMENT("Movement"),
    MISC("Misc"),
    PLAYER("Player"),
    RENDER("Render"),
    SETTINGS("Settings");

    private final String label;

    ModuleCategory(String label) {
        this.label = label;
    }

    public String getLabel() {
        return label;
    }
}