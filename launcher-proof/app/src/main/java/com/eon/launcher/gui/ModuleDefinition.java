package com.eon.launcher.gui;

public final class ModuleDefinition {
    public enum SettingType {
        RANGE,
        CHOICE
    }

    private final String id;
    private final String name;
    private final String description;
    private final ModuleCategory category;
    private final String settingLabel;
    private final SettingType settingType;
    private final int minimum;
    private final int maximum;
    private final int defaultValue;
    private final String[] choices;

    private ModuleDefinition(String id, String name, String description, ModuleCategory category,
            String settingLabel, SettingType settingType, int minimum, int maximum,
            int defaultValue, String[] choices) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.category = category;
        this.settingLabel = settingLabel;
        this.settingType = settingType;
        this.minimum = minimum;
        this.maximum = maximum;
        this.defaultValue = defaultValue;
        this.choices = choices.clone();
    }

    public static ModuleDefinition range(String id, String name, String description,
            ModuleCategory category, String settingLabel, int minimum, int maximum, int defaultValue) {
        return new ModuleDefinition(id, name, description, category, settingLabel,
                SettingType.RANGE, minimum, maximum, defaultValue, new String[0]);
    }

    public static ModuleDefinition choices(String id, String name, String description,
            ModuleCategory category, String settingLabel, String... choices) {
        return new ModuleDefinition(id, name, description, category, settingLabel,
                SettingType.CHOICE, 0, 0, 0, choices);
    }

    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getDescription() {
        return description;
    }

    public ModuleCategory getCategory() {
        return category;
    }

    public String getSettingLabel() {
        return settingLabel;
    }

    public SettingType getSettingType() {
        return settingType;
    }

    public int getMinimum() {
        return minimum;
    }

    public int getMaximum() {
        return maximum;
    }

    public int getDefaultValue() {
        return defaultValue;
    }

    public String[] getChoices() {
        return choices.clone();
    }

    public String getDefaultChoice() {
        return choices.length == 0 ? "" : choices[0];
    }
}