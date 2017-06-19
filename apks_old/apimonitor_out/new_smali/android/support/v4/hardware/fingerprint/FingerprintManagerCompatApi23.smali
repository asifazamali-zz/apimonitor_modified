.class public final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
.registers 2
invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
move-result-object v0
return-object v0
.end method
.method public static authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;ILjava/lang/Object;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;Landroid/os/Handler;)V
.registers 12
invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
move-result-object v0
if-eqz v0, :cond_16
invoke-static {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
move-result-object v1
move-object v2, p3
check-cast v2, Landroid/os/CancellationSignal;
invoke-static {p4}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
move-result-object v4
move v3, p2
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
:cond_16
return-void
.end method
.method private static getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
.registers 3
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
const-string v1, "android.hardware.fingerprint"
invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_15
const-class v0, Landroid/hardware/fingerprint/FingerprintManager;
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;
:goto_14
return-object v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public static hasEnrolledFingerprints(Landroid/content/Context;)Z
.registers 3
invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z
move-result v1
if-eqz v1, :cond_e
const/4 v1, 0x1
:goto_d
return v1
:cond_e
const/4 v1, 0x0
goto :goto_d
.end method
.method public static isHardwareDetected(Landroid/content/Context;)Z
.registers 3
invoke-static {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z
move-result v1
if-eqz v1, :cond_e
const/4 v1, 0x1
:goto_d
return v1
:cond_e
const/4 v1, 0x0
goto :goto_d
.end method
.method private static unwrapCryptoObject(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
.registers 3
const/4 v0, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;
move-result-object v1
if-eqz v1, :cond_14
new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getCipher()Ljavax/crypto/Cipher;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V
goto :goto_3
:cond_14
invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;
move-result-object v1
if-eqz v1, :cond_24
new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getSignature()Ljava/security/Signature;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljava/security/Signature;)V
goto :goto_3
:cond_24
invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;
move-result-object v1
if-eqz v1, :cond_3
new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getMac()Ljavax/crypto/Mac;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;-><init>(Ljavax/crypto/Mac;)V
goto :goto_3
.end method
.method private static wrapCallback(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.registers 2
new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;
invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$1;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;)V
return-object v0
.end method
.method private static wrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
.registers 3
const/4 v0, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;
move-result-object v1
if-eqz v1, :cond_14
new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getCipher()Ljavax/crypto/Cipher;
move-result-object v1
invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Cipher;)V
goto :goto_3
:cond_14
invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;
move-result-object v1
if-eqz v1, :cond_24
new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getSignature()Ljava/security/Signature;
move-result-object v1
invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljava/security/Signature;)V
goto :goto_3
:cond_24
invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;
move-result-object v1
if-eqz v1, :cond_3
new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
invoke-virtual {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->getMac()Ljavax/crypto/Mac;
move-result-object v1
invoke-direct {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;-><init>(Ljavax/crypto/Mac;)V
goto :goto_3
.end method