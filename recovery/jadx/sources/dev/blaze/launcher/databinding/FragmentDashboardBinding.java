package dev.blaze.launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import dev.blaze.launcher.R;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentDashboardBinding implements ViewBinding {
    public final FloatingActionButton floatingActionButton;
    public final ImageView imageView3;
    public final TextView packageName;
    public final TextView packageVersion;
    private final ConstraintLayout rootView;

    private FragmentDashboardBinding(ConstraintLayout constraintLayout, FloatingActionButton floatingActionButton, ImageView imageView, TextView textView, TextView textView2) {
        this.rootView = constraintLayout;
        this.floatingActionButton = floatingActionButton;
        this.imageView3 = imageView;
        this.packageName = textView;
        this.packageVersion = textView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDashboardBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDashboardBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_dashboard, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentDashboardBinding bind(View view) {
        int i = R.id.floatingActionButton;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i);
        if (floatingActionButton != null) {
            i = R.id.imageView3;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = R.id.packageName;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView != null) {
                    i = R.id.packageVersion;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView2 != null) {
                        return new FragmentDashboardBinding((ConstraintLayout) view, floatingActionButton, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
