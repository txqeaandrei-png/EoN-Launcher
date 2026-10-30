.class public interface abstract Lorg/spongycastle/cms/KEKRecipient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/spongycastle/cms/Recipient;


# virtual methods
.method public abstract getRecipientOperator(Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;Lorg/spongycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/spongycastle/cms/RecipientOperator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/spongycastle/cms/CMSException;
        }
    .end annotation
.end method
