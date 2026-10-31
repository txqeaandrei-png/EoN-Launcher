package com.eon.launcher.gui;

import android.app.AlertDialog;
import android.animation.LayoutTransition;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.widget.SwitchCompat;

import com.google.android.material.card.MaterialCardView;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public final class ClickGuiView extends LinearLayout {
    private static final int COLOR_BACKGROUND = Color.rgb(12, 17, 18);
    private static final int COLOR_SURFACE = Color.rgb(23, 31, 33);
    private static final int COLOR_SURFACE_ACTIVE = Color.rgb(29, 42, 43);
    private static final int COLOR_TEXT = Color.rgb(236, 243, 241);
    private static final int COLOR_MUTED = Color.rgb(151, 169, 167);

    private final ModuleConfigStore configStore;
    private final LinearLayout categoryRow;
    private final LinearLayout moduleList;
    private final TextView resultCount;
    private final EditText searchField;
    private ModuleCategory activeCategory = ModuleCategory.COMBAT;
    private String searchQuery = "";
    private InteractionListener interactionListener;

    public interface InteractionListener {
        void onCategoryChanged(String category);
        void onSearchChanged(String query);
        void onModuleToggled(String moduleId, boolean enabled);
        void onSettingChanged(String moduleId, String setting, String value);
        void onTouchEvent(MotionEvent event, View source);
    }

    public ClickGuiView(android.content.Context context) {
        super(context);
        configStore = new ModuleConfigStore(context);
        setOrientation(VERTICAL);
        setBackgroundColor(COLOR_BACKGROUND);
        setPadding(dp(16), dp(12), dp(16), dp(8));

        LinearLayout prototypeBanner = new LinearLayout(context);
        prototypeBanner.setOrientation(VERTICAL);
        prototypeBanner.setPadding(dp(12), dp(10), dp(12), dp(10));
        prototypeBanner.setBackground(background(COLOR_SURFACE_ACTIVE, 8));
        TextView prototypeTitle = text("CLICKGUI PROTOTYPE", 10, accentColor());
        prototypeTitle.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        prototypeBanner.addView(prototypeTitle);
        TextView prototypeDetail = text("Switches and settings are saved locally; they do not affect Minecraft.", 11, COLOR_MUTED);
        LinearLayout.LayoutParams detailParams = new LinearLayout.LayoutParams(-1, -2);
        detailParams.topMargin = dp(4);
        prototypeBanner.addView(prototypeDetail, detailParams);
        addView(prototypeBanner, new LayoutParams(-1, -2));

        searchField = new EditText(context);
        searchField.setSingleLine(true);
        searchField.setTextSize(14);
        searchField.setTextColor(COLOR_TEXT);
        searchField.setHintTextColor(COLOR_MUTED);
        searchField.setHint("Search modules");
        searchField.setPadding(dp(14), 0, dp(14), 0);
        searchField.setBackground(background(COLOR_SURFACE, 8));
        LayoutParams searchParams = new LayoutParams(-1, dp(46));
        searchParams.topMargin = dp(12);
        addView(searchField, searchParams);

        HorizontalScrollView categoryScroll = new HorizontalScrollView(context);
        categoryScroll.setHorizontalScrollBarEnabled(false);
        categoryRow = new LinearLayout(context);
        categoryRow.setOrientation(HORIZONTAL);
        categoryScroll.addView(categoryRow);
        LayoutParams categoryParams = new LayoutParams(-1, dp(42));
        categoryParams.topMargin = dp(10);
        addView(categoryScroll, categoryParams);

        LinearLayout listHeader = new LinearLayout(context);
        listHeader.setGravity(Gravity.CENTER_VERTICAL);
        resultCount = text("", 11, COLOR_MUTED);
        listHeader.addView(resultCount, new LayoutParams(0, -2, 1));
        addView(listHeader, new LayoutParams(-1, dp(30)));

        ScrollView listScroll = new ScrollView(context);
        listScroll.setFillViewport(true);
        listScroll.setClipToPadding(false);
        moduleList = new LinearLayout(context);
        moduleList.setOrientation(VERTICAL);
        moduleList.setLayoutTransition(new LayoutTransition());
        moduleList.setPadding(0, dp(2), 0, dp(14));
        listScroll.addView(moduleList);
        addView(listScroll, new LayoutParams(-1, 0, 1));

        searchField.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence value, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence value, int start, int before, int count) {
                searchQuery = value.toString().trim().toLowerCase(Locale.ROOT);
                if (interactionListener != null) {
                    interactionListener.onSearchChanged(searchQuery);
                }
                renderModules();
            }

            @Override
            public void afterTextChanged(Editable value) {
            }
        });

        renderCategories();
        renderModules();
    }

    public void setInteractionListener(InteractionListener listener) {
        interactionListener = listener;
        syncPrototypeStateToListener();
    }

    private void syncPrototypeStateToListener() {
        if (interactionListener == null) return;
        interactionListener.onCategoryChanged(activeCategory.getLabel());
        interactionListener.onSearchChanged(searchQuery);
        for (ModuleDefinition module : ModuleCatalog.all()) {
            interactionListener.onModuleToggled(module.getId(), configStore.isEnabled(module));
            if (module.getSettingType() == ModuleDefinition.SettingType.RANGE) {
                interactionListener.onSettingChanged(module.getId(), module.getSettingLabel(),
                        String.valueOf(configStore.getRange(module)));
            } else {
                interactionListener.onSettingChanged(module.getId(), module.getSettingLabel(),
                        configStore.getChoice(module));
            }
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent event) {
        if (interactionListener != null) {
            interactionListener.onTouchEvent(event, this);
        }
        return super.dispatchTouchEvent(event);
    }

    private void renderCategories() {
        categoryRow.removeAllViews();
        for (ModuleCategory category : ModuleCategory.values()) {
            boolean selected = category == activeCategory;
            TextView tab = text(category.getLabel(), 11, selected ? COLOR_BACKGROUND : COLOR_MUTED);
            tab.setGravity(Gravity.CENTER);
            tab.setTypeface(Typeface.DEFAULT, selected ? Typeface.BOLD : Typeface.NORMAL);
            tab.setPadding(dp(13), 0, dp(13), 0);
            tab.setBackground(background(selected ? accentColor() : COLOR_SURFACE, 8));
            tab.setOnClickListener(view -> {
                activeCategory = category;
                if (interactionListener != null) {
                    interactionListener.onCategoryChanged(category.getLabel());
                }
                renderCategories();
                renderModules();
            });
            LayoutParams params = new LayoutParams(-2, dp(34));
            params.setMargins(0, 0, dp(7), 0);
            categoryRow.addView(tab, params);
        }
    }

    private void renderModules() {
        moduleList.removeAllViews();
        List<ModuleDefinition> visibleModules = new ArrayList<>();
        for (ModuleDefinition module : ModuleCatalog.all()) {
            if (module.getCategory() != activeCategory) {
                continue;
            }
            String searchable = (module.getName() + " " + module.getDescription() + " " + module.getSettingLabel())
                    .toLowerCase(Locale.ROOT);
            if (searchQuery.isEmpty() || searchable.contains(searchQuery)) {
                visibleModules.add(module);
            }
        }

        if (activeCategory == ModuleCategory.SETTINGS) {
            addConfigActions();
        }
        resultCount.setText(visibleModules.size() + (visibleModules.size() == 1 ? " item" : " items"));
        if (visibleModules.isEmpty()) {
            TextView empty = text("No matching modules", 13, COLOR_MUTED);
            empty.setGravity(Gravity.CENTER);
            moduleList.addView(empty, new LayoutParams(-1, dp(120)));
        }

        int index = 0;
        for (ModuleDefinition module : visibleModules) {
            View card = createModuleCard(module);
            LayoutParams params = new LayoutParams(-1, -2);
            params.bottomMargin = dp(isCompactDensity() ? 6 : 9);
            moduleList.addView(card, params);
            animateEntry(card, index++);
        }
    }

    private View createModuleCard(ModuleDefinition module) {
        MaterialCardView card = new MaterialCardView(getContext());
        card.setCardBackgroundColor(COLOR_SURFACE);
        card.setRadius(dp(8));
        card.setCardElevation(dp(1));
        card.setUseCompatPadding(false);
        card.setStrokeWidth(dp(1));
        card.setStrokeColor(ColorStateList.valueOf(configStore.isEnabled(module) ? accentColor() : Color.rgb(43, 55, 57)));

        LinearLayout body = new LinearLayout(getContext());
        body.setOrientation(VERTICAL);
        int cardPadding = isCompactDensity() ? 9 : 13;
        body.setPadding(dp(cardPadding), dp(cardPadding), dp(cardPadding), dp(cardPadding));
        body.setLayoutTransition(new LayoutTransition());
        card.addView(body, new MaterialCardView.LayoutParams(-1, -2));

        LinearLayout heading = new LinearLayout(getContext());
        heading.setGravity(Gravity.CENTER_VERTICAL);
        TextView name = text(module.getName(), 14, COLOR_TEXT);
        name.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        heading.addView(name, new LayoutParams(0, -2, 1));

        if (module.getCategory() != ModuleCategory.SETTINGS) {
            SwitchCompat enabled = new SwitchCompat(getContext());
            enabled.setChecked(configStore.isEnabled(module));
            enabled.setContentDescription("Prototype state for " + module.getName());
            enabled.setOnCheckedChangeListener((button, checked) -> {
                configStore.setEnabled(module, checked);
                card.setStrokeColor(ColorStateList.valueOf(checked ? accentColor() : Color.rgb(43, 55, 57)));
                if (interactionListener != null) {
                    interactionListener.onModuleToggled(module.getId(), checked);
                }
            });
            heading.addView(enabled);
        }
        body.addView(heading);

        boolean showDescriptions = !"Hide".equals(configStore.getChoice(find("ui-descriptions")));
        if (showDescriptions && module.getCategory() != ModuleCategory.SETTINGS) {
            TextView description = text(module.getDescription(), 11, COLOR_MUTED);
            LayoutParams descriptionParams = new LayoutParams(-1, -2);
            descriptionParams.topMargin = dp(3);
            body.addView(description, descriptionParams);
        }

        LinearLayout settings = new LinearLayout(getContext());
        settings.setOrientation(VERTICAL);
        settings.setVisibility(module.getCategory() == ModuleCategory.SETTINGS || configStore.isExpanded(module)
                ? VISIBLE : GONE);
        LayoutParams settingsParams = new LayoutParams(-1, -2);
        settingsParams.topMargin = dp(9);
        body.addView(settings, settingsParams);
        addSettingControl(settings, module);

        if (module.getCategory() != ModuleCategory.SETTINGS) {
                TextView expand = text(configStore.isExpanded(module) ? "HIDE SETTINGS  -" : "MODULE SETTINGS  +", 10, accentColor());
            expand.setPadding(0, dp(9), 0, 0);
            expand.setOnClickListener(view -> {
                boolean expanded = !configStore.isExpanded(module);
                configStore.setExpanded(module, expanded);
                settings.setVisibility(expanded ? VISIBLE : GONE);
                expand.setText(expanded ? "HIDE SETTINGS  " : "MODULE SETTINGS  ");
            });
            body.addView(expand);
        }
        return card;
    }

    private void addSettingControl(LinearLayout container, ModuleDefinition module) {
        TextView label = text(module.getSettingLabel(), 11, COLOR_MUTED);
        if (module.getSettingType() == ModuleDefinition.SettingType.RANGE) {
            int initialValue = configStore.getRange(module);
            TextView value = text(String.valueOf(initialValue), 11, COLOR_TEXT);
            value.setGravity(Gravity.END);
            LinearLayout row = new LinearLayout(getContext());
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.addView(label, new LayoutParams(0, -2, 1));
            row.addView(value, new LayoutParams(-2, -2));
            container.removeView(label);
            container.addView(row);

            SeekBar seekBar = new SeekBar(getContext());
            seekBar.setMax(module.getMaximum() - module.getMinimum());
            seekBar.setProgress(initialValue - module.getMinimum());
            seekBar.setProgressTintList(ColorStateList.valueOf(accentColor()));
            seekBar.setThumbTintList(ColorStateList.valueOf(accentColor()));
            seekBar.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
                @Override
                public void onProgressChanged(SeekBar bar, int progress, boolean fromUser) {
                    int selected = module.getMinimum() + progress;
                    value.setText(String.valueOf(selected));
                    if (fromUser) {
                        configStore.setRange(module, selected);
                        if (interactionListener != null) {
                            interactionListener.onSettingChanged(module.getId(), module.getSettingLabel(),
                                    String.valueOf(selected));
                        }
                    }
                }

                @Override
                public void onStartTrackingTouch(SeekBar bar) {
                }

                @Override
                public void onStopTrackingTouch(SeekBar bar) {
                }
            });
            container.addView(seekBar, new LayoutParams(-1, dp(34)));
        } else {
            container.addView(label);
            TextView choice = text(configStore.getChoice(module), 12, COLOR_TEXT);
            choice.setGravity(Gravity.CENTER_VERTICAL);
            choice.setPadding(dp(10), 0, dp(10), 0);
            choice.setBackground(background(COLOR_SURFACE_ACTIVE, 6));
            LayoutParams choiceParams = new LayoutParams(-1, dp(38));
            choiceParams.topMargin = dp(6);
            container.addView(choice, choiceParams);
            choice.setOnClickListener(view -> {
                String[] choices = module.getChoices();
                String current = configStore.getChoice(module);
                int nextIndex = 0;
                for (int index = 0; index < choices.length; index++) {
                    if (choices[index].equals(current)) {
                        nextIndex = (index + 1) % choices.length;
                        break;
                    }
                }
                configStore.setChoice(module, choices[nextIndex]);
                choice.setText(choices[nextIndex]);
                if (interactionListener != null) {
                    interactionListener.onSettingChanged(module.getId(), module.getSettingLabel(), choices[nextIndex]);
                }
                if ("ui-accent".equals(module.getId())) {
                    renderCategories();
                    renderModules();
                } else if ("ui-descriptions".equals(module.getId())) {
                    renderModules();
                } else if ("ui-density".equals(module.getId())) {
                    renderModules();
                }
            });
        }
    }

    private void addConfigActions() {
        LinearLayout actions = new LinearLayout(getContext());
        actions.setOrientation(HORIZONTAL);
        actions.addView(configButton("SAVE", this::saveConfig), new LayoutParams(0, dp(40), 1));
        LayoutParams loadParams = new LayoutParams(0, dp(40), 1);
        loadParams.setMargins(dp(6), 0, dp(6), 0);
        actions.addView(configButton("LOAD", this::loadConfig), loadParams);
        actions.addView(configButton("RESET", this::confirmReset), new LayoutParams(0, dp(40), 1));
        LayoutParams actionsParams = new LayoutParams(-1, -2);
        actionsParams.bottomMargin = dp(12);
        moduleList.addView(actions, actionsParams);

        TextView savedState = text(configStore.hasSavedConfig() ? "Saved preset available on this device" : "No saved preset yet", 10, COLOR_MUTED);
        LayoutParams savedParams = new LayoutParams(-1, -2);
        savedParams.bottomMargin = dp(10);
        moduleList.addView(savedState, savedParams);
    }

    private TextView configButton(String label, Runnable action) {
        TextView button = text(label, 10, COLOR_TEXT);
        button.setGravity(Gravity.CENTER);
        button.setTypeface(Typeface.DEFAULT, Typeface.BOLD);
        button.setBackground(background(COLOR_SURFACE_ACTIVE, 7));
        button.setOnClickListener(view -> action.run());
        return button;
    }

    private void saveConfig() {
        configStore.save(ModuleCatalog.all());
        Toast.makeText(getContext(), "Prototype config saved on this device", Toast.LENGTH_SHORT).show();
        renderModules();
    }

    private void loadConfig() {
        if (!configStore.load(ModuleCatalog.all())) {
            Toast.makeText(getContext(), "Save a prototype config first", Toast.LENGTH_SHORT).show();
            return;
        }
        Toast.makeText(getContext(), "Prototype config loaded", Toast.LENGTH_SHORT).show();
        syncPrototypeStateToListener();
        renderCategories();
        renderModules();
    }

    private void confirmReset() {
        new AlertDialog.Builder(getContext())
                .setTitle("Reset prototype state?")
                .setMessage("This resets local switches and settings to their defaults. Minecraft is not changed.")
                .setNegativeButton("Cancel", null)
                .setPositiveButton("Reset", (dialog, which) -> {
                    configStore.reset(ModuleCatalog.all());
                    syncPrototypeStateToListener();
                    renderCategories();
                    renderModules();
                })
                .show();
    }

    private void animateEntry(View view, int index) {
        String motion = configStore.getChoice(find("ui-motion"));
        if ("Reduced".equals(motion)) {
            view.setAlpha(1f);
            view.setTranslationY(0f);
            return;
        }
        long duration = "Soft".equals(motion) ? 210 : 140;
        view.setAlpha(0f);
        view.setTranslationY(dp(7));
        view.animate().alpha(1f).translationY(0f)
                .setStartDelay(Math.min(index * 24L, 120L))
                .setDuration(duration)
                .start();
    }

    private ModuleDefinition find(String id) {
        for (ModuleDefinition module : ModuleCatalog.all()) {
            if (module.getId().equals(id)) {
                return module;
            }
        }
        throw new IllegalArgumentException("Unknown module config: " + id);
    }

    private int accentColor() {
        String choice = configStore == null ? "Mint" : configStore.getChoice(find("ui-accent"));
        if ("Cyan".equals(choice)) {
            return Color.rgb(71, 220, 220);
        }
        if ("Lime".equals(choice)) {
            return Color.rgb(174, 231, 103);
        }
        return Color.rgb(119, 228, 185);
    }

    private boolean isCompactDensity() {
        return "Compact".equals(configStore.getChoice(find("ui-density")));
    }

    private TextView text(String value, int size, int color) {
        TextView view = new TextView(getContext());
        view.setText(value);
        view.setTextSize(size);
        view.setTextColor(color);
        return view;
    }

    private GradientDrawable background(int color, int radius) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(dp(radius));
        return drawable;
    }

    private int dp(int value) {
        return Math.round(value * getResources().getDisplayMetrics().density);
    }
}