.class final Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompatKitKat.java"
.implements Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
.field final synthetic val$bridge:Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouchExplorationStateChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$1;->val$bridge:Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;
invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;->onTouchExplorationStateChanged(Z)V
return-void
.end method