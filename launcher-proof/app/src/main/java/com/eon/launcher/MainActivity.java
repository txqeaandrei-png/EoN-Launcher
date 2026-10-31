package com.eon.launcher;

import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    private static final String TAG = "EonRuntimeProof";

    static {
        System.loadLibrary("proofnative");
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        TextView textView = new TextView(this);
        textView.setTextSize(18f);
        textView.setPadding(32, 32, 32, 32);

        String status = nativeGetStatus();
        textView.setText("Runtime proof initialized\n\n" + status);
        setContentView(textView);

        Log.i(TAG, "MainActivity created. Native status: " + status);
    }

    public native String nativeGetStatus();
}
