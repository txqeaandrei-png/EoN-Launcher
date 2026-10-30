package com.google.androidgamesdk.gametextinput;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.CompletionInfo;
import android.view.inputmethod.CorrectionInfo;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.ExtractedTextRequest;
import android.view.inputmethod.InputMethodManager;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;

/* JADX INFO: loaded from: classes3.dex */
public class InputConnection extends BaseInputConnection implements View.OnKeyListener {
    private static final int MAX_LENGTH_FOR_SINGLE_LINE_EDIT_TEXT = 5000;
    private static final String TAG = "gti.InputConnection";
    private final InputMethodManager imm;
    private Listener listener;
    private final Editable mEditable;
    private boolean mSoftKeyboardActive;
    private final Settings settings;
    private final View targetView;

    private class SingeLineFilter implements InputFilter {
        private SingeLineFilter() {
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
            StringBuilder sb = new StringBuilder(i2 - i);
            boolean z = true;
            for (int i5 = i; i5 < i2; i5++) {
                char cCharAt = charSequence.charAt(i5);
                if (cCharAt == '\n') {
                    z = false;
                } else {
                    sb.append(cCharAt);
                }
            }
            if (z) {
                return null;
            }
            if (!(charSequence instanceof Spanned)) {
                return sb;
            }
            SpannableString spannableString = new SpannableString(sb);
            TextUtils.copySpansFrom((Spanned) charSequence, i, sb.length(), null, spannableString, 0);
            return spannableString;
        }
    }

    public InputConnection(Context context, View view, Settings settings) {
        super(view, settings.mEditorInfo.inputType != 0);
        Log.d(TAG, "InputConnection created");
        this.targetView = view;
        this.settings = settings;
        Object systemService = context.getSystemService("input_method");
        if (systemService == null) {
            throw new RuntimeException("Can't get IMM");
        }
        this.imm = (InputMethodManager) systemService;
        this.mEditable = new SpannableStringBuilder();
        WindowCompat.setDecorFitsSystemWindows(((Activity) view.getContext()).getWindow(), false);
        view.setOnKeyListener(this);
        setEditorInfo(settings.mEditorInfo);
        ViewCompat.setOnApplyWindowInsetsListener(view, new OnApplyWindowInsetsListener() { // from class: com.google.androidgamesdk.gametextinput.InputConnection$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view2, WindowInsetsCompat windowInsetsCompat) {
                return this.f$0.m2452x126cfc85(view2, windowInsetsCompat);
            }
        });
    }

    public void restartInput() {
        this.imm.restartInput(this.targetView);
    }

    public final boolean getSoftKeyboardActive() {
        return this.mSoftKeyboardActive;
    }

    public final void setSoftKeyboardActive(boolean z, int i) {
        Log.d(TAG, "setSoftKeyboardActive, active: " + z);
        this.mSoftKeyboardActive = z;
        if (z) {
            this.targetView.setFocusableInTouchMode(true);
            this.targetView.requestFocus();
            this.imm.showSoftInput(this.targetView, i);
        } else {
            this.imm.hideSoftInputFromWindow(this.targetView.getWindowToken(), i);
            this.imm.restartInput(this.targetView);
        }
    }

    public final EditorInfo getEditorInfo() {
        return this.settings.mEditorInfo;
    }

    public final void setEditorInfo(EditorInfo editorInfo) {
        Log.d(TAG, "setEditorInfo");
        this.settings.mEditorInfo = editorInfo;
        if ((this.settings.mEditorInfo.inputType & 131072) == 0) {
            this.mEditable.setFilters(new InputFilter[]{new InputFilter.LengthFilter(5000), new SingeLineFilter()});
        } else {
            this.mEditable.setFilters(new InputFilter[0]);
        }
    }

    public final void setState(State state) {
        if (state == null) {
            return;
        }
        Log.d(TAG, "setState: '" + state.text + "', selection=(" + state.selectionStart + "," + state.selectionEnd + "), composing region=(" + state.composingRegionStart + "," + state.composingRegionEnd + ")");
        this.mEditable.clear();
        this.mEditable.insert(0, state.text);
        setSelection(state.selectionStart, state.selectionEnd);
        setComposingRegion(state.composingRegionStart, state.composingRegionEnd);
        informIMM();
    }

    public final Listener getListener() {
        return this.listener;
    }

    public final InputConnection setListener(Listener listener) {
        this.listener = listener;
        return this;
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        Log.d(TAG, "onKey: " + keyEvent);
        if (getSoftKeyboardActive()) {
            return processKeyEvent(keyEvent);
        }
        return false;
    }

    @Override // android.view.inputmethod.BaseInputConnection
    public Editable getEditable() {
        Log.d(TAG, "getEditable");
        return this.mEditable;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setSelection(int i, int i2) {
        Log.d(TAG, "setSelection: " + i + ":" + i2);
        return super.setSelection(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingText(CharSequence charSequence, int i) {
        Log.d(TAG, String.format("setComposingText='%s' newCursorPosition=%d", charSequence, Integer.valueOf(i)));
        if (charSequence == null) {
            return false;
        }
        return super.setComposingText(charSequence, i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean setComposingRegion(int i, int i2) {
        Log.d(TAG, "setComposingRegion: " + i + ":" + i2);
        return super.setComposingRegion(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean finishComposingText() {
        Log.d(TAG, "finishComposingText");
        return super.finishComposingText();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean endBatchEdit() {
        Log.d(TAG, "endBatchEdit");
        stateUpdated();
        return super.endBatchEdit();
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitCompletion(CompletionInfo completionInfo) {
        Log.d(TAG, "commitCompletion");
        return super.commitCompletion(completionInfo);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitCorrection(CorrectionInfo correctionInfo) {
        Log.d(TAG, "commitCompletion");
        return super.commitCorrection(correctionInfo);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean commitText(CharSequence charSequence, int i) {
        Log.d(TAG, "commitText: " + charSequence + ", new pos = " + i);
        return super.commitText(charSequence, i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i, int i2) {
        Log.d(TAG, "deleteSurroundingText: " + i + ":" + i2);
        return super.deleteSurroundingText(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        Log.d(TAG, "deleteSurroundingTextInCodePoints: " + i + ":" + i2);
        return super.deleteSurroundingTextInCodePoints(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean sendKeyEvent(KeyEvent keyEvent) {
        Log.d(TAG, "sendKeyEvent: " + keyEvent);
        return super.sendKeyEvent(keyEvent);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public CharSequence getSelectedText(int i) {
        CharSequence selectedText = super.getSelectedText(i);
        if (selectedText == null) {
            selectedText = "";
        }
        Log.d(TAG, "getSelectedText: " + i + ", result: " + ((Object) selectedText));
        return selectedText;
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public CharSequence getTextAfterCursor(int i, int i2) {
        Log.d(TAG, "getTextAfterCursor: " + i + ":" + i2);
        if (i < 0) {
            Log.i(TAG, "getTextAfterCursor: returning null to due to an invalid length=" + i);
            return null;
        }
        return super.getTextAfterCursor(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public CharSequence getTextBeforeCursor(int i, int i2) {
        Log.d(TAG, "getTextBeforeCursor: " + i + ", flags=" + i2);
        if (i < 0) {
            Log.i(TAG, "getTextBeforeCursor: returning null to due to an invalid length=" + i);
            return null;
        }
        return super.getTextBeforeCursor(i, i2);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean requestCursorUpdates(int i) {
        Log.d(TAG, "Request cursor updates: " + i);
        return super.requestCursorUpdates(i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public void closeConnection() {
        Log.d(TAG, "closeConnection");
        super.closeConnection();
    }

    @Override // android.view.inputmethod.InputConnection
    public boolean setImeConsumesInput(boolean z) {
        Log.d(TAG, "setImeConsumesInput: " + z);
        return super.setImeConsumesInput(z);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public ExtractedText getExtractedText(ExtractedTextRequest extractedTextRequest, int i) {
        Log.d(TAG, "getExtractedText");
        return super.getExtractedText(extractedTextRequest, i);
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performPrivateCommand(String str, Bundle bundle) {
        Log.d(TAG, "performPrivateCommand");
        return super.performPrivateCommand(str, bundle);
    }

    private void informIMM() {
        GameTextInput.Pair selection = getSelection();
        GameTextInput.Pair composingRegion = getComposingRegion();
        Log.d(TAG, "informIMM: " + selection.first + "," + selection.second + ". " + composingRegion.first + "," + composingRegion.second);
        this.imm.updateSelection(this.targetView, selection.first, selection.second, composingRegion.first, composingRegion.second);
    }

    private GameTextInput.Pair getSelection() {
        return new GameTextInput.Pair(Selection.getSelectionStart(this.mEditable), Selection.getSelectionEnd(this.mEditable));
    }

    private GameTextInput.Pair getComposingRegion() {
        return new GameTextInput.Pair(getComposingSpanStart(this.mEditable), getComposingSpanEnd(this.mEditable));
    }

    private boolean processKeyEvent(KeyEvent keyEvent) {
        boolean z;
        if (keyEvent == null) {
            return false;
        }
        Log.d(TAG, String.format("processKeyEvent(key=%d) text=%s", Integer.valueOf(keyEvent.getKeyCode()), this.mEditable.toString()));
        boolean z2 = true;
        if ((this.settings.mEditorInfo.inputType & 131072) == 0 && ((keyEvent.getKeyCode() == 66 || keyEvent.getKeyCode() == 160) && keyEvent.hasNoModifiers())) {
            sendEditorAction(this.settings.mEditorInfo.actionId);
            return true;
        }
        if (keyEvent.getAction() != 0) {
            return true;
        }
        GameTextInput.Pair selection = getSelection();
        if (selection.first == -1) {
            selection.first = this.mEditable.length();
            selection.second = this.mEditable.length();
        }
        if (keyEvent.getKeyCode() == 21) {
            if (selection.first == selection.second) {
                setSelection(selection.first - 1, selection.second - 1);
            } else {
                setSelection(selection.first, selection.first);
            }
            return true;
        }
        if (keyEvent.getKeyCode() == 22) {
            if (selection.first == selection.second) {
                setSelection(selection.first + 1, selection.second + 1);
            } else {
                setSelection(selection.second, selection.second);
            }
            return true;
        }
        if (selection.first != selection.second) {
            Log.d(TAG, String.format("processKeyEvent: deleting selection", new Object[0]));
            this.mEditable.delete(selection.first, selection.second);
            z = true;
        } else {
            if (keyEvent.getKeyCode() == 67 && selection.first > 0) {
                this.mEditable.delete(selection.first - 1, selection.first);
                stateUpdated();
                Log.d(TAG, String.format("processKeyEvent: exit after DEL, text=%s", this.mEditable.toString()));
                return true;
            }
            if (keyEvent.getKeyCode() == 112 && selection.first < this.mEditable.length()) {
                this.mEditable.delete(selection.first, selection.first + 1);
                stateUpdated();
                Log.d(TAG, String.format("processKeyEvent: exit after FORWARD_DEL, text=%s", this.mEditable.toString()));
                return true;
            }
            z = false;
        }
        keyEvent.getKeyCode();
        if (keyEvent.getUnicodeChar() != 0) {
            String string = Character.toString((char) keyEvent.getUnicodeChar());
            this.mEditable.insert(selection.first, string);
            int length = this.mEditable.length();
            GameTextInput.Pair composingRegion = getComposingRegion();
            if (composingRegion.first == -1) {
                composingRegion = getSelection();
                if (composingRegion.first == -1) {
                    composingRegion = new GameTextInput.Pair(0, 0);
                }
            }
            composingRegion.second = composingRegion.first + length;
            setComposingRegion(composingRegion.first, composingRegion.second);
            int length2 = selection.first + string.length();
            setSelection(length2, length2);
            informIMM();
            restartInput();
        } else {
            z2 = z;
        }
        if (z2) {
            Log.d(TAG, String.format("processKeyEvent: exit, text=%s", this.mEditable.toString()));
            stateUpdated();
        }
        return z2;
    }

    private final void stateUpdated() {
        GameTextInput.Pair selection = getSelection();
        GameTextInput.Pair composingRegion = getComposingRegion();
        State state = new State(this.mEditable.toString(), selection.first, selection.second, composingRegion.first, composingRegion.second);
        Listener listener = this.listener;
        if (listener != null) {
            listener.stateChanged(state, false);
        }
    }

    /* JADX INFO: renamed from: onApplyWindowInsets, reason: merged with bridge method [inline-methods] */
    public WindowInsetsCompat m2452x126cfc85(View view, WindowInsetsCompat windowInsetsCompat) {
        Log.d(TAG, "onApplyWindowInsets: " + isSoftwareKeyboardVisible());
        Listener listener = this.listener;
        if (listener != null) {
            listener.onImeInsetsChanged(windowInsetsCompat.getInsets(WindowInsetsCompat.Type.ime()));
        }
        boolean zIsSoftwareKeyboardVisible = isSoftwareKeyboardVisible();
        if (zIsSoftwareKeyboardVisible == this.mSoftKeyboardActive) {
            return windowInsetsCompat;
        }
        this.mSoftKeyboardActive = zIsSoftwareKeyboardVisible;
        this.imm.restartInput(this.targetView);
        if (listener != null) {
            listener.onSoftwareKeyboardVisibilityChanged(zIsSoftwareKeyboardVisible);
        }
        return windowInsetsCompat;
    }

    public Insets getImeInsets() {
        View view = this.targetView;
        if (view == null) {
            return Insets.NONE;
        }
        WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
        if (rootWindowInsets == null) {
            return Insets.NONE;
        }
        return rootWindowInsets.getInsets(WindowInsetsCompat.Type.ime());
    }

    public boolean isSoftwareKeyboardVisible() {
        WindowInsetsCompat rootWindowInsets;
        View view = this.targetView;
        if (view == null || (rootWindowInsets = ViewCompat.getRootWindowInsets(view)) == null) {
            return false;
        }
        return rootWindowInsets.isVisible(WindowInsetsCompat.Type.ime());
    }

    @Override // android.view.inputmethod.BaseInputConnection, android.view.inputmethod.InputConnection
    public boolean performEditorAction(int i) {
        Log.d(TAG, "performEditorAction, action=" + i);
        if (i == 0) {
            return super.performEditorAction(i);
        }
        return sendEditorAction(i);
    }

    private boolean sendEditorAction(int i) {
        Listener listener = this.listener;
        if (listener == null) {
            return false;
        }
        listener.onEditorAction(i);
        return true;
    }
}
