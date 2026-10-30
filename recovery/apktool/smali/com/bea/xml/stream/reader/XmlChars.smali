.class public Lcom/bea/xml/stream/reader/XmlChars;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isChar(I)Z
    .locals 1

    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const v0, 0xd7ff

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0xa

    if-eq p0, v0, :cond_3

    const/16 v0, 0x9

    if-eq p0, v0, :cond_3

    const/16 v0, 0xd

    if-eq p0, v0, :cond_3

    const v0, 0xe000

    if-lt p0, v0, :cond_1

    const v0, 0xfffd

    if-le p0, v0, :cond_3

    :cond_1
    const/high16 v0, 0x10000

    if-lt p0, v0, :cond_2

    const v0, 0x10ffff

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static isCompatibilityChar(C)Z
    .locals 4

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2d

    if-eq v0, v2, :cond_27

    const/4 v3, 0x2

    if-eq v0, v3, :cond_23

    const/4 v3, 0x3

    if-eq v0, v3, :cond_21

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1f

    const/16 v3, 0xe

    if-eq v0, v3, :cond_1d

    const/16 v3, 0x11

    if-eq v0, v3, :cond_d

    const/16 v3, 0x20

    if-eq v0, v3, :cond_b

    const/16 v3, 0x21

    if-eq v0, v3, :cond_4

    const/16 v3, 0x30

    if-eq v0, v3, :cond_2

    const/16 v3, 0x31

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    :cond_0
    const/16 v0, 0x3131

    if-lt p0, v0, :cond_1

    const/16 v0, 0x318e

    if-gt p0, v0, :cond_1

    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/16 v0, 0x309b

    if-lt p0, v0, :cond_3

    const/16 v0, 0x309c

    if-gt p0, v0, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    const/16 v0, 0x2102

    if-eq p0, v0, :cond_9

    const/16 v0, 0x2107

    if-eq p0, v0, :cond_9

    const/16 v0, 0x210a

    if-lt p0, v0, :cond_5

    const/16 v0, 0x2113

    if-le p0, v0, :cond_9

    :cond_5
    const/16 v0, 0x2115

    if-eq p0, v0, :cond_9

    const/16 v0, 0x2118

    if-lt p0, v0, :cond_6

    const/16 v0, 0x211d

    if-le p0, v0, :cond_9

    :cond_6
    const/16 v0, 0x2124

    if-eq p0, v0, :cond_9

    const/16 v0, 0x2128

    if-eq p0, v0, :cond_9

    const/16 v0, 0x212c

    if-lt p0, v0, :cond_7

    const/16 v0, 0x212d

    if-le p0, v0, :cond_9

    :cond_7
    const/16 v0, 0x212f

    if-lt p0, v0, :cond_8

    const/16 v0, 0x2138

    if-le p0, v0, :cond_9

    :cond_8
    const/16 v0, 0x2160

    if-lt p0, v0, :cond_a

    const/16 v0, 0x217f

    if-gt p0, v0, :cond_a

    :cond_9
    move v1, v2

    :cond_a
    return v1

    :cond_b
    const/16 v0, 0x207f

    if-ne p0, v0, :cond_c

    move v1, v2

    :cond_c
    return v1

    :cond_d
    const/16 v0, 0x1101

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x1104

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x1108

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x110a

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x110d

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x1113

    if-lt p0, v0, :cond_e

    const/16 v0, 0x113b

    if-le p0, v0, :cond_1b

    :cond_e
    const/16 v0, 0x113d

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x113f

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x1141

    if-lt p0, v0, :cond_f

    const/16 v0, 0x114b

    if-le p0, v0, :cond_1b

    :cond_f
    const/16 v0, 0x114d

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x114f

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x1151

    if-lt p0, v0, :cond_10

    const/16 v0, 0x1153

    if-le p0, v0, :cond_1b

    :cond_10
    const/16 v0, 0x1156

    if-lt p0, v0, :cond_11

    const/16 v0, 0x1158

    if-le p0, v0, :cond_1b

    :cond_11
    const/16 v0, 0x1162

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x1164

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x1166

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x1168

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x116a

    if-lt p0, v0, :cond_12

    const/16 v0, 0x116c

    if-le p0, v0, :cond_1b

    :cond_12
    const/16 v0, 0x116f

    if-lt p0, v0, :cond_13

    const/16 v0, 0x1171

    if-le p0, v0, :cond_1b

    :cond_13
    const/16 v0, 0x1174

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x1176

    if-lt p0, v0, :cond_14

    const/16 v0, 0x119d

    if-le p0, v0, :cond_1b

    :cond_14
    const/16 v0, 0x119f

    if-lt p0, v0, :cond_15

    const/16 v0, 0x11a2

    if-le p0, v0, :cond_1b

    :cond_15
    const/16 v0, 0x11a9

    if-lt p0, v0, :cond_16

    const/16 v0, 0x11aa

    if-le p0, v0, :cond_1b

    :cond_16
    const/16 v0, 0x11ac

    if-lt p0, v0, :cond_17

    const/16 v0, 0x11ad

    if-le p0, v0, :cond_1b

    :cond_17
    const/16 v0, 0x11b0

    if-lt p0, v0, :cond_18

    const/16 v0, 0x11b6

    if-le p0, v0, :cond_1b

    :cond_18
    const/16 v0, 0x11b9

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x11bb

    if-eq p0, v0, :cond_1b

    const/16 v0, 0x11c3

    if-lt p0, v0, :cond_19

    const/16 v0, 0x11ea

    if-le p0, v0, :cond_1b

    :cond_19
    const/16 v0, 0x11ec

    if-lt p0, v0, :cond_1a

    const/16 v0, 0x11ef

    if-le p0, v0, :cond_1b

    :cond_1a
    const/16 v0, 0x11f1

    if-lt p0, v0, :cond_1c

    const/16 v0, 0x11f8

    if-gt p0, v0, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    return v1

    :cond_1d
    const/16 v0, 0xedc

    if-lt p0, v0, :cond_1e

    const/16 v0, 0xedd

    if-gt p0, v0, :cond_1e

    move v1, v2

    :cond_1e
    return v1

    :cond_1f
    const/16 v0, 0x587

    if-ne p0, v0, :cond_20

    move v1, v2

    :cond_20
    return v1

    :cond_21
    const/16 v0, 0x37a

    if-ne p0, v0, :cond_22

    move v1, v2

    :cond_22
    return v1

    :cond_23
    const/16 v0, 0x2b0

    if-lt p0, v0, :cond_24

    const/16 v0, 0x2b8

    if-le p0, v0, :cond_25

    :cond_24
    const/16 v0, 0x2e0

    if-lt p0, v0, :cond_26

    const/16 v0, 0x2e4

    if-gt p0, v0, :cond_26

    :cond_25
    move v1, v2

    :cond_26
    return v1

    :cond_27
    const/16 v0, 0x132

    if-lt p0, v0, :cond_28

    const/16 v0, 0x133

    if-le p0, v0, :cond_2b

    :cond_28
    const/16 v0, 0x13f

    if-lt p0, v0, :cond_29

    const/16 v0, 0x140

    if-le p0, v0, :cond_2b

    :cond_29
    const/16 v0, 0x149

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x17f

    if-eq p0, v0, :cond_2b

    const/16 v0, 0x1c4

    if-lt p0, v0, :cond_2a

    const/16 v0, 0x1cc

    if-le p0, v0, :cond_2b

    :cond_2a
    const/16 v0, 0x1f1

    if-lt p0, v0, :cond_2c

    const/16 v0, 0x1f3

    if-gt p0, v0, :cond_2c

    :cond_2b
    move v1, v2

    :cond_2c
    return v1

    :cond_2d
    const/16 v0, 0xaa

    if-eq p0, v0, :cond_2e

    const/16 v0, 0xb5

    if-eq p0, v0, :cond_2e

    const/16 v0, 0xba

    if-ne p0, v0, :cond_2f

    :cond_2e
    move v1, v2

    :cond_2f
    return v1

    :pswitch_data_0
    .packed-switch 0xf9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static isDigit(C)Z
    .locals 1

    .line 413
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0xff10

    if-lt p0, v0, :cond_0

    const v0, 0xff19

    if-le p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isExtender(C)Z
    .locals 1

    const/16 v0, 0xb7

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2d0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2d1

    if-eq p0, v0, :cond_3

    const/16 v0, 0x387

    if-eq p0, v0, :cond_3

    const/16 v0, 0x640

    if-eq p0, v0, :cond_3

    const/16 v0, 0xe46

    if-eq p0, v0, :cond_3

    const/16 v0, 0xec6

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3005

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3031

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3035

    if-le p0, v0, :cond_3

    :cond_0
    const/16 v0, 0x309d

    if-lt p0, v0, :cond_1

    const/16 v0, 0x309e

    if-le p0, v0, :cond_3

    :cond_1
    const/16 v0, 0x30fc

    if-lt p0, v0, :cond_2

    const/16 v0, 0x30fe

    if-gt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isLetter(C)Z
    .locals 4

    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2f

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    return v1

    .line 217
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    if-eq v0, v1, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_6

    const/16 v3, 0xa

    if-eq v0, v3, :cond_6

    const/16 v0, 0x2bb

    if-lt p0, v0, :cond_3

    const/16 v0, 0x2c1

    if-le p0, v0, :cond_5

    :cond_3
    const/16 v0, 0x559

    if-eq p0, v0, :cond_5

    const/16 v0, 0x6e5

    if-eq p0, v0, :cond_5

    const/16 v0, 0x6e6

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :cond_5
    :goto_0
    return v1

    .line 227
    :cond_6
    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isCompatibilityChar(C)Z

    move-result v0

    if-nez v0, :cond_7

    const/16 v0, 0x20dd

    if-lt p0, v0, :cond_8

    const/16 v0, 0x20e0

    if-le p0, v0, :cond_7

    goto :goto_1

    :cond_7
    move v1, v2

    :cond_8
    :goto_1
    return v1
.end method

.method private static isLetter2(C)Z
    .locals 3

    const/16 v0, 0x61

    const/4 v1, 0x1

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3e

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    return v1

    .line 378
    :cond_2
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x387

    if-ne p0, v0, :cond_5

    goto :goto_1

    .line 395
    :pswitch_0
    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isCompatibilityChar(C)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x20dd

    if-lt p0, v0, :cond_4

    const/16 v0, 0x20e0

    if-le p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :cond_4
    :goto_0
    return v1

    :cond_5
    move v1, v2

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isNCNameChar(C)Z
    .locals 1

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isNameChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNameChar(C)Z
    .locals 3

    .line 117
    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isLetter2(C)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x3e

    const/4 v2, 0x0

    if-ne p0, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x2e

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3a

    if-eq p0, v0, :cond_3

    .line 121
    invoke-static {p0}, Lcom/bea/xml/stream/reader/XmlChars;->isExtender(C)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public static isSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
