.class final Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;
.super Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;
.source "FingerprintManagerCompat.java"
.field final synthetic val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
.method constructor <init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
invoke-direct {p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;-><init>()V
return-void
.end method
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V
return-void
.end method
.method public onAuthenticationFailed()V
.registers 2
iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
invoke-virtual {v0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V
return-void
.end method
.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V
return-void
.end method
.method public onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;
invoke-virtual {p1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;->getCryptoObject()Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
move-result-object v2
invoke-static {v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->unwrapCryptoObject(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
move-result-object v2
invoke-direct {v1, v2}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;-><init>(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;)V
invoke-virtual {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V
return-void
.end method