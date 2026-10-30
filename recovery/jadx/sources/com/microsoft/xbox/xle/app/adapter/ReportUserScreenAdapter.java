package com.microsoft.xbox.xle.app.adapter;

import android.graphics.drawable.ColorDrawable;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.microsoft.xbox.telemetry.helpers.UTCReportUser;
import com.microsoft.xbox.telemetry.helpers.UTCTelemetry;
import com.microsoft.xbox.toolkit.XLEAssert;
import com.microsoft.xbox.toolkit.ui.CustomTypefaceTextView;
import com.microsoft.xbox.toolkit.ui.XLEButton;
import com.microsoft.xbox.xle.viewmodel.AdapterBase;
import com.microsoft.xbox.xle.viewmodel.ReportUserScreenViewModel;
import com.microsoft.xboxtcui.R;
import com.microsoft.xboxtcui.XboxTcuiSdk;

/* JADX INFO: loaded from: classes4.dex */
public class ReportUserScreenAdapter extends AdapterBase {
    private final XLEButton cancelButton;
    public EditText optionalText;
    private final Spinner reasonSpinner;
    private ArrayAdapter<String> reasonSpinnerAdapter;
    private final XLEButton submitButton;
    private final CustomTypefaceTextView titleTextView;
    public ReportUserScreenViewModel viewModel;

    public ReportUserScreenAdapter(ReportUserScreenViewModel reportUserScreenViewModel) {
        super(reportUserScreenViewModel);
        XLEButton xLEButton = (XLEButton) findViewById(R.id.report_user_cancel);
        this.cancelButton = xLEButton;
        Spinner spinner = (Spinner) findViewById(R.id.report_user_reason);
        this.reasonSpinner = spinner;
        XLEButton xLEButton2 = (XLEButton) findViewById(R.id.report_user_submit);
        this.submitButton = xLEButton2;
        CustomTypefaceTextView customTypefaceTextView = (CustomTypefaceTextView) findViewById(R.id.report_user_title);
        this.titleTextView = customTypefaceTextView;
        this.optionalText = (EditText) findViewById(R.id.report_user_text);
        this.viewModel = reportUserScreenViewModel;
        XLEAssert.assertNotNull(customTypefaceTextView);
        XLEAssert.assertNotNull(spinner);
        XLEAssert.assertNotNull(this.optionalText);
        XLEAssert.assertNotNull(xLEButton);
        XLEAssert.assertNotNull(xLEButton2);
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    public void onStart() {
        super.onStart();
        ArrayAdapter<String> arrayAdapter = new ArrayAdapter<>(XboxTcuiSdk.getActivity(), R.layout.report_spinner_item, this.viewModel.getReasonTitles());
        this.reasonSpinnerAdapter = arrayAdapter;
        arrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
        this.reasonSpinner.setAdapter((SpinnerAdapter) this.reasonSpinnerAdapter);
        this.reasonSpinner.setPopupBackgroundDrawable(new ColorDrawable(this.viewModel.getPreferredColor()));
        this.reasonSpinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.microsoft.xbox.xle.app.adapter.ReportUserScreenAdapter.1
            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                ReportUserScreenAdapter.this.viewModel.setReason(i);
            }
        });
        this.cancelButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.ReportUserScreenAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onStart$0(view);
            }
        });
        this.submitButton.setOnClickListener(new View.OnClickListener() { // from class: com.microsoft.xbox.xle.app.adapter.ReportUserScreenAdapter$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.lambda$onStart$1(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStart$0(View view) {
        this.viewModel.onBackButtonPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStart$1(View view) {
        UTCReportUser.trackReportDialogOK(this.viewModel.getReason() == null ? UTCTelemetry.UNKNOWNPAGE : this.viewModel.getReason().toString());
        this.viewModel.submitReport(this.optionalText.getText().toString());
    }

    @Override // com.microsoft.xbox.xle.viewmodel.AdapterBase
    public void updateViewOverride() {
        CustomTypefaceTextView customTypefaceTextView = this.titleTextView;
        if (customTypefaceTextView != null) {
            customTypefaceTextView.setText(this.viewModel.getTitle());
        }
        XLEButton xLEButton = this.submitButton;
        if (xLEButton != null) {
            xLEButton.setEnabled(this.viewModel.validReasonSelected());
        }
    }
}
