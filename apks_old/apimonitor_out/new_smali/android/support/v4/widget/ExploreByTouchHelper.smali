.class public abstract Landroid/support/v4/widget/ExploreByTouchHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"
.field public static final HOST_ID:I = -0x1
.field public static final INVALID_ID:I = -0x80000000
.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;
.field private static final NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
.field private static final SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
.field private mAccessibilityFocusedVirtualViewId:I
.field private final mHost:Landroid/view/View;
.field private mHoveredVirtualViewId:I
.field private mKeyboardFocusedVirtualViewId:I
.field private final mManager:Landroid/view/accessibility/AccessibilityManager;
.field private mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
.field private final mTempGlobalRect:[I
.field private final mTempParentRect:Landroid/graphics/Rect;
.field private final mTempScreenRect:Landroid/graphics/Rect;
.field private final mTempVisibleRect:Landroid/graphics/Rect;
.method static constructor <clinit>()V
.registers 3
const v2, 0x7fffffff
const/high16 v1, -0x8000
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V
sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;
new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$1;
invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$1;-><init>()V
sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$2;
invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$2;-><init>()V
sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
return-void
.end method
.method public constructor <init>(Landroid/view/View;)V
.registers 6
const/4 v3, 0x1
const/high16 v2, -0x8000
invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;
const/4 v1, 0x2
new-array v1, v1, [I
iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I
iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I
if-nez p1, :cond_30
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "View may not be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_30
iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "accessibility"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/accessibility/AccessibilityManager;
iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;
invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V
invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I
move-result v1
if-nez v1, :cond_4c
invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V
:cond_4c
return-void
.end method
.method static synthetic access$000(Landroid/support/v4/widget/ExploreByTouchHelper;)I
.registers 2
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
return v0
.end method
.method static synthetic access$100(Landroid/support/v4/widget/ExploreByTouchHelper;)I
.registers 2
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
return v0
.end method
.method private clearAccessibilityFocus(I)Z
.registers 3
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
if-ne v0, p1, :cond_14
const/high16 v0, -0x8000
iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->invalidate()V
const/high16 v0, 0x1
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method private clickKeyboardFocusedVirtualView()Z
.registers 4
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
const/high16 v1, -0x8000
if-eq v0, v1, :cond_13
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
const/16 v1, 0x10
const/4 v2, 0x0
invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
move-result v0
if-eqz v0, :cond_13
const/4 v0, 0x1
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
.registers 4
packed-switch p1, :pswitch_data_e
invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
move-result-object v0
:goto_7
return-object v0
:pswitch_8
invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
move-result-object v0
goto :goto_7
nop
:pswitch_data_e
.packed-switch -0x1
:pswitch_8
.end packed-switch
.end method
.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
.registers 8
invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
move-result-object v2
invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v1
invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getText()Ljava/util/List;
move-result-object v3
invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;
move-result-object v4
invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setContentDescription(Ljava/lang/CharSequence;)V
invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z
move-result v3
invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z
move-result v3
invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setPassword(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z
move-result v3
invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setEnabled(Z)V
invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z
move-result v3
invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setChecked(Z)V
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->isEmpty()Z
move-result v3
if-eqz v3, :cond_55
invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v3
if-nez v3, :cond_55
new-instance v3, Ljava/lang/RuntimeException;
const-string v4, "Callbacks must add text or a content description in populateEventForVirtualViewId()"
invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v3
:cond_55
invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setClassName(Ljava/lang/CharSequence;)V
iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v2, v3, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V
iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V
return-object v0
.end method
.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
.registers 4
invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
return-object v0
.end method
.method private createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 13
const/4 v10, -0x1
const/4 v6, 0x0
const/4 v5, 0x1
invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V
invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V
const-string v7, "android.view.View"
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V
sget-object v7, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V
sget-object v7, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V
invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;
move-result-object v7
if-nez v7, :cond_38
invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v7
if-nez v7, :cond_38
new-instance v5, Ljava/lang/RuntimeException;
const-string v6, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"
invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v5
:cond_38
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;
sget-object v8, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;
invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_4f
new-instance v5, Ljava/lang/RuntimeException;
const-string v6, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"
invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v5
:cond_4f
invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I
move-result v0
and-int/lit8 v7, v0, 0x40
if-eqz v7, :cond_5f
new-instance v5, Ljava/lang/RuntimeException;
const-string v6, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"
invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v5
:cond_5f
and-int/lit16 v7, v0, 0x80
if-eqz v7, :cond_6b
new-instance v5, Ljava/lang/RuntimeException;
const-string v6, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"
invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v5
:cond_6b
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v7
invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v2, v7, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V
iget v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
if-ne v7, p1, :cond_e0
invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V
const/16 v7, 0x80
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V
:goto_89
iget v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
if-ne v7, p1, :cond_e9
move v1, v5
:goto_8e
if-eqz v1, :cond_eb
const/4 v7, 0x2
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V
:goto_94
:cond_94
invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I
invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;
sget-object v8, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;
invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_113
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V
iget v7, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I
if-eq v7, v10, :cond_f8
invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v3
iget v4, v2, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I
:goto_bc
if-eq v4, v10, :cond_f5
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v3, v7, v10}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;I)V
sget-object v7, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;
invoke-virtual {v3, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V
invoke-virtual {p0, v4, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;
invoke-virtual {v3, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;
iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->left:I
iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;
iget v9, v9, Landroid/graphics/Rect;->top:I
invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V
iget v4, v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I
goto :goto_bc
:cond_e0
invoke-virtual {v2, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V
const/16 v7, 0x40
invoke-virtual {v2, v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V
goto :goto_89
:cond_e9
move v1, v6
goto :goto_8e
:cond_eb
invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z
move-result v7
if-eqz v7, :cond_94
invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V
goto :goto_94
:cond_f5
invoke-virtual {v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V
:cond_f8
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;
iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I
aget v8, v8, v6
iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->getScrollX()I
move-result v9
sub-int/2addr v8, v9
iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I
aget v9, v9, v5
iget-object v10, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v10}, Landroid/view/View;->getScrollY()I
move-result v10
sub-int/2addr v9, v10
invoke-virtual {v7, v8, v9}, Landroid/graphics/Rect;->offset(II)V
:cond_113
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;
invoke-virtual {v7, v8}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z
move-result v7
if-eqz v7, :cond_14f
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;
iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I
aget v6, v8, v6
iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getScrollX()I
move-result v8
sub-int/2addr v6, v8
iget-object v8, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I
aget v8, v8, v5
iget-object v9, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->getScrollY()I
move-result v9
sub-int/2addr v8, v9
invoke-virtual {v7, v6, v8}, Landroid/graphics/Rect;->offset(II)V
iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;
iget-object v7, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;
invoke-virtual {v6, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z
iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;
invoke-virtual {v2, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V
iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;
invoke-direct {p0, v6}, Landroid/support/v4/widget/ExploreByTouchHelper;->isVisibleToUser(Landroid/graphics/Rect;)Z
move-result v6
if-eqz v6, :cond_14f
invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V
:cond_14f
return-object v2
.end method
.method private createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 8
iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-static {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v2
iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-static {v5, v2}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V
invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I
move-result v3
if-lez v3, :cond_27
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v5
if-lez v5, :cond_27
new-instance v5, Ljava/lang/RuntimeException;
const-string v6, "Views cannot have both real and virtual children"
invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v5
:cond_27
const/4 v1, 0x0
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_2c
if-ge v1, v0, :cond_40
iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Integer;
invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
move-result v5
invoke-virtual {v2, v6, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V
add-int/lit8 v1, v1, 0x1
goto :goto_2c
:cond_40
return-object v2
.end method
.method private getAllNodes()Landroid/support/v4/util/SparseArrayCompat;
.registers 6
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p0, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V
new-instance v0, Landroid/support/v4/util/SparseArrayCompat;
invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V
const/4 v2, 0x0
:goto_e
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v4
if-ge v2, v4, :cond_1e
invoke-direct {p0, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v1
invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_1e
return-object v0
.end method
.method private getBoundsInParent(ILandroid/graphics/Rect;)V
.registers 4
invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V
return-void
.end method
.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
.registers 7
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v3, 0x0
const/4 v2, -0x1
invoke-virtual {p0}, Landroid/view/View;->getWidth()I
move-result v1
invoke-virtual {p0}, Landroid/view/View;->getHeight()I
move-result v0
sparse-switch p1, :sswitch_data_26
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:sswitch_15
invoke-virtual {p2, v1, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V
:goto_18
return-object p2
:sswitch_19
invoke-virtual {p2, v3, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_18
:sswitch_1d
invoke-virtual {p2, v2, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_18
:sswitch_21
invoke-virtual {p2, v3, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V
goto :goto_18
nop
:sswitch_data_26
.sparse-switch
0x11 -> :sswitch_15
0x21 -> :sswitch_19
0x42 -> :sswitch_1d
0x82 -> :sswitch_21
.end sparse-switch
.end method
.method private isVisibleToUser(Landroid/graphics/Rect;)Z
.registers 7
const/4 v2, 0x0
if-eqz p1, :cond_9
invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z
move-result v3
if-eqz v3, :cond_a
:cond_9
:goto_9
return v2
:cond_a
iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getWindowVisibility()I
move-result v3
if-nez v3, :cond_9
iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
:goto_18
instance-of v3, v1, Landroid/view/View;
if-eqz v3, :cond_33
move-object v0, v1
check-cast v0, Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F
move-result v3
const/4 v4, 0x0
cmpg-float v3, v3, v4
if-lez v3, :cond_9
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v3
if-nez v3, :cond_9
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
goto :goto_18
:cond_33
if-eqz v1, :cond_9
const/4 v2, 0x1
goto :goto_9
.end method
.method private static keyToDirection(I)I
.registers 2
packed-switch p0, :pswitch_data_10
:pswitch_3
const/16 v0, 0x82
:goto_5
return v0
:pswitch_6
const/16 v0, 0x11
goto :goto_5
:pswitch_9
const/16 v0, 0x21
goto :goto_5
:pswitch_c
const/16 v0, 0x42
goto :goto_5
nop
:pswitch_data_10
.packed-switch 0x13
:pswitch_9
:pswitch_3
:pswitch_6
:pswitch_c
.end packed-switch
.end method
.method private moveFocus(ILandroid/graphics/Rect;)Z
.registers 21
.parameter
.end parameter
.parameter
.end parameter
invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAllNodes()Landroid/support/v4/util/SparseArrayCompat;
move-result-object v2
move-object/from16 v0, p0
iget v14, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
const/high16 v3, -0x8000
if-ne v14, v3, :cond_18
const/4 v5, 0x0
:goto_d
sparse-switch p1, :sswitch_data_8a
new-instance v3, Ljava/lang/IllegalArgumentException;
const-string v4, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_18
invoke-virtual {v2, v14}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-object v5, v3
goto :goto_d
:sswitch_20
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_46
const/4 v7, 0x1
:goto_2c
sget-object v3, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
sget-object v4, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
const/4 v8, 0x0
move/from16 v6, p1
invoke-static/range {v2 .. v8}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;
move-result-object v16
check-cast v16, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
:goto_39
if-nez v16, :cond_7f
const/high16 v17, -0x8000
:goto_3d
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z
move-result v3
return v3
:cond_46
const/4 v7, 0x0
goto :goto_2c
:sswitch_48
new-instance v12, Landroid/graphics/Rect;
invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
const/high16 v4, -0x8000
if-eq v3, v4, :cond_6d
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
move-object/from16 v0, p0
invoke-direct {v0, v3, v12}, Landroid/support/v4/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V
:goto_5e
sget-object v9, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
sget-object v10, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
move-object v8, v2
move-object v11, v5
move/from16 v13, p1
invoke-static/range {v8 .. v13}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;
move-result-object v16
check-cast v16, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
goto :goto_39
:cond_6d
if-eqz p2, :cond_75
move-object/from16 v0, p2
invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
goto :goto_5e
:cond_75
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
move/from16 v0, p1
invoke-static {v3, v0, v12}, Landroid/support/v4/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
goto :goto_5e
:cond_7f
move-object/from16 v0, v16
invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I
move-result v15
invoke-virtual {v2, v15}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I
move-result v17
goto :goto_3d
:sswitch_data_8a
.sparse-switch
0x1 -> :sswitch_20
0x2 -> :sswitch_20
0x11 -> :sswitch_48
0x21 -> :sswitch_48
0x42 -> :sswitch_48
0x82 -> :sswitch_48
.end sparse-switch
.end method
.method private performActionForChild(IILandroid/os/Bundle;)Z
.registers 5
sparse-switch p2, :sswitch_data_1c
invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
move-result v0
:goto_7
return v0
:sswitch_8
invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z
move-result v0
goto :goto_7
:sswitch_d
invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z
move-result v0
goto :goto_7
:sswitch_12
invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z
move-result v0
goto :goto_7
:sswitch_17
invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z
move-result v0
goto :goto_7
:sswitch_data_1c
.sparse-switch
0x1 -> :sswitch_12
0x2 -> :sswitch_17
0x40 -> :sswitch_8
0x80 -> :sswitch_d
.end sparse-switch
.end method
.method private performActionForHost(ILandroid/os/Bundle;)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-static {v0, p1, p2}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
move-result v0
return v0
.end method
.method private requestAccessibilityFocus(I)Z
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;
invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z
move-result v1
if-eqz v1, :cond_11
iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;
invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
move-result v1
if-nez v1, :cond_12
:goto_11
:cond_11
return v0
:cond_12
iget v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
if-eq v1, p1, :cond_11
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
const/high16 v1, -0x8000
if-eq v0, v1, :cond_21
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z
:cond_21
iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->invalidate()V
const v0, 0x8000
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z
const/4 v0, 0x1
goto :goto_11
.end method
.method private updateHoveredVirtualView(I)V
.registers 4
iget v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I
if-ne v1, p1, :cond_5
:goto_4
return-void
:cond_5
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I
iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I
const/16 v1, 0x80
invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z
const/16 v1, 0x100
invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z
goto :goto_4
.end method
.method public final clearKeyboardFocusForVirtualView(I)Z
.registers 4
const/4 v0, 0x0
iget v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
if-eq v1, p1, :cond_6
:goto_5
return v0
:cond_6
const/high16 v1, -0x8000
iput v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V
const/16 v0, 0x8
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z
const/4 v0, 0x1
goto :goto_5
.end method
.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
.registers 8
.parameter
.end parameter
const/4 v1, 0x1
const/high16 v5, -0x8000
const/4 v2, 0x0
iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;
invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z
move-result v3
if-eqz v3, :cond_14
iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;
invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z
move-result v3
if-nez v3, :cond_15
:cond_14
:goto_14
return v2
:cond_15
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v3
packed-switch v3, :pswitch_data_3c
:pswitch_1c
goto :goto_14
:pswitch_1d
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v4
invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I
move-result v0
invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V
if-eq v0, v5, :cond_30
:goto_2e
move v2, v1
goto :goto_14
:cond_30
move v1, v2
goto :goto_2e
:pswitch_32
iget v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
if-eq v3, v5, :cond_14
invoke-direct {p0, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V
move v2, v1
goto :goto_14
nop
:pswitch_data_3c
.packed-switch 0x7
:pswitch_1d
:pswitch_1c
:pswitch_1d
:pswitch_32
.end packed-switch
.end method
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 11
.parameter
.end parameter
const/4 v8, 0x0
const/4 v7, 0x1
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v0
if-eq v0, v7, :cond_10
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v5
sparse-switch v5, :sswitch_data_56
:cond_10
:goto_10
return v3
:sswitch_11
invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z
move-result v6
if-eqz v6, :cond_10
invoke-static {v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->keyToDirection(I)I
move-result v2
invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v6
add-int/lit8 v1, v6, 0x1
const/4 v4, 0x0
:goto_22
if-ge v4, v1, :cond_10
invoke-direct {p0, v2, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z
move-result v6
if-eqz v6, :cond_10
const/4 v3, 0x1
add-int/lit8 v4, v4, 0x1
goto :goto_22
:sswitch_2e
invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z
move-result v6
if-eqz v6, :cond_10
invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v6
if-nez v6, :cond_10
invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z
const/4 v3, 0x1
goto :goto_10
:sswitch_3f
invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z
move-result v6
if-eqz v6, :cond_4b
const/4 v6, 0x2
invoke-direct {p0, v6, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z
move-result v3
goto :goto_10
:cond_4b
invoke-static {p1, v7}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z
move-result v6
if-eqz v6, :cond_10
invoke-direct {p0, v7, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z
move-result v3
goto :goto_10
:sswitch_data_56
.sparse-switch
0x13 -> :sswitch_11
0x14 -> :sswitch_11
0x15 -> :sswitch_11
0x16 -> :sswitch_11
0x17 -> :sswitch_2e
0x3d -> :sswitch_3f
0x42 -> :sswitch_2e
.end sparse-switch
.end method
.method public final getAccessibilityFocusedVirtualViewId()I
.registers 2
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I
return v0
.end method
.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
invoke-direct {v0, p0}, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V
iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
:cond_b
iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
return-object v0
.end method
.method public getFocusedVirtualView()I
.registers 2
invoke-virtual {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I
move-result v0
return v0
.end method
.method public final getKeyboardFocusedVirtualViewId()I
.registers 2
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
return v0
.end method
.method protected abstract getVirtualViewAt(FF)I
.end method
.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
.end method
.method public final invalidateRoot()V
.registers 3
const/4 v0, -0x1
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V
return-void
.end method
.method public final invalidateVirtualView(I)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V
return-void
.end method
.method public final invalidateVirtualView(II)V
.registers 6
const/high16 v2, -0x8000
if-eq p1, v2, :cond_22
iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;
invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z
move-result v2
if-eqz v2, :cond_22
iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eqz v1, :cond_22
const/16 v2, 0x800
invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
move-result-object v0
invoke-static {v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V
iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
:cond_22
return-void
.end method
.method  obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 3
const/4 v0, -0x1
if-ne p1, v0, :cond_8
invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
:goto_7
return-object v0
:cond_8
invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
goto :goto_7
.end method
.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
const/high16 v1, -0x8000
if-eq v0, v1, :cond_b
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z
:cond_b
if-eqz p1, :cond_10
invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z
:cond_10
return-void
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
return-void
.end method
.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method
.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 2
return-void
.end method
.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
.registers 3
return-void
.end method
.method protected onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.registers 2
return-void
.end method
.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method
.method protected onVirtualViewKeyboardFocusChanged(IZ)V
.registers 3
return-void
.end method
.method  performAction(IILandroid/os/Bundle;)Z
.registers 5
packed-switch p1, :pswitch_data_e
invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z
move-result v0
:goto_7
return v0
:pswitch_8
invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z
move-result v0
goto :goto_7
nop
:pswitch_data_e
.packed-switch -0x1
:pswitch_8
.end packed-switch
.end method
.method public final requestKeyboardFocusForVirtualView(I)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->isFocused()Z
move-result v2
if-nez v2, :cond_13
iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z
move-result v2
if-nez v2, :cond_13
:cond_12
:goto_12
return v0
:cond_13
iget v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
if-eq v2, p1, :cond_12
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
const/high16 v2, -0x8000
if-eq v0, v2, :cond_22
iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z
:cond_22
iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I
invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V
const/16 v0, 0x8
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z
move v0, v1
goto :goto_12
.end method
.method public final sendEventForVirtualView(II)Z
.registers 7
const/4 v2, 0x0
const/high16 v3, -0x8000
if-eq p1, v3, :cond_d
iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;
invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z
move-result v3
if-nez v3, :cond_e
:goto_d
:cond_d
return v2
:cond_e
iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eqz v1, :cond_d
invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
move-result-object v0
iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;
invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
move-result v2
goto :goto_d
.end method