.class  Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;
.super Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;
.source "ViewCompat.java"
.field static accessibilityDelegateCheckFailed:Z
.field static mAccessibilityDelegateField:Ljava/lang/reflect/Field;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$HCViewCompatImpl;-><init>()V
return-void
.end method
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
if-nez v1, :cond_b
new-instance v1, Ljava/util/WeakHashMap;
invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V
iput-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
:cond_b
iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;
if-nez v0, :cond_1f
new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;
invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V
iget-object v1, p0, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1f
return-object v0
.end method
.method public canScrollHorizontally(Landroid/view/View;I)Z
.registers 4
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollHorizontally(Landroid/view/View;I)Z
move-result v0
return v0
.end method
.method public canScrollVertically(Landroid/view/View;I)Z
.registers 4
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->canScrollVertically(Landroid/view/View;I)Z
move-result v0
return v0
.end method
.method public hasAccessibilityDelegate(Landroid/view/View;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
sget-boolean v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z
if-eqz v3, :cond_7
:goto_6
return v2
:cond_7
sget-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;
if-nez v3, :cond_1b
:try_start_b
const-class v3, Landroid/view/View;
const-string v4, "mAccessibilityDelegate"
invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v3
sput-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;
sget-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:try_start_1b
:try_end_1b
.catch Ljava/lang/Throwable; {:try_start_b .. :try_end_1b} :catch_25
:cond_1b
sget-object v3, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->mAccessibilityDelegateField:Ljava/lang/reflect/Field;
invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_20
.catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_20} :catch_2b
move-result-object v3
if-eqz v3, :cond_29
:goto_23
move v2, v1
goto :goto_6
:catch_25
move-exception v0
sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z
goto :goto_6
:cond_29
move v1, v2
goto :goto_23
:catch_2b
move-exception v0
sput-boolean v1, Landroid/support/v4/view/ViewCompat$ICSViewCompatImpl;->accessibilityDelegateCheckFailed:Z
goto :goto_6
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.registers 4
invoke-virtual {p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getInfo()Ljava/lang/Object;
move-result-object v0
invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Ljava/lang/Object;)V
return-void
.end method
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
if-nez p2, :cond_7
const/4 v0, 0x0
:goto_3
invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompatICS;->setAccessibilityDelegate(Landroid/view/View;Ljava/lang/Object;)V
return-void
:cond_7
invoke-virtual {p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->getBridge()Ljava/lang/Object;
move-result-object v0
goto :goto_3
.end method
.method public setFitsSystemWindows(Landroid/view/View;Z)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatICS;->setFitsSystemWindows(Landroid/view/View;Z)V
return-void
.end method