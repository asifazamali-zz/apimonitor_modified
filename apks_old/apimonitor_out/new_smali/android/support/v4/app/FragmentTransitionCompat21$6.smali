.class final Landroid/support/v4/app/FragmentTransitionCompat21$6;
.super Landroid/transition/Transition$EpicenterCallback;
.source "FragmentTransitionCompat21.java"
.field final synthetic val$epicenter:Landroid/graphics/Rect;
.method constructor <init>(Landroid/graphics/Rect;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;
invoke-direct {p0}, Landroid/transition/Transition$EpicenterCallback;-><init>()V
return-void
.end method
.method public onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;
invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Landroid/support/v4/app/FragmentTransitionCompat21$6;->val$epicenter:Landroid/graphics/Rect;
goto :goto_d
.end method