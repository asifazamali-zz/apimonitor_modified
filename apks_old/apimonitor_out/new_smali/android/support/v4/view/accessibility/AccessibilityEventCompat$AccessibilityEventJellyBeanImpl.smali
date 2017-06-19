.class  Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventJellyBeanImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;
.source "AccessibilityEventCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat$AccessibilityEventIcsImpl;-><init>()V
return-void
.end method
.method public getAction(Landroid/view/accessibility/AccessibilityEvent;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;->getAction(Landroid/view/accessibility/AccessibilityEvent;)I
move-result v0
return v0
.end method
.method public getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;->getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
move-result v0
return v0
.end method
.method public setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;->setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
return-void
.end method
.method public setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;->setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
return-void
.end method