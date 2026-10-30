package com.microsoft.xbox.idp.toolkit;

import java.io.InputStream;
import java.util.Scanner;

/* JADX INFO: loaded from: classes3.dex */
public class HttpError {
    private static final String INPUT_START_TOKEN = "\\A";
    private final int errorCode;
    private final String errorMessage;
    private final int httpStatus;

    public HttpError(int i, int i2, String str) {
        this.errorCode = i;
        this.httpStatus = i2;
        this.errorMessage = str;
    }

    public HttpError(int i, int i2, InputStream inputStream) {
        this.errorCode = i;
        this.httpStatus = i2;
        Scanner scannerUseDelimiter = new Scanner(inputStream).useDelimiter(INPUT_START_TOKEN);
        this.errorMessage = scannerUseDelimiter.hasNext() ? scannerUseDelimiter.next() : "";
    }

    public int getErrorCode() {
        return this.errorCode;
    }

    public int getHttpStatus() {
        return this.httpStatus;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public String toString() {
        return "errorCode: " + this.errorCode + ", httpStatus: " + this.httpStatus + ", errorMessage: " + this.errorMessage;
    }
}
