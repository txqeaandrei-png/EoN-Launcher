package com.microsoft.xbox.service.model;

import com.microsoft.xbox.toolkit.JavaUtil;

/* JADX INFO: loaded from: classes3.dex */
public enum UserStatus {
    Offline,
    Online;

    public static UserStatus getStatusFromString(String str) {
        UserStatus userStatus = Online;
        return JavaUtil.stringsEqualCaseInsensitive(str, userStatus.toString()) ? userStatus : Offline;
    }
}
