.class  Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatLollipopImpl;
.super Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;
.source "ViewGroupCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatJellybeanMR2Impl;-><init>()V
return-void
.end method
.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompatLollipop;->getNestedScrollAxes(Landroid/view/ViewGroup;)I
move-result v0
return v0
.end method
.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewGroupCompatLollipop;->isTransitionGroup(Landroid/view/ViewGroup;)Z
move-result v0
return v0
.end method
.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewGroupCompatLollipop;->setTransitionGroup(Landroid/view/ViewGroup;Z)V
return-void
.end method