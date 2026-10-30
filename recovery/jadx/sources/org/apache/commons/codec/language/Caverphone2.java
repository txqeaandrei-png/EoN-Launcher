package org.apache.commons.codec.language;

import com.braze.Constants;
import com.microsoft.xbox.toolkit.network.XboxLiveEnvironment;
import java.util.Locale;

/* JADX INFO: loaded from: classes4.dex */
public class Caverphone2 extends AbstractCaverphone {
    private static final String TEN_1 = "1111111111";

    @Override // org.apache.commons.codec.StringEncoder
    public String encode(String str) {
        if (str == null || str.length() == 0) {
            return TEN_1;
        }
        return (str.toLowerCase(Locale.ENGLISH).replaceAll("[^a-z]", "").replaceAll("e$", "").replaceAll("^cough", "cou2f").replaceAll("^rough", "rou2f").replaceAll("^tough", "tou2f").replaceAll("^enough", "enou2f").replaceAll("^trough", "trou2f").replaceAll("^gn", "2n").replaceAll("mb$", "m2").replaceAll("cq", "2q").replaceAll("ci", "si").replaceAll("ce", "se").replaceAll("cy", "sy").replaceAll("tch", "2ch").replaceAll("c", "k").replaceAll("q", "k").replaceAll("x", "k").replaceAll("v", "f").replaceAll("dg", "2g").replaceAll("tio", "sio").replaceAll("tia", "sia").replaceAll(Constants.BRAZE_PUSH_NOTIFICATION_SOUND_DEFAULT_VALUE, Constants.BRAZE_PUSH_TITLE_KEY).replaceAll("ph", "fh").replaceAll("b", Constants.BRAZE_PUSH_PRIORITY_KEY).replaceAll("sh", "s2").replaceAll("z", Constants.BRAZE_PUSH_SUMMARY_TEXT_KEY).replaceAll("^[aeiou]", "A").replaceAll("[aeiou]", XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION).replaceAll("j", "y").replaceAll("^y3", "Y3").replaceAll("^y", "A").replaceAll("y", XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION).replaceAll("3gh3", "3kh3").replaceAll("gh", "22").replaceAll("g", "k").replaceAll("s+", "S").replaceAll("t+", "T").replaceAll("p+", "P").replaceAll("k+", "K").replaceAll("f+", "F").replaceAll("m+", "M").replaceAll("n+", "N").replaceAll("w3", "W3").replaceAll("wh3", "Wh3").replaceAll("w$", XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION).replaceAll("w", "2").replaceAll("^h", "A").replaceAll("h", "2").replaceAll("r3", "R3").replaceAll("r$", XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION).replaceAll("r", "2").replaceAll("l3", "L3").replaceAll("l$", XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION).replaceAll("l", "2").replaceAll("2", "").replaceAll("3$", "A").replaceAll(XboxLiveEnvironment.USER_PROFILE_CONTRACT_VERSION, "") + TEN_1).substring(0, 10);
    }
}
