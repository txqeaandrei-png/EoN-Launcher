package dev.blaze.launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import dev.blaze.launcher.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ConfigModuleBinding implements ViewBinding {
    public final TextView configName;
    public final ImageButton imageButton;
    private final MaterialCardView rootView;

    private ConfigModuleBinding(MaterialCardView materialCardView, TextView textView, ImageButton imageButton) {
        this.rootView = materialCardView;
        this.configName = textView;
        this.imageButton = imageButton;
    }

    @Override // androidx.viewbinding.ViewBinding
    public MaterialCardView getRoot() {
        return this.rootView;
    }

    public static ConfigModuleBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ConfigModuleBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.config_module, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ConfigModuleBinding bind(View view) {
        int i = R.id.configName;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.imageButton;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, i);
            if (imageButton != null) {
                return new ConfigModuleBinding((MaterialCardView) view, textView, imageButton);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
