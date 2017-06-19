.class  Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityManagerCompat.java"
.implements Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityManagerVersionImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public getEnabledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;I)Ljava/util/List;
.registers 4
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getInstalledAccessibilityServiceList(Landroid/view/accessibility/AccessibilityManager;)Ljava/util/List;
.registers 3
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public newAccessibilityStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatIcs$AccessibilityStateChangeListenerWrapper;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public newTouchExplorationStateChangeListener(Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Landroid/support/v4/view/accessibility/AccessibilityManagerCompatKitKat$TouchExplorationStateChangeListenerWrapper;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListener;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager;Landroid/support/v4/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListener;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method