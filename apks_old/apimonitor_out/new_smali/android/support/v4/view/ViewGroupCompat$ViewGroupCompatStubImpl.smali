.class  Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatStubImpl;
.super Ljava/lang/Object;
.source "ViewGroupCompat.java"
.implements Landroid/support/v4/view/ViewGroupCompat$ViewGroupCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getLayoutMode(Landroid/view/ViewGroup;)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getNestedScrollAxes(Landroid/view/ViewGroup;)I
.registers 3
instance-of v0, p1, Landroid/support/v4/view/NestedScrollingParent;
if-eqz v0, :cond_b
check-cast p1, Landroid/support/v4/view/NestedScrollingParent;
invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingParent;->getNestedScrollAxes()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public isTransitionGroup(Landroid/view/ViewGroup;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 5
const/4 v0, 0x1
return v0
.end method
.method public setLayoutMode(Landroid/view/ViewGroup;I)V
.registers 3
return-void
.end method
.method public setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
.registers 3
return-void
.end method
.method public setTransitionGroup(Landroid/view/ViewGroup;Z)V
.registers 3
return-void
.end method