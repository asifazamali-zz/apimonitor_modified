.class abstract Landroid/support/v4/app/BaseFragmentActivityGingerbread;
.super Landroid/support/v4/app/SupportActivity;
.source "BaseFragmentActivityGingerbread.java"
.field  mStartedIntentSenderFromFragment:Z
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/SupportActivity;-><init>()V
return-void
.end method
.method static checkForValidRequestCode(I)V
.registers 3
const/high16 v0, -0x1
and-int/2addr v0, p0
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Can only use lower 16 bits for requestCode"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
return-void
.end method
.method abstract dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-ge v0, v1, :cond_17
invoke-virtual {p0}, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
move-result-object v0
if-nez v0, :cond_17
invoke-virtual {p0}, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V
:cond_17
invoke-super {p0, p1}, Landroid/support/v4/app/SupportActivity;->onCreate(Landroid/os/Bundle;)V
return-void
.end method
.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 6
const/4 v1, 0x0
invoke-virtual {p0, v1, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_b
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/SupportActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
:cond_b
return-object v0
.end method
.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
.registers 8
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
iget-boolean v0, p0, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->mStartedIntentSenderFromFragment:Z
if-nez v0, :cond_a
const/4 v0, -0x1
if-eq p2, v0, :cond_a
invoke-static {p2}, Landroid/support/v4/app/BaseFragmentActivityGingerbread;->checkForValidRequestCode(I)V
:cond_a
invoke-super/range {p0 .. p6}, Landroid/support/v4/app/SupportActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
return-void
.end method