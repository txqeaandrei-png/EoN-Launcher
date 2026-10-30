package dev.blaze.launcher;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import dev.blaze.launcher.databinding.FragmentFirstBinding;

/* JADX INFO: loaded from: classes4.dex */
public class FirstFragment extends Fragment {
    private FragmentFirstBinding binding;

    static /* synthetic */ void lambda$onViewCreated$0(View view) {
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentFirstBinding fragmentFirstBindingInflate = FragmentFirstBinding.inflate(layoutInflater, viewGroup, false);
        this.binding = fragmentFirstBindingInflate;
        return fragmentFirstBindingInflate.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.binding.start.setOnClickListener(new View.OnClickListener() { // from class: dev.blaze.launcher.FirstFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                FirstFragment.lambda$onViewCreated$0(view2);
            }
        });
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }
}
