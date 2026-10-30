.class public interface abstract Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;
.super Ljava/lang/Object;


# static fields
.field public static final bc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12_aes128_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12_aes192_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs12_aes256_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha1_pkcs5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12_aes128_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12_aes192_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs12_aes256_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha256_pkcs5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

.field public static final bc_pbe_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 15
    new-instance v0, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "1.3.6.1.4.1.22554"

    invoke-direct {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 22
    const-string v1, "1"

    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 29
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 32
    const-string v3, "2.1"

    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 34
    const-string v4, "2.2"

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha384:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 36
    const-string v4, "2.3"

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha512:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 38
    const-string v4, "2.4"

    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha224:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 44
    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 46
    const-string v0, "2"

    invoke-virtual {v2, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 49
    invoke-virtual {v3, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs5:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 51
    invoke-virtual {v3, v0}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 57
    const-string v1, "1.2"

    invoke-virtual {v2, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sput-object v3, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes128_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    const-string v3, "1.22"

    invoke-virtual {v2, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    sput-object v4, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes192_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 61
    const-string v4, "1.42"

    invoke-virtual {v2, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    sput-object v2, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha1_pkcs12_aes256_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 64
    invoke-virtual {v0, v1}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes128_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 66
    invoke-virtual {v0, v3}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    sput-object v1, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes192_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    .line 68
    invoke-virtual {v0, v4}, Lorg/spongycastle/asn1/ASN1ObjectIdentifier;->branch(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/asn1/bc/BCObjectIdentifiers;->bc_pbe_sha256_pkcs12_aes256_cbc:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method
