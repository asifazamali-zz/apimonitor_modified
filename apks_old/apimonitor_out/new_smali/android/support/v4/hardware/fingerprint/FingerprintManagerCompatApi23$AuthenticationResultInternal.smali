.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"
.field private mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
.method public constructor <init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;->mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
return-void
.end method
.method public getCryptoObject()Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
.registers 2
iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;->mCryptoObject:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
return-object v0
.end method