.class  Landroid/support/v4/view/accessibility/AccessibilityEventCompatJellyBean;
.super Ljava/lang/Object;
.source "AccessibilityEventCompatJellyBean.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getAction(Landroid/view/accessibility/AccessibilityEvent;)I
.registers 2
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getAction()I
move-result v0
return v0
.end method
.method public static getMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;)I
.registers 2
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityEvent;->getMovementGranularity()I
move-result v0
return v0
.end method
.method public static setAction(Landroid/view/accessibility/AccessibilityEvent;I)V
.registers 2
invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V
return-void
.end method
.method public static setMovementGranularity(Landroid/view/accessibility/AccessibilityEvent;I)V
.registers 2
invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V
return-void
.end method