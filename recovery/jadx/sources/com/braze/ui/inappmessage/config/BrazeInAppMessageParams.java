package com.braze.ui.inappmessage.config;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R$\u0010\b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\t\u0010\u0003\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u000e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u000f\u0010\u0003\u001a\u0004\b\u0010\u0010\u000b\"\u0004\b\u0011\u0010\rR$\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0014\n\u0000\u0012\u0004\b\u0013\u0010\u0003\u001a\u0004\b\u0014\u0010\u000b\"\u0004\b\u0015\u0010\r¨\u0006\u0016"}, d2 = {"Lcom/braze/ui/inappmessage/config/BrazeInAppMessageParams;", "", "<init>", "()V", "MODALIZED_IMAGE_RADIUS_DP", "", "GRAPHIC_MODAL_MAX_WIDTH_DP", "GRAPHIC_MODAL_MAX_HEIGHT_DP", "modalizedImageRadiusDp", "getModalizedImageRadiusDp$annotations", "getModalizedImageRadiusDp", "()D", "setModalizedImageRadiusDp", "(D)V", "graphicModalMaxWidthDp", "getGraphicModalMaxWidthDp$annotations", "getGraphicModalMaxWidthDp", "setGraphicModalMaxWidthDp", "graphicModalMaxHeightDp", "getGraphicModalMaxHeightDp$annotations", "getGraphicModalMaxHeightDp", "setGraphicModalMaxHeightDp", "android-sdk-ui_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class BrazeInAppMessageParams {
    public static final double GRAPHIC_MODAL_MAX_HEIGHT_DP = 290.0d;
    public static final double GRAPHIC_MODAL_MAX_WIDTH_DP = 290.0d;
    public static final double MODALIZED_IMAGE_RADIUS_DP = 9.0d;
    public static final BrazeInAppMessageParams INSTANCE = new BrazeInAppMessageParams();
    private static double modalizedImageRadiusDp = 9.0d;
    private static double graphicModalMaxWidthDp = 290.0d;
    private static double graphicModalMaxHeightDp = 290.0d;

    @JvmStatic
    public static /* synthetic */ void getGraphicModalMaxHeightDp$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void getGraphicModalMaxWidthDp$annotations() {
    }

    @JvmStatic
    public static /* synthetic */ void getModalizedImageRadiusDp$annotations() {
    }

    private BrazeInAppMessageParams() {
    }

    public static final double getModalizedImageRadiusDp() {
        return modalizedImageRadiusDp;
    }

    public static final void setModalizedImageRadiusDp(double d) {
        modalizedImageRadiusDp = d;
    }

    public static final double getGraphicModalMaxWidthDp() {
        return graphicModalMaxWidthDp;
    }

    public static final void setGraphicModalMaxWidthDp(double d) {
        graphicModalMaxWidthDp = d;
    }

    public static final double getGraphicModalMaxHeightDp() {
        return graphicModalMaxHeightDp;
    }

    public static final void setGraphicModalMaxHeightDp(double d) {
        graphicModalMaxHeightDp = d;
    }
}
