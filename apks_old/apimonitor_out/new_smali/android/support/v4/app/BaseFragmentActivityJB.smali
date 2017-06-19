.class abstract Landroid/support/v4/app/BaseFragmentActivityJB;
.super Landroid/support/v4/app/BaseFragmentActivityHoneycomb;
.source "BaseFragmentActivityJB.java"
.field  mStartedActivityFromFragment:Z
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;-><init>()V
return-void
.end method
.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
iget-boolean v0, p0, Landroid/support/v4/app/BaseFragmentActivityJB;->mStartedActivityFromFragment:Z
if-nez v0, :cond_a
const/4 v0, -0x1
if-eq p2, v0, :cond_a
invoke-static {p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->checkForValidRequestCode(I)V
:cond_a
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
return-void
.end method
.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
.registers 9
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
iget-boolean v0, p0, Landroid/support/v4/app/BaseFragmentActivityJB;->mStartedIntentSenderFromFragment:Z
if-nez v0, :cond_a
const/4 v0, -0x1
if-eq p2, v0, :cond_a
invoke-static {p2}, Landroid/support/v4/app/BaseFragmentActivityJB;->checkForValidRequestCode(I)V
:cond_a
invoke-super/range {p0 .. p7}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
return-void
.end method