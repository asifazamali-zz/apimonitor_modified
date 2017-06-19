.class  Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi24;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompatApi24.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getAnchor(Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getAnchor()Landroid/view/accessibility/AccessibilityNodeInfo;
move-result-object v0
return-object v0
.end method
.method public static getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
.registers 2
check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method