.class  Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.source "ExploreByTouchHelper.java"
.field final synthetic this$0:Landroid/support/v4/widget/ExploreByTouchHelper;
.method constructor <init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;
invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;-><init>()V
return-void
.end method
.method public createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;
invoke-virtual {v1, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v1
return-object v1
.end method
.method public findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 4
const/4 v1, 0x2
if-ne p1, v1, :cond_f
iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;
#getter for: Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
invoke-static {v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->access$000(Landroid/support/v4/widget/ExploreByTouchHelper;)I
move-result v0
:goto_9
const/high16 v1, -0x8000
if-ne v0, v1, :cond_16
const/4 v1, 0x0
:goto_e
return-object v1
:cond_f
iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;
#getter for: Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
invoke-static {v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->access$100(Landroid/support/v4/widget/ExploreByTouchHelper;)I
move-result v0
goto :goto_9
:cond_16
invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->createAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v1
goto :goto_e
.end method
.method public performAction(IILandroid/os/Bundle;)Z
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;->this$0:Landroid/support/v4/widget/ExploreByTouchHelper;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z
move-result v0
return v0
.end method