.class final Landroid/support/v4/widget/ExploreByTouchHelper$1;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"
.implements Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public obtainBounds(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/graphics/Rect;)V
.registers 3
invoke-virtual {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V
return-void
.end method
.method public bridge synthetic obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V
.registers 3
check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper$1;->obtainBounds(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;Landroid/graphics/Rect;)V
return-void
.end method