package com.eon.launcher.gui;

import android.content.Context;
import android.content.SharedPreferences;

import java.util.List;

public final class ModuleConfigStore {
    private static final String PREFERENCES = "eon_clickgui_prototype";
    private static final String DRAFT_PREFIX = "draft.";
    private static final String SAVED_PREFIX = "saved.";
    private static final String SAVED_CONFIG_FLAG = "has_saved_config";
    private final SharedPreferences preferences;

    public ModuleConfigStore(Context context) {
        preferences = context.getSharedPreferences(PREFERENCES, Context.MODE_PRIVATE);
    }

    public boolean isEnabled(ModuleDefinition module) {
        return preferences.getBoolean(key(DRAFT_PREFIX, module, "enabled"), false);
    }

    public void setEnabled(ModuleDefinition module, boolean enabled) {
        preferences.edit().putBoolean(key(DRAFT_PREFIX, module, "enabled"), enabled).apply();
    }

    public boolean isExpanded(ModuleDefinition module) {
        return preferences.getBoolean(key(DRAFT_PREFIX, module, "expanded"), false);
    }

    public void setExpanded(ModuleDefinition module, boolean expanded) {
        preferences.edit().putBoolean(key(DRAFT_PREFIX, module, "expanded"), expanded).apply();
    }

    public int getRange(ModuleDefinition module) {
        return preferences.getInt(key(DRAFT_PREFIX, module, "range"), module.getDefaultValue());
    }

    public void setRange(ModuleDefinition module, int value) {
        preferences.edit().putInt(key(DRAFT_PREFIX, module, "range"), value).apply();
    }

    public String getChoice(ModuleDefinition module) {
        return preferences.getString(key(DRAFT_PREFIX, module, "choice"), module.getDefaultChoice());
    }

    public void setChoice(ModuleDefinition module, String value) {
        preferences.edit().putString(key(DRAFT_PREFIX, module, "choice"), value).apply();
    }

    public boolean hasSavedConfig() {
        return preferences.getBoolean(SAVED_CONFIG_FLAG, false);
    }

    public void save(List<ModuleDefinition> modules) {
        SharedPreferences.Editor editor = preferences.edit();
        for (ModuleDefinition module : modules) {
            copyValue(editor, module, "enabled", preferences.getBoolean(key(DRAFT_PREFIX, module, "enabled"), false));
            copyValue(editor, module, "expanded", preferences.getBoolean(key(DRAFT_PREFIX, module, "expanded"), false));
            if (module.getSettingType() == ModuleDefinition.SettingType.RANGE) {
                copyValue(editor, module, "range", preferences.getInt(key(DRAFT_PREFIX, module, "range"), module.getDefaultValue()));
            } else {
                copyValue(editor, module, "choice", preferences.getString(key(DRAFT_PREFIX, module, "choice"), module.getDefaultChoice()));
            }
        }
        editor.putBoolean(SAVED_CONFIG_FLAG, true).apply();
    }

    public boolean load(List<ModuleDefinition> modules) {
        if (!hasSavedConfig()) {
            return false;
        }
        SharedPreferences.Editor editor = preferences.edit();
        for (ModuleDefinition module : modules) {
            copySavedValue(editor, module, "enabled", preferences.getBoolean(key(SAVED_PREFIX, module, "enabled"), false));
            copySavedValue(editor, module, "expanded", preferences.getBoolean(key(SAVED_PREFIX, module, "expanded"), false));
            if (module.getSettingType() == ModuleDefinition.SettingType.RANGE) {
                copySavedValue(editor, module, "range", preferences.getInt(key(SAVED_PREFIX, module, "range"), module.getDefaultValue()));
            } else {
                copySavedValue(editor, module, "choice", preferences.getString(key(SAVED_PREFIX, module, "choice"), module.getDefaultChoice()));
            }
        }
        return editor.commit();
    }

    public void reset(List<ModuleDefinition> modules) {
        SharedPreferences.Editor editor = preferences.edit();
        for (ModuleDefinition module : modules) {
            editor.putBoolean(key(DRAFT_PREFIX, module, "enabled"), false);
            editor.putBoolean(key(DRAFT_PREFIX, module, "expanded"), false);
            if (module.getSettingType() == ModuleDefinition.SettingType.RANGE) {
                editor.putInt(key(DRAFT_PREFIX, module, "range"), module.getDefaultValue());
            } else {
                editor.putString(key(DRAFT_PREFIX, module, "choice"), module.getDefaultChoice());
            }
        }
        editor.apply();
    }

    private void copyValue(SharedPreferences.Editor editor, ModuleDefinition module, String field, Object value) {
        String key = key(SAVED_PREFIX, module, field);
        if (value instanceof Boolean) {
            editor.putBoolean(key, (Boolean) value);
        } else if (value instanceof Integer) {
            editor.putInt(key, (Integer) value);
        } else if (value instanceof String) {
            editor.putString(key, (String) value);
        }
    }

    private void copySavedValue(SharedPreferences.Editor editor, ModuleDefinition module, String field, Object value) {
        String key = key(DRAFT_PREFIX, module, field);
        if (value instanceof Boolean) {
            editor.putBoolean(key, (Boolean) value);
        } else if (value instanceof Integer) {
            editor.putInt(key, (Integer) value);
        } else if (value instanceof String) {
            editor.putString(key, (String) value);
        }
    }

    private String key(String prefix, ModuleDefinition module, String field) {
        return prefix + module.getId() + "." + field;
    }
}