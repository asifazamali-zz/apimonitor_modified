.class  Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"
.implements Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerBridge;
.field final synthetic this$0:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;
.field final synthetic val$listener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
.method constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;->this$0:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl;
iput-object p2, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;->val$listener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouchExplorationStateChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerKitKatImpl$1;->val$listener:Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;
invoke-interface {v0, p1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V
return-void
.end method