package dev.blaze.launcher;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.navigation.fragment.NavHostFragment;
import dev.blaze.launcher.databinding.FragmentSecondBinding;

/* JADX INFO: loaded from: classes4.dex */
public class SecondFragment extends Fragment {
    private FragmentSecondBinding binding;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FragmentSecondBinding fragmentSecondBindingInflate = FragmentSecondBinding.inflate(layoutInflater, viewGroup, false);
        this.binding = fragmentSecondBindingInflate;
        return fragmentSecondBindingInflate.getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.binding.buttonSecond.setOnClickListener(new View.OnClickListener() { // from class: dev.blaze.launcher.SecondFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                this.f$0.lambda$onViewCreated$0(view2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view) {
        NavHostFragment.findNavController(this).navigate(R.id.action_SecondFragment_to_FirstFragment);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.binding = null;
    }
}
