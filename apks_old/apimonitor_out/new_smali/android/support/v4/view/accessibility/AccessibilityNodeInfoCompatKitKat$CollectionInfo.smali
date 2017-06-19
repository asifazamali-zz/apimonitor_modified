.class  Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatKitKat$CollectionInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompatKitKat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static getColumnCount(Ljava/lang/Object;)I
.registers 2
check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getColumnCount()I
move-result v0
return v0
.end method
.method static getRowCount(Ljava/lang/Object;)I
.registers 2
check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->getRowCount()I
move-result v0
return v0
.end method
.method static isHierarchical(Ljava/lang/Object;)Z
.registers 2
check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->isHierarchical()Z
move-result v0
return v0
.end method