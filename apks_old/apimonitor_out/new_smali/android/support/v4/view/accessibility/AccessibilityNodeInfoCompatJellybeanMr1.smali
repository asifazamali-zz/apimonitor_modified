.class  Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatJellybeanMr1.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLabelFor()Landroid/view/accessibility/AccessibilityNodeInfo;
move-result-object v0
return-object v0
.end method
.method public static getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getLabeledBy()Landroid/view/accessibility/AccessibilityNodeInfo;
move-result-object v0
return-object v0
.end method
.method public static setLabelFor(Ljava/lang/Object;Landroid/view/View;)V
.registers 2
check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;)V
return-void
.end method
.method public static setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V
.registers 3
check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabelFor(Landroid/view/View;I)V
return-void
.end method
.method public static setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V
.registers 2
check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V
return-void
.end method
.method public static setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V
.registers 3
check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo;
invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;I)V
return-void
.end method