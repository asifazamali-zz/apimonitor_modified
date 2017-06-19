.class  Landroid/support/v4/view/ViewCompat$MarshmallowViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;
.source "ViewCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$LollipopViewCompatImpl;-><init>()V
return-void
.end method
.method public getScrollIndicators(Landroid/view/View;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewCompatMarshmallow;->getScrollIndicators(Landroid/view/View;)I
move-result v0
return v0
.end method
.method public offsetLeftAndRight(Landroid/view/View;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatMarshmallow;->offsetLeftAndRight(Landroid/view/View;I)V
return-void
.end method
.method public offsetTopAndBottom(Landroid/view/View;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatMarshmallow;->offsetTopAndBottom(Landroid/view/View;I)V
return-void
.end method
.method public setScrollIndicators(Landroid/view/View;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;I)V
return-void
.end method
.method public setScrollIndicators(Landroid/view/View;II)V
.registers 4
invoke-static {p1, p2, p3}, Landroid/support/v4/view/ViewCompatMarshmallow;->setScrollIndicators(Landroid/view/View;II)V
return-void
.end method