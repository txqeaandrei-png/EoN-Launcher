package dev.blaze.launcher.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import dev.blaze.launcher.R;

/* JADX INFO: loaded from: classes4.dex */
public final class FragmentProfileBinding implements ViewBinding {
    public final Button ExitLogin;
    public final ConstraintLayout Login;
    public final ConstraintLayout Profile;
    public final ConstraintLayout Register;
    public final Button Settings;
    public final TextView emailDisplay;
    public final ImageView imageView;
    public final Button login;
    public final EditText password;
    public final EditText passwordr;
    public final Button register;
    public final TextView registerText;
    private final CoordinatorLayout rootView;
    public final TextView textView2;
    public final Button toLogin;
    public final Button toRegister;
    public final TextView userNameDisplay;
    public final EditText username;
    public final EditText usernamer;

    private FragmentProfileBinding(CoordinatorLayout coordinatorLayout, Button button, ConstraintLayout constraintLayout, ConstraintLayout constraintLayout2, ConstraintLayout constraintLayout3, Button button2, TextView textView, ImageView imageView, Button button3, EditText editText, EditText editText2, Button button4, TextView textView2, TextView textView3, Button button5, Button button6, TextView textView4, EditText editText3, EditText editText4) {
        this.rootView = coordinatorLayout;
        this.ExitLogin = button;
        this.Login = constraintLayout;
        this.Profile = constraintLayout2;
        this.Register = constraintLayout3;
        this.Settings = button2;
        this.emailDisplay = textView;
        this.imageView = imageView;
        this.login = button3;
        this.password = editText;
        this.passwordr = editText2;
        this.register = button4;
        this.registerText = textView2;
        this.textView2 = textView3;
        this.toLogin = button5;
        this.toRegister = button6;
        this.userNameDisplay = textView4;
        this.username = editText3;
        this.usernamer = editText4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public CoordinatorLayout getRoot() {
        return this.rootView;
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentProfileBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_profile, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentProfileBinding bind(View view) {
        int i = R.id.ExitLogin;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.Login;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
            if (constraintLayout != null) {
                i = R.id.Profile;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                if (constraintLayout2 != null) {
                    i = R.id.Register;
                    ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                    if (constraintLayout3 != null) {
                        i = R.id.Settings;
                        Button button2 = (Button) ViewBindings.findChildViewById(view, i);
                        if (button2 != null) {
                            i = R.id.emailDisplay;
                            TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView != null) {
                                i = R.id.imageView;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView != null) {
                                    i = R.id.login;
                                    Button button3 = (Button) ViewBindings.findChildViewById(view, i);
                                    if (button3 != null) {
                                        i = R.id.password;
                                        EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                                        if (editText != null) {
                                            i = R.id.passwordr;
                                            EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
                                            if (editText2 != null) {
                                                i = R.id.register;
                                                Button button4 = (Button) ViewBindings.findChildViewById(view, i);
                                                if (button4 != null) {
                                                    i = R.id.registerText;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView2 != null) {
                                                        i = R.id.textView2;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView3 != null) {
                                                            i = R.id.toLogin;
                                                            Button button5 = (Button) ViewBindings.findChildViewById(view, i);
                                                            if (button5 != null) {
                                                                i = R.id.toRegister;
                                                                Button button6 = (Button) ViewBindings.findChildViewById(view, i);
                                                                if (button6 != null) {
                                                                    i = R.id.userNameDisplay;
                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                    if (textView4 != null) {
                                                                        i = R.id.username;
                                                                        EditText editText3 = (EditText) ViewBindings.findChildViewById(view, i);
                                                                        if (editText3 != null) {
                                                                            i = R.id.usernamer;
                                                                            EditText editText4 = (EditText) ViewBindings.findChildViewById(view, i);
                                                                            if (editText4 != null) {
                                                                                return new FragmentProfileBinding((CoordinatorLayout) view, button, constraintLayout, constraintLayout2, constraintLayout3, button2, textView, imageView, button3, editText, editText2, button4, textView2, textView3, button5, button6, textView4, editText3, editText4);
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
