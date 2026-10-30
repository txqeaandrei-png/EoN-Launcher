package dev.blaze.launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import dev.blaze.launcher.R;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentFirstBinding implements ViewBinding {
    private final NestedScrollView rootView;
    public final NestedScrollView start;

    private FragmentFirstBinding(NestedScrollView nestedScrollView, NestedScrollView nestedScrollView2) {
        this.rootView = nestedScrollView;
        this.start = nestedScrollView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public NestedScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentFirstBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentFirstBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_first, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentFirstBinding bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        NestedScrollView nestedScrollView = (NestedScrollView) view;
        return new FragmentFirstBinding(nestedScrollView, nestedScrollView);
    }
}
