package mainz;

import go.Seq;

/* JADX INFO: loaded from: classes3.dex */
public abstract class Mainz {
    private static native void _init();

    public static native String attackEntity(double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, String str);

    public static native String buildTotal(double d);

    public static native String chestStealer(String str, double d, String str2);

    public static native String destroyBlock(double d, double d2, double d3, double d4);

    public static native String disablerCube(String str);

    public static native String disablerHive(String str, double d);

    public static native String disablerLifeBoat(String str);

    public static native String dropSlots(double d, double d2, double d3, String str);

    public static native String eatSomething(double d, double d2, double d3, double d4, String str);

    public static native String equipSlots(double d, double d2, double d3, double d4, String str, String str2);

    public static native String getADiamond(double d);

    public static native String getPlayerSkinImage(String str);

    public static native String getXUID();

    public static native String isBot(double d);

    public static native String logPacket(String str);

    public static native String outOffhand(double d, double d2, double d3, double d4, double d5, String str, String str2, double d6);

    public static native String saySomething(String str);

    public static native String sendSlot(double d, double d2, String str);

    public static native String setAngle(double d, double d2);

    public static native String setInventoryMethod(String str);

    public static native String setOffhand(double d, double d2, double d3, double d4, double d5, String str, String str2, double d6);

    public static native void setXUID(String str);

    public static native String slientTeleport(double d, double d2, double d3, double d4);

    public static native void startConnection();

    public static native String swapSlots(double d, double d2, double d3, double d4, double d5, String str, String str2);

    public static void touch() {
    }

    public static native String uploadItems(String str);

    static {
        Seq.touch();
        _init();
    }

    private Mainz() {
    }
}
