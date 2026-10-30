package com.microsoft.xbox.idp.compat;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

/* JADX INFO: loaded from: classes4.dex */
public abstract class BaseActivity extends AppCompatActivity {
    public boolean hasFragment(int i) {
        return getFragmentManager().findFragmentById(i) != null;
    }

    public void addFragment(int i, BaseFragment baseFragment) {
        getFragmentManager().beginTransaction().add(i, baseFragment).commit();
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setOrientation();
    }

    public void setOrientation() {
        if ((getApplicationContext().getResources().getConfiguration().screenLayout & 15) < 3) {
            setRequestedOrientation(1);
        }
    }
}
