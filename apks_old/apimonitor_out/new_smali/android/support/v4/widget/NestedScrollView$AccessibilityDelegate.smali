.class  Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V
return-void
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 7
invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
move-object v0, p1
check-cast v0, Landroid/support/v4/widget/NestedScrollView;
const-class v3, Landroid/widget/ScrollView;
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
move-result-object v1
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I
move-result v3
if-lez v3, :cond_3a
const/4 v2, 0x1
:goto_1a
invoke-virtual {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I
move-result v3
invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollX(I)V
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I
move-result v3
invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollY(I)V
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I
move-result v3
invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(I)V
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I
move-result v3
invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(I)V
return-void
:cond_3a
const/4 v2, 0x0
goto :goto_1a
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
move-object v0, p1
check-cast v0, Landroid/support/v4/widget/NestedScrollView;
const-class v2, Landroid/widget/ScrollView;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z
move-result v2
if-eqz v2, :cond_35
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I
move-result v1
if-lez v1, :cond_35
const/4 v2, 0x1
invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I
move-result v2
if-lez v2, :cond_2a
const/16 v2, 0x2000
invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V
:cond_2a
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I
move-result v2
if-ge v2, v1, :cond_35
const/16 v2, 0x1000
invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V
:cond_35
return-void
.end method
.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
.registers 11
const/4 v3, 0x1
const/4 v4, 0x0
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
move-result v5
if-eqz v5, :cond_9
:goto_8
return v3
:cond_9
move-object v0, p1
check-cast v0, Landroid/support/v4/widget/NestedScrollView;
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z
move-result v5
if-nez v5, :cond_14
move v3, v4
goto :goto_8
:cond_14
sparse-switch p2, :sswitch_data_66
move v3, v4
goto :goto_8
:sswitch_19
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I
move-result v5
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I
move-result v6
sub-int/2addr v5, v6
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I
move-result v6
sub-int v2, v5, v6
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I
move-result v5
add-int/2addr v5, v2
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I
move-result v6
invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I
move-result v5
if-eq v1, v5, :cond_3f
invoke-virtual {v0, v4, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V
goto :goto_8
:cond_3f
move v3, v4
goto :goto_8
:sswitch_41
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I
move-result v5
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I
move-result v6
sub-int/2addr v5, v6
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I
move-result v6
sub-int v2, v5, v6
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I
move-result v5
sub-int/2addr v5, v2
invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I
move-result v1
invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I
move-result v5
if-eq v1, v5, :cond_63
invoke-virtual {v0, v4, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V
goto :goto_8
:cond_63
move v3, v4
goto :goto_8
nop
:sswitch_data_66
.sparse-switch
0x1000 -> :sswitch_19
0x2000 -> :sswitch_41
.end sparse-switch
.end method