.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"
.implements Landroid/support/v4/widget/DrawerLayoutImpl;
.field private static final ALLOW_EDGE_LOCK:Z = false
.field static final CAN_HIDE_DESCENDANTS:Z = false
.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true
.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000
.field private static final DRAWER_ELEVATION:I = 0xa
.field static final IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl; = null
.field static final LAYOUT_ATTRS:[I = null
.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1
.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2
.field public static final LOCK_MODE_UNDEFINED:I = 0x3
.field public static final LOCK_MODE_UNLOCKED:I = 0x0
.field private static final MIN_DRAWER_MARGIN:I = 0x40
.field private static final MIN_FLING_VELOCITY:I = 0x190
.field private static final PEEK_DELAY:I = 0xa0
.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z = false
.field public static final STATE_DRAGGING:I = 0x1
.field public static final STATE_IDLE:I = 0x0
.field public static final STATE_SETTLING:I = 0x2
.field private static final TAG:Ljava/lang/String; = "DrawerLayout"
.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;
.field private mChildrenCanceledTouch:Z
.field private mDisallowInterceptRequested:Z
.field private mDrawStatusBarBackground:Z
.field private mDrawerElevation:F
.field private mDrawerState:I
.field private mFirstLayout:Z
.field private mInLayout:Z
.field private mInitialMotionX:F
.field private mInitialMotionY:F
.field private mLastInsets:Ljava/lang/Object;
.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
.field private mListeners:Ljava/util/List;
.field private mLockModeEnd:I
.field private mLockModeLeft:I
.field private mLockModeRight:I
.field private mLockModeStart:I
.field private mMinDrawerMargin:I
.field private final mNonDrawerViews:Ljava/util/ArrayList;
.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
.field private mScrimColor:I
.field private mScrimOpacity:F
.field private mScrimPaint:Landroid/graphics/Paint;
.field private mShadowEnd:Landroid/graphics/drawable/Drawable;
.field private mShadowLeft:Landroid/graphics/drawable/Drawable;
.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;
.field private mShadowRight:Landroid/graphics/drawable/Drawable;
.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;
.field private mShadowStart:Landroid/graphics/drawable/Drawable;
.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;
.field private mTitleLeft:Ljava/lang/CharSequence;
.field private mTitleRight:Ljava/lang/CharSequence;
.method static constructor <clinit>()V
.registers 6
const/16 v5, 0x15
const/4 v2, 0x1
const/4 v3, 0x0
new-array v1, v2, [I
const v4, 0x10100b3
aput v4, v1, v3
sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0x13
if-lt v1, v4, :cond_28
move v1, v2
:goto_14
sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v1, v5, :cond_2a
:goto_1a
sput-boolean v2, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, v5, :cond_2c
new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;
invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V
sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;
:goto_27
return-void
:cond_28
move v1, v3
goto :goto_14
:cond_2a
move v2, v3
goto :goto_1a
:cond_2c
new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;
invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V
sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;
goto :goto_27
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 11
const/high16 v6, 0x3f80
const/4 v3, 0x0
const/4 v5, 0x1
const/4 v4, 0x3
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v2, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;
invoke-direct {v2, p0}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V
iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;
const/high16 v2, -0x6700
iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I
new-instance v2, Landroid/graphics/Paint;
invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V
iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;
iput-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z
iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I
iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I
iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I
iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I
iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;
iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;
iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;
iput-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;
const/high16 v2, 0x4
invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v0, v2, Landroid/util/DisplayMetrics;->density:F
const/high16 v2, 0x4280
mul-float/2addr v2, v0
const/high16 v3, 0x3f00
add-float/2addr v2, v3
float-to-int v2, v2
iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I
const/high16 v2, 0x43c8
mul-float v1, v2, v0
new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
invoke-direct {v2, p0, v4}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V
iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
new-instance v2, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
const/4 v3, 0x5
invoke-direct {v2, p0, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V
iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
invoke-static {p0, v6, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
move-result-object v2
iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v2, v5}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
invoke-static {p0, v6, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
move-result-object v2
iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
const/4 v3, 0x2
invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v2, v1}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v2, v3}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V
invoke-virtual {p0, v5}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V
invoke-static {p0, v5}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V
new-instance v2, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;
invoke-direct {v2, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V
invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
const/4 v2, 0x0
invoke-static {p0, v2}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z
move-result v2
if-eqz v2, :cond_af
sget-object v2, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;
invoke-interface {v2, p0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V
sget-object v2, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;
invoke-interface {v2, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v2
iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
:cond_af
const/high16 v2, 0x4120
mul-float/2addr v2, v0
iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;
return-void
.end method
.method static gravityToString(I)Ljava/lang/String;
.registers 3
and-int/lit8 v0, p0, 0x3
const/4 v1, 0x3
if-ne v0, v1, :cond_8
const-string v0, "LEFT"
:goto_7
return-object v0
:cond_8
and-int/lit8 v0, p0, 0x5
const/4 v1, 0x5
if-ne v0, v1, :cond_10
const-string v0, "RIGHT"
goto :goto_7
:cond_10
invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method private static hasOpaqueBackground(Landroid/view/View;)Z
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v2
const/4 v3, -0x1
if-ne v2, v3, :cond_f
const/4 v1, 0x1
:cond_f
return v1
.end method
.method private hasPeekingDrawer()Z
.registers 5
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v0
const/4 v1, 0x0
:goto_5
if-ge v1, v0, :cond_1a
invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget-boolean v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z
if-eqz v3, :cond_17
const/4 v3, 0x1
:goto_16
return v3
:cond_17
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1a
const/4 v3, 0x0
goto :goto_16
.end method
.method private hasVisibleDrawer()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method static includeChildForAccessibility(Landroid/view/View;)Z
.registers 3
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I
move-result v0
const/4 v1, 0x4
if-eq v0, v1, :cond_10
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I
move-result v0
const/4 v1, 0x2
if-eq v0, v1, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
.registers 4
if-eqz p1, :cond_8
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-nez v0, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return v0
:cond_a
invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
const/4 v0, 0x1
goto :goto_9
.end method
.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
.registers 3
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v0
if-nez v0, :cond_12
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_1e
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;
invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;
:goto_11
return-object v1
:cond_12
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_1e
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;
invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_1e
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;
goto :goto_11
.end method
.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
.registers 3
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v0
if-nez v0, :cond_12
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_1e
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;
invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;
:goto_11
return-object v1
:cond_12
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_1e
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;
invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_1e
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;
goto :goto_11
.end method
.method private resolveShadowDrawables()V
.registers 2
sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;
invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;
goto :goto_4
.end method
.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
.registers 7
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v1
const/4 v2, 0x0
:goto_5
if-ge v2, v1, :cond_23
invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-nez p2, :cond_13
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_17
:cond_13
if-eqz p2, :cond_1e
if-ne v0, p1, :cond_1e
:cond_17
const/4 v3, 0x1
invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V
:goto_1b
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_1e
const/4 v3, 0x4
invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V
goto :goto_1b
:cond_23
return-void
.end method
.method public addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
.registers 3
.parameter
.end parameter
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
if-nez v0, :cond_e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
:cond_e
iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_2
.end method
.method public addFocusables(Ljava/util/ArrayList;II)V
.registers 11
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I
move-result v5
const/high16 v6, 0x6
if-ne v5, v6, :cond_9
:goto_8
return-void
:cond_9
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v1
const/4 v3, 0x0
const/4 v2, 0x0
:goto_f
if-ge v2, v1, :cond_2e
invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v5
if-eqz v5, :cond_28
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z
move-result v5
if-eqz v5, :cond_25
const/4 v3, 0x1
invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V
:goto_25
:cond_25
add-int/lit8 v2, v2, 0x1
goto :goto_f
:cond_28
iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_25
:cond_2e
if-nez v3, :cond_4d
iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v4
const/4 v2, 0x0
:goto_37
if-ge v2, v4, :cond_4d
iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v5
if-nez v5, :cond_4a
invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V
:cond_4a
add-int/lit8 v2, v2, 0x1
goto :goto_37
:cond_4d
iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
goto :goto_8
.end method
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.registers 6
invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;
move-result-object v0
if-nez v0, :cond_f
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v1
if-eqz v1, :cond_1d
:cond_f
const/4 v1, 0x4
invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V
:goto_13
sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z
if-nez v1, :cond_1c
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;
invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
:cond_1c
return-void
:cond_1d
const/4 v1, 0x1
invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V
goto :goto_13
.end method
.method  cancelChildViewTouch()V
.registers 12
const/4 v5, 0x0
iget-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z
if-nez v2, :cond_28
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
const/4 v4, 0x3
const/4 v7, 0x0
move-wide v2, v0
move v6, v5
invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
move-result-object v8
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v9
const/4 v10, 0x0
:goto_16
if-ge v10, v9, :cond_22
invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, v8}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
add-int/lit8 v10, v10, 0x1
goto :goto_16
:cond_22
invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V
const/4 v2, 0x1
iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z
:cond_28
return-void
.end method
.method  checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
.registers 5
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I
move-result v0
and-int v1, v0, p2
if-ne v1, p2, :cond_a
const/4 v1, 0x1
:goto_9
return v1
:cond_a
const/4 v1, 0x0
goto :goto_9
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
if-eqz v0, :cond_c
invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public closeDrawer(I)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(IZ)V
return-void
.end method
.method public closeDrawer(IZ)V
.registers 7
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_23
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "No drawer view found with gravity "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_23
invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V
return-void
.end method
.method public closeDrawer(Landroid/view/View;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;Z)V
return-void
.end method
.method public closeDrawer(Landroid/view/View;Z)V
.registers 7
const/4 v3, 0x0
const/4 v2, 0x0
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v1
if-nez v1, :cond_27
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "View "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is not a sliding drawer"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_27
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z
if-eqz v1, :cond_39
iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
iput v3, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
:goto_35
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
return-void
:cond_39
if-eqz p2, :cond_65
iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
or-int/lit8 v1, v1, 0x4
iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
const/4 v1, 0x3
invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
move-result v1
if-eqz v1, :cond_57
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v2
neg-int v2, v2
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v3
invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z
goto :goto_35
:cond_57
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v2
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v3
invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z
goto :goto_35
:cond_65
invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V
iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
invoke-virtual {p0, v1, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V
const/4 v1, 0x4
invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_35
.end method
.method public closeDrawers()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V
return-void
.end method
.method  closeDrawers(Z)V
.registers 11
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v1
const/4 v3, 0x0
:goto_6
if-ge v3, v1, :cond_4c
invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v6
if-eqz v6, :cond_1e
if-eqz p1, :cond_21
iget-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z
if-nez v6, :cond_21
:goto_1e
:cond_1e
add-int/lit8 v3, v3, 0x1
goto :goto_6
:cond_21
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v2
const/4 v6, 0x3
invoke-virtual {p0, v0, v6}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
move-result v6
if-eqz v6, :cond_3c
iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
neg-int v7, v2
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v8
invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z
move-result v6
or-int/2addr v5, v6
:goto_38
const/4 v6, 0x0
iput-boolean v6, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z
goto :goto_1e
:cond_3c
iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v7
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v8
invoke-virtual {v6, v0, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z
move-result v6
or-int/2addr v5, v6
goto :goto_38
:cond_4c
iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V
iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
invoke-virtual {v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V
if-eqz v5, :cond_5b
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
:cond_5b
return-void
.end method
.method public computeScroll()V
.registers 8
const/4 v6, 0x1
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v0
const/4 v3, 0x0
const/4 v1, 0x0
:goto_7
if-ge v1, v0, :cond_1c
invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v2, v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F
move-result v3
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_1c
iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F
iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v4, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z
move-result v4
iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z
move-result v5
or-int/2addr v4, v5
if-eqz v4, :cond_30
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V
:cond_30
return-void
.end method
.method  dispatchOnDrawerClosed(Landroid/view/View;)V
.registers 9
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
and-int/lit8 v4, v4, 0x1
const/4 v5, 0x1
if-ne v4, v5, :cond_40
iput v6, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
if-eqz v4, :cond_2c
iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
:goto_1c
if-ltz v0, :cond_2c
iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/widget/DrawerLayout$DrawerListener;
invoke-interface {v4, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V
add-int/lit8 v0, v0, -0x1
goto :goto_1c
:cond_2c
invoke-direct {p0, p1, v6}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z
move-result v4
if-eqz v4, :cond_40
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_40
const/16 v4, 0x20
invoke-virtual {v3, v4}, Landroid/view/View;->sendAccessibilityEvent(I)V
:cond_40
return-void
.end method
.method  dispatchOnDrawerOpened(Landroid/view/View;)V
.registers 7
const/4 v4, 0x1
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v3, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
and-int/lit8 v3, v3, 0x1
if-nez v3, :cond_39
iput v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
if-eqz v3, :cond_2b
iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
:goto_1b
if-ltz v0, :cond_2b
iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/widget/DrawerLayout$DrawerListener;
invoke-interface {v3, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V
add-int/lit8 v0, v0, -0x1
goto :goto_1b
:cond_2b
invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z
move-result v3
if-eqz v3, :cond_39
const/16 v3, 0x20
invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V
:cond_39
return-void
.end method
.method  dispatchOnDrawerSlide(Landroid/view/View;F)V
.registers 6
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
if-eqz v2, :cond_1c
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
:goto_c
if-ltz v0, :cond_1c
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/widget/DrawerLayout$DrawerListener;
invoke-interface {v2, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V
add-int/lit8 v0, v0, -0x1
goto :goto_c
:cond_1c
return-void
.end method
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
.registers 34
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I
move-result v18
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z
move-result v17
const/4 v13, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v14
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
move-result v21
if-eqz v17, :cond_7b
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v10
const/16 v19, 0x0
:goto_1d
move/from16 v0, v19
if-ge v0, v10, :cond_71
move-object/from16 v0, p0
move/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v25
move-object/from16 v0, v25
move-object/from16 v1, p2
if-eq v0, v1, :cond_4d
invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I
move-result v2
if-nez v2, :cond_4d
invoke-static/range {v25 .. v25}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z
move-result v2
if-eqz v2, :cond_4d
move-object/from16 v0, p0
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v2
if-eqz v2, :cond_4d
invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I
move-result v2
move/from16 v0, v18
if-ge v2, v0, :cond_50
:goto_4d
:cond_4d
add-int/lit8 v19, v19, 0x1
goto :goto_1d
:cond_50
const/4 v2, 0x3
move-object/from16 v0, p0
move-object/from16 v1, v25
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
move-result v2
if-eqz v2, :cond_66
invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRight()I
move-result v27
move/from16 v0, v27
if-le v0, v13, :cond_4d
move/from16 v13, v27
goto :goto_4d
:cond_66
invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I
move-result v26
move/from16 v0, v26
if-ge v0, v14, :cond_4d
move/from16 v14, v26
goto :goto_4d
:cond_71
const/4 v2, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I
move-result v3
move-object/from16 v0, p1
invoke-virtual {v0, v13, v2, v14, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z
:cond_7b
invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
move-result v22
move-object/from16 v0, p1
move/from16 v1, v21
invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F
const/4 v3, 0x0
cmpl-float v2, v2, v3
if-lez v2, :cond_c8
if-eqz v17, :cond_c8
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I
const/high16 v3, -0x100
and-int/2addr v2, v3
ushr-int/lit8 v9, v2, 0x18
int-to-float v2, v9
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F
mul-float/2addr v2, v3
float-to-int v0, v2
move/from16 v20, v0
shl-int/lit8 v2, v20, 0x18
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I
const v4, 0xffffff
and-int/2addr v3, v4
or-int v15, v2, v3
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;
invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setColor(I)V
int-to-float v3, v13
const/4 v4, 0x0
int-to-float v5, v14
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I
move-result v2
int-to-float v6, v2
move-object/from16 v0, p0
iget-object v7, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;
move-object/from16 v2, p1
invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
:cond_c7
:goto_c7
return v22
:cond_c8
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_123
const/4 v2, 0x3
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
move-result v2
if-eqz v2, :cond_123
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v23
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I
move-result v12
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I
move-result v16
const/4 v2, 0x0
int-to-float v3, v12
move/from16 v0, v16
int-to-float v4, v0
div-float/2addr v3, v4
const/high16 v4, 0x3f80
invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F
move-result v3
invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F
move-result v8
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I
move-result v3
add-int v4, v12, v23
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I
move-result v5
invoke-virtual {v2, v12, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;
const/high16 v3, 0x437f
mul-float/2addr v3, v8
float-to-int v3, v3
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto :goto_c7
:cond_123
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_c7
const/4 v2, 0x5
move-object/from16 v0, p0
move-object/from16 v1, p2
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
move-result v2
if-eqz v2, :cond_c7
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v23
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I
move-result v11
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v2
sub-int v24, v2, v11
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I
move-result v16
const/4 v2, 0x0
move/from16 v0, v24
int-to-float v3, v0
move/from16 v0, v16
int-to-float v4, v0
div-float/2addr v3, v4
const/high16 v4, 0x3f80
invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F
move-result v3
invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F
move-result v8
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;
sub-int v3, v11, v23
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I
move-result v4
invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I
move-result v5
invoke-virtual {v2, v3, v4, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;
const/high16 v3, 0x437f
mul-float/2addr v3, v8
float-to-int v3, v3
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto/16 :goto_c7
.end method
.method  findDrawerWithGravity(I)Landroid/view/View;
.registers 8
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v5
invoke-static {p1, v5}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v5
and-int/lit8 v0, v5, 0x7
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v3
const/4 v4, 0x0
:goto_f
if-ge v4, v3, :cond_21
invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I
move-result v2
and-int/lit8 v5, v2, 0x7
if-ne v5, v0, :cond_1e
:goto_1d
return-object v1
:cond_1e
add-int/lit8 v4, v4, 0x1
goto :goto_f
:cond_21
const/4 v1, 0x0
goto :goto_1d
.end method
.method  findOpenDrawer()Landroid/view/View;
.registers 7
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v1
const/4 v3, 0x0
:goto_5
if-ge v3, v1, :cond_1c
invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v4, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
and-int/lit8 v4, v4, 0x1
const/4 v5, 0x1
if-ne v4, v5, :cond_19
:goto_18
return-object v0
:cond_19
add-int/lit8 v3, v3, 0x1
goto :goto_5
:cond_1c
const/4 v0, 0x0
goto :goto_18
.end method
.method  findVisibleDrawer()Landroid/view/View;
.registers 5
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v1
const/4 v2, 0x0
:goto_5
if-ge v2, v1, :cond_1b
invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_18
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z
move-result v3
if-eqz v3, :cond_18
:goto_17
return-object v0
:cond_18
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_1b
const/4 v0, 0x0
goto :goto_17
.end method
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 3
const/4 v1, -0x1
new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
if-eqz v0, :cond_c
new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
check-cast p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V
:goto_b
return-object v0
:cond_c
instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;
if-eqz v0, :cond_18
new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;
invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
goto :goto_b
:cond_18
new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_b
.end method
.method public getDrawerElevation()F
.registers 2
sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z
if-eqz v0, :cond_7
iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public getDrawerLockMode(I)I
.registers 9
const/4 v6, 0x3
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v1
sparse-switch p1, :sswitch_data_52
:cond_8
const/4 v2, 0x0
:goto_9
return v2
:sswitch_a
iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I
if-eq v5, v6, :cond_11
iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I
goto :goto_9
:cond_11
if-nez v1, :cond_18
iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I
:goto_15
if-eq v2, v6, :cond_8
goto :goto_9
:cond_18
iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I
goto :goto_15
:sswitch_1b
iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I
if-eq v5, v6, :cond_22
iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I
goto :goto_9
:cond_22
if-nez v1, :cond_2a
iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I
:goto_26
if-eq v3, v6, :cond_8
move v2, v3
goto :goto_9
:cond_2a
iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I
goto :goto_26
:sswitch_2d
iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I
if-eq v5, v6, :cond_34
iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I
goto :goto_9
:cond_34
if-nez v1, :cond_3c
iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I
:goto_38
if-eq v4, v6, :cond_8
move v2, v4
goto :goto_9
:cond_3c
iget v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I
goto :goto_38
:sswitch_3f
iget v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I
if-eq v5, v6, :cond_46
iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I
goto :goto_9
:cond_46
if-nez v1, :cond_4e
iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I
:goto_4a
if-eq v0, v6, :cond_8
move v2, v0
goto :goto_9
:cond_4e
iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I
goto :goto_4a
nop
:sswitch_data_52
.sparse-switch
0x3 -> :sswitch_a
0x5 -> :sswitch_1b
0x800003 -> :sswitch_2d
0x800005 -> :sswitch_3f
.end sparse-switch
.end method
.method public getDrawerLockMode(Landroid/view/View;)I
.registers 6
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v1
if-nez v1, :cond_25
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "View "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is not a drawer"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_25
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I
move-result v1
return v1
.end method
.method public getDrawerTitle(I)Ljava/lang/CharSequence;
.registers 4
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v1
invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_e
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;
:goto_d
return-object v1
:cond_e
const/4 v1, 0x5
if-ne v0, v1, :cond_14
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;
goto :goto_d
:cond_14
const/4 v1, 0x0
goto :goto_d
.end method
.method  getDrawerViewAbsoluteGravity(Landroid/view/View;)I
.registers 4
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v1
invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v1
return v1
.end method
.method  getDrawerViewOffset(Landroid/view/View;)F
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
return v0
.end method
.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method  isContentView(Landroid/view/View;)Z
.registers 3
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public isDrawerOpen(I)Z
.registers 4
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z
move-result v1
:goto_a
return v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method
.method public isDrawerOpen(Landroid/view/View;)Z
.registers 6
const/4 v1, 0x1
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v2
if-nez v2, :cond_26
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "View "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is not a drawer"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_26
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
and-int/lit8 v2, v2, 0x1
if-ne v2, v1, :cond_33
:goto_32
return v1
:cond_33
const/4 v1, 0x0
goto :goto_32
.end method
.method  isDrawerView(Landroid/view/View;)Z
.registers 6
const/4 v3, 0x1
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v1, v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v2
invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v0
and-int/lit8 v2, v0, 0x3
if-eqz v2, :cond_17
move v2, v3
:goto_16
return v2
:cond_17
and-int/lit8 v2, v0, 0x5
if-eqz v2, :cond_1d
move v2, v3
goto :goto_16
:cond_1d
const/4 v2, 0x0
goto :goto_16
.end method
.method public isDrawerVisible(I)Z
.registers 4
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z
move-result v1
:goto_a
return v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method
.method public isDrawerVisible(Landroid/view/View;)Z
.registers 5
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v0
if-nez v0, :cond_25
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "View "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not a drawer"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
const/4 v1, 0x0
cmpl-float v0, v0, v1
if-lez v0, :cond_34
const/4 v0, 0x1
:goto_33
return v0
:cond_34
const/4 v0, 0x0
goto :goto_33
.end method
.method  moveDrawerToOffset(Landroid/view/View;F)V
.registers 9
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F
move-result v2
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v4
int-to-float v5, v4
mul-float/2addr v5, v2
float-to-int v3, v5
int-to-float v5, v4
mul-float/2addr v5, p2
float-to-int v1, v5
sub-int v0, v1, v3
const/4 v5, 0x3
invoke-virtual {p0, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
move-result v5
if-eqz v5, :cond_1e
:goto_17
invoke-virtual {p1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V
invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V
return-void
:cond_1e
neg-int v0, v0
goto :goto_17
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z
return-void
.end method
.method public onDraw(Landroid/graphics/Canvas;)V
.registers 6
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V
iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z
if-eqz v1, :cond_24
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_24
sget-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;
iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;
invoke-interface {v1, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I
move-result v0
if-lez v0, :cond_24
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v2
invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_24
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 13
const/4 v7, 0x1
const/4 v6, 0x0
invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I
move-result v0
iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v8, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v8
iget-object v9, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v9
or-int v2, v8, v9
const/4 v3, 0x0
packed-switch v0, :pswitch_data_6e
:cond_18
:goto_18
if-nez v2, :cond_26
if-nez v3, :cond_26
invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z
move-result v8
if-nez v8, :cond_26
iget-boolean v8, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z
if-eqz v8, :cond_27
:cond_26
move v6, v7
:cond_27
return v6
:pswitch_28
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v5
iput v4, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F
iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F
iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F
const/4 v9, 0x0
cmpl-float v8, v8, v9
if-lez v8, :cond_4c
iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
float-to-int v9, v4
float-to-int v10, v5
invoke-virtual {v8, v9, v10}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_4c
invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z
move-result v8
if-eqz v8, :cond_4c
const/4 v3, 0x1
:cond_4c
iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z
iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z
goto :goto_18
:pswitch_51
iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
const/4 v9, 0x3
invoke-virtual {v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z
move-result v8
if-eqz v8, :cond_18
iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V
iget-object v8, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;
invoke-virtual {v8}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V
goto :goto_18
:pswitch_65
invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V
iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z
iput-boolean v6, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z
goto :goto_18
nop
:pswitch_data_6e
.packed-switch 0x0
:pswitch_28
:pswitch_65
:pswitch_51
:pswitch_65
.end packed-switch
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_e
invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V
const/4 v0, 0x1
:goto_d
return v0
:cond_e
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_d
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 5
const/4 v1, 0x4
if-ne p1, v1, :cond_18
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_12
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I
move-result v1
if-nez v1, :cond_12
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V
:cond_12
if-eqz v0, :cond_16
const/4 v1, 0x1
:goto_15
return v1
:cond_16
const/4 v1, 0x0
goto :goto_15
:cond_18
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v1
goto :goto_15
.end method
.method protected onLayout(ZIIII)V
.registers 29
const/16 v18, 0x1
move/from16 v0, v18
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z
sub-int v17, p4, p2
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v6
const/4 v12, 0x0
:goto_f
if-ge v12, v6, :cond_149
move-object/from16 v0, p0
invoke-virtual {v0, v12}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getVisibility()I
move-result v18
const/16 v19, 0x8
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_26
:goto_23
:cond_23
add-int/lit8 v12, v12, 0x1
goto :goto_f
:cond_26
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v13
check-cast v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z
move-result v18
if-eqz v18, :cond_5c
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I
move/from16 v18, v0
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I
move/from16 v19, v0
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I
move/from16 v20, v0
invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I
move-result v21
add-int v20, v20, v21
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I
move/from16 v21, v0
invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I
move-result v22
add-int v21, v21, v22
move/from16 v0, v18
move/from16 v1, v19
move/from16 v2, v20
move/from16 v3, v21
invoke-virtual {v5, v0, v1, v2, v3}, Landroid/view/View;->layout(IIII)V
goto :goto_23
:cond_5c
invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I
move-result v10
invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I
move-result v7
const/16 v18, 0x3
move-object/from16 v0, p0
move/from16 v1, v18
invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
move-result v18
if-eqz v18, :cond_d5
neg-int v0, v10
move/from16 v18, v0
int-to-float v0, v10
move/from16 v19, v0
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
move/from16 v20, v0
mul-float v19, v19, v20
move/from16 v0, v19
float-to-int v0, v0
move/from16 v19, v0
add-int v8, v18, v19
add-int v18, v10, v8
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
int-to-float v0, v10
move/from16 v19, v0
div-float v14, v18, v19
:goto_8f
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
move/from16 v18, v0
cmpl-float v18, v14, v18
if-eqz v18, :cond_f2
const/4 v4, 0x1
:goto_98
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
move/from16 v18, v0
and-int/lit8 v16, v18, 0x70
sparse-switch v16, :sswitch_data_15a
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I
move/from16 v18, v0
add-int v19, v8, v10
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I
move/from16 v20, v0
add-int v20, v20, v7
move/from16 v0, v18
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V
:goto_b6
if-eqz v4, :cond_bd
move-object/from16 v0, p0
invoke-virtual {v0, v5, v14}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V
:cond_bd
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
move/from16 v18, v0
const/16 v19, 0x0
cmpl-float v18, v18, v19
if-lez v18, :cond_147
const/4 v15, 0x0
:goto_c8
invoke-virtual {v5}, Landroid/view/View;->getVisibility()I
move-result v18
move/from16 v0, v18
if-eq v0, v15, :cond_23
invoke-virtual {v5, v15}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_23
:cond_d5
int-to-float v0, v10
move/from16 v18, v0
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
move/from16 v19, v0
mul-float v18, v18, v19
move/from16 v0, v18
float-to-int v0, v0
move/from16 v18, v0
sub-int v8, v17, v18
sub-int v18, v17, v8
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
int-to-float v0, v10
move/from16 v19, v0
div-float v14, v18, v19
goto :goto_8f
:cond_f2
const/4 v4, 0x0
goto :goto_98
:sswitch_f4
sub-int v11, p5, p3
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I
move/from16 v18, v0
sub-int v18, v11, v18
invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I
move-result v19
sub-int v18, v18, v19
add-int v19, v8, v10
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I
move/from16 v20, v0
sub-int v20, v11, v20
move/from16 v0, v18
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v5, v8, v0, v1, v2}, Landroid/view/View;->layout(IIII)V
goto :goto_b6
:sswitch_114
sub-int v11, p5, p3
sub-int v18, v11, v7
div-int/lit8 v9, v18, 0x2
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I
move/from16 v18, v0
move/from16 v0, v18
if-ge v9, v0, :cond_130
iget v9, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I
:goto_124
:cond_124
add-int v18, v8, v10
add-int v19, v9, v7
move/from16 v0, v18
move/from16 v1, v19
invoke-virtual {v5, v8, v9, v0, v1}, Landroid/view/View;->layout(IIII)V
goto :goto_b6
:cond_130
add-int v18, v9, v7
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I
move/from16 v19, v0
sub-int v19, v11, v19
move/from16 v0, v18
move/from16 v1, v19
if-le v0, v1, :cond_124
iget v0, v13, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I
move/from16 v18, v0
sub-int v18, v11, v18
sub-int v9, v18, v7
goto :goto_124
:cond_147
const/4 v15, 0x4
goto :goto_c8
:cond_149
const/16 v18, 0x0
move/from16 v0, v18
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z
const/16 v18, 0x0
move/from16 v0, v18
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z
return-void
:sswitch_data_15a
.sparse-switch
0x10 -> :sswitch_114
0x50 -> :sswitch_f4
.end sparse-switch
.end method
.method protected onMeasure(II)V
.registers 28
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v20
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v14
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v21
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v15
const/high16 v22, 0x4000
move/from16 v0, v20
move/from16 v1, v22
if-ne v0, v1, :cond_1e
const/high16 v22, 0x4000
move/from16 v0, v22
if-eq v14, v0, :cond_36
:cond_1e
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z
move-result v22
if-eqz v22, :cond_81
const/high16 v22, -0x8000
move/from16 v0, v20
move/from16 v1, v22
if-ne v0, v1, :cond_73
const/high16 v20, 0x4000
:goto_2e
:cond_2e
const/high16 v22, -0x8000
move/from16 v0, v22
if-ne v14, v0, :cond_7a
const/high16 v14, 0x4000
:goto_36
:cond_36
move-object/from16 v0, p0
move/from16 v1, v21
invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;
move-object/from16 v22, v0
if-eqz v22, :cond_89
invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z
move-result v22
if-eqz v22, :cond_89
const/4 v3, 0x1
:goto_4c
invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v18
const/4 v12, 0x0
const/4 v13, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v6
const/16 v16, 0x0
:goto_58
move/from16 v0, v16
if-ge v0, v6, :cond_1f8
move-object/from16 v0, p0
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5}, Landroid/view/View;->getVisibility()I
move-result v22
const/16 v23, 0x8
move/from16 v0, v22
move/from16 v1, v23
if-ne v0, v1, :cond_8b
:goto_70
add-int/lit8 v16, v16, 0x1
goto :goto_58
:cond_73
if-nez v20, :cond_2e
const/high16 v20, 0x4000
const/16 v21, 0x12c
goto :goto_2e
:cond_7a
if-nez v14, :cond_36
const/high16 v14, 0x4000
const/16 v15, 0x12c
goto :goto_36
:cond_81
new-instance v22, Ljava/lang/IllegalArgumentException;
const-string v23, "DrawerLayout must be measured with MeasureSpec.EXACTLY."
invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v22
:cond_89
const/4 v3, 0x0
goto :goto_4c
:cond_8b
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v19
check-cast v19, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
if-eqz v3, :cond_b6
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
move/from16 v22, v0
move/from16 v0, v22
move/from16 v1, v18
invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v4
invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z
move-result v22
if-eqz v22, :cond_ee
sget-object v22, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;
move-object/from16 v23, v0
move-object/from16 v0, v22
move-object/from16 v1, v23
invoke-interface {v0, v5, v1, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
:cond_b6
:goto_b6
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z
move-result v22
if-eqz v22, :cond_100
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I
move/from16 v22, v0
sub-int v22, v21, v22
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I
move/from16 v23, v0
sub-int v22, v22, v23
const/high16 v23, 0x4000
invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v9
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I
move/from16 v22, v0
sub-int v22, v15, v22
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I
move/from16 v23, v0
sub-int v22, v22, v23
const/high16 v23, 0x4000
invoke-static/range {v22 .. v23}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-virtual {v5, v9, v8}, Landroid/view/View;->measure(II)V
goto :goto_70
:cond_ee
sget-object v22, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;
move-object/from16 v23, v0
move-object/from16 v0, v22
move-object/from16 v1, v19
move-object/from16 v2, v23
invoke-interface {v0, v1, v2, v4}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
goto :goto_b6
:cond_100
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v22
if-eqz v22, :cond_1c3
sget-boolean v22, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z
if-eqz v22, :cond_125
invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F
move-result v22
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F
move/from16 v23, v0
cmpl-float v22, v22, v23
if-eqz v22, :cond_125
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F
move/from16 v22, v0
move/from16 v0, v22
invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V
:cond_125
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I
move-result v22
and-int/lit8 v7, v22, 0x7
const/16 v22, 0x3
move/from16 v0, v22
if-ne v7, v0, :cond_172
const/16 v17, 0x1
:goto_135
if-eqz v17, :cond_139
if-nez v12, :cond_13d
:cond_139
if-nez v17, :cond_175
if-eqz v13, :cond_175
:cond_13d
new-instance v22, Ljava/lang/IllegalStateException;
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "Child drawer has absolute gravity "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, " but this "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "DrawerLayout"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, " already has a "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "drawer view along that edge"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v22
:cond_172
const/16 v17, 0x0
goto :goto_135
:cond_175
if-eqz v17, :cond_1c1
const/4 v12, 0x1
:goto_178
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I
move/from16 v22, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I
move/from16 v23, v0
add-int v22, v22, v23
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I
move/from16 v23, v0
add-int v22, v22, v23
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I
move/from16 v23, v0
move/from16 v0, p1
move/from16 v1, v22
move/from16 v2, v23
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I
move-result v11
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I
move/from16 v22, v0
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I
move/from16 v23, v0
add-int v22, v22, v23
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I
move/from16 v23, v0
move/from16 v0, p2
move/from16 v1, v22
move/from16 v2, v23
invoke-static {v0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I
move-result v10
invoke-virtual {v5, v11, v10}, Landroid/view/View;->measure(II)V
goto/16 :goto_70
:cond_1c1
const/4 v13, 0x1
goto :goto_178
:cond_1c3
new-instance v22, Ljava/lang/IllegalStateException;
new-instance v23, Ljava/lang/StringBuilder;
invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V
const-string v24, "Child "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, " at index "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
move-object/from16 v0, v23
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, " does not have a valid layout_gravity - must be Gravity.LEFT, "
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
const-string v24, "Gravity.RIGHT or Gravity.NO_GRAVITY"
invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v23
invoke-direct/range {v22 .. v23}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v22
:cond_1f8
return-void
.end method
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 7
const/4 v4, 0x3
instance-of v2, p1, Landroid/support/v4/widget/DrawerLayout$SavedState;
if-nez v2, :cond_9
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:goto_8
:cond_8
return-void
:cond_9
move-object v0, p1
check-cast v0, Landroid/support/v4/widget/DrawerLayout$SavedState;
invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;
move-result-object v2
invoke-super {p0, v2}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I
if-eqz v2, :cond_22
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I
invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_22
invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V
:cond_22
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I
if-eq v2, v4, :cond_2b
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I
invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V
:cond_2b
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I
if-eq v2, v4, :cond_35
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I
const/4 v3, 0x5
invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V
:cond_35
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I
if-eq v2, v4, :cond_41
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I
const v3, 0x800003
invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V
:cond_41
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I
if-eq v2, v4, :cond_8
iget v2, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I
const v3, 0x800005
invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V
goto :goto_8
.end method
.method public onRtlPropertiesChanged(I)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V
return-void
.end method
.method protected onSaveInstanceState()Landroid/os/Parcelable;
.registers 13
const/4 v9, 0x0
const/4 v8, 0x1
invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v7
new-instance v6, Landroid/support/v4/widget/DrawerLayout$SavedState;
invoke-direct {v6, v7}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v1
const/4 v2, 0x0
:goto_10
if-ge v2, v1, :cond_2f
invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v5
check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v10, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
if-ne v10, v8, :cond_40
move v4, v8
:goto_21
iget v10, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
const/4 v11, 0x2
if-ne v10, v11, :cond_42
move v3, v8
:goto_27
if-nez v4, :cond_2b
if-eqz v3, :cond_44
:cond_2b
iget v8, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I
:cond_2f
iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I
iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I
iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I
iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I
iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I
iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I
iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I
iput v8, v6, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I
return-object v6
:cond_40
move v4, v9
goto :goto_21
:cond_42
move v3, v9
goto :goto_27
:cond_44
add-int/lit8 v2, v2, 0x1
goto :goto_10
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 15
iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v10, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v7, 0x1
and-int/lit16 v10, v0, 0xff
packed-switch v10, :pswitch_data_7e
:pswitch_14
:goto_14
return v7
:pswitch_15
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v8
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v9
iput v8, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F
iput v9, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F
const/4 v10, 0x0
iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z
const/4 v10, 0x0
iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z
goto :goto_14
:pswitch_28
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v8
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v9
const/4 v4, 0x1
iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
float-to-int v11, v8
float-to-int v12, v9
invoke-virtual {v10, v11, v12}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;
move-result-object v6
if-eqz v6, :cond_69
invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z
move-result v10
if-eqz v10, :cond_69
iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F
sub-float v1, v8, v10
iget v10, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F
sub-float v2, v9, v10
iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I
move-result v5
mul-float v10, v1, v1
mul-float v11, v2, v2
add-float/2addr v10, v11
mul-int v11, v5, v5
int-to-float v11, v11
cmpg-float v10, v10, v11
if-gez v10, :cond_69
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_69
invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I
move-result v10
const/4 v11, 0x2
if-ne v10, v11, :cond_70
const/4 v4, 0x1
:cond_69
:goto_69
invoke-virtual {p0, v4}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V
const/4 v10, 0x0
iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z
goto :goto_14
:cond_70
const/4 v4, 0x0
goto :goto_69
:pswitch_72
const/4 v10, 0x1
invoke-virtual {p0, v10}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V
const/4 v10, 0x0
iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z
const/4 v10, 0x0
iput-boolean v10, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z
goto :goto_14
nop
:pswitch_data_7e
.packed-switch 0x0
:pswitch_15
:pswitch_28
:pswitch_14
:pswitch_72
.end packed-switch
.end method
.method public openDrawer(I)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(IZ)V
return-void
.end method
.method public openDrawer(IZ)V
.registers 7
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_23
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "No drawer view found with gravity "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_23
invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V
return-void
.end method
.method public openDrawer(Landroid/view/View;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;Z)V
return-void
.end method
.method public openDrawer(Landroid/view/View;Z)V
.registers 8
const/4 v4, 0x1
const/high16 v2, 0x3f80
const/4 v3, 0x0
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v1
if-nez v1, :cond_29
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "View "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is not a sliding drawer"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_29
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z
if-eqz v1, :cond_3e
iput v2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
iput v4, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
invoke-direct {p0, p1, v4}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
:goto_3a
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
return-void
:cond_3e
if-eqz p2, :cond_6a
iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
or-int/lit8 v1, v1, 0x2
iput v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
const/4 v1, 0x3
invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
move-result v1
if-eqz v1, :cond_57
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v2
invoke-virtual {v1, p1, v3, v2}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z
goto :goto_3a
:cond_57
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I
move-result v2
invoke-virtual {p1}, Landroid/view/View;->getWidth()I
move-result v3
sub-int/2addr v2, v3
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v3
invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z
goto :goto_3a
:cond_6a
invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->moveDrawerToOffset(Landroid/view/View;F)V
iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
invoke-virtual {p0, v1, v3, p1}, Landroid/support/v4/widget/DrawerLayout;->updateDrawerState(IILandroid/view/View;)V
invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_3a
.end method
.method public removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
.registers 3
.parameter
.end parameter
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
if-eqz v0, :cond_2
iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
goto :goto_2
.end method
.method public requestDisallowInterceptTouchEvent(Z)V
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V
iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z
if-eqz p1, :cond_b
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V
:cond_b
return-void
.end method
.method public requestLayout()V
.registers 2
iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z
if-nez v0, :cond_7
invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V
:cond_7
return-void
.end method
.method public setChildInsets(Ljava/lang/Object;Z)V
.registers 4
iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;
iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z
if-nez p2, :cond_14
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_14
const/4 v0, 0x1
:goto_d
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V
return-void
:cond_14
const/4 v0, 0x0
goto :goto_d
.end method
.method public setDrawerElevation(F)V
.registers 5
iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F
const/4 v1, 0x0
:goto_3
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I
move-result v2
if-ge v1, v2, :cond_1b
invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v2
if-eqz v2, :cond_18
iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F
invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V
:cond_18
add-int/lit8 v1, v1, 0x1
goto :goto_3
:cond_1b
return-void
.end method
.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
:cond_9
if-eqz p1, :cond_e
invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
:cond_e
iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
return-void
.end method
.method public setDrawerLockMode(I)V
.registers 3
const/4 v0, 0x3
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V
const/4 v0, 0x5
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V
return-void
.end method
.method public setDrawerLockMode(II)V
.registers 8
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v4
invoke-static {p2, v4}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v0
sparse-switch p2, :sswitch_data_3c
:goto_b
if-eqz p1, :cond_15
const/4 v4, 0x3
if-ne v0, v4, :cond_25
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
:goto_12
invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V
:cond_15
packed-switch p1, :pswitch_data_4e
:cond_18
:goto_18
return-void
:sswitch_19
iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I
goto :goto_b
:sswitch_1c
iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I
goto :goto_b
:sswitch_1f
iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I
goto :goto_b
:sswitch_22
iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I
goto :goto_b
:cond_25
iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
goto :goto_12
:pswitch_28
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;
move-result-object v3
if-eqz v3, :cond_18
invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V
goto :goto_18
:pswitch_32
invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_18
invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V
goto :goto_18
:pswitch_data_4e
.packed-switch 0x1
:pswitch_32
:pswitch_28
.end packed-switch
:sswitch_data_3c
.sparse-switch
0x3 -> :sswitch_19
0x5 -> :sswitch_1c
0x800003 -> :sswitch_1f
0x800005 -> :sswitch_22
.end sparse-switch
.end method
.method public setDrawerLockMode(ILandroid/view/View;)V
.registers 7
invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z
move-result v1
if-nez v1, :cond_2b
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "View "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is not a "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "drawer with appropriate layout_gravity"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_2b
invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v0, v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I
invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V
return-void
.end method
.method public setDrawerShadow(II)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
return-void
.end method
.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
.registers 6
const v2, 0x800005
const v1, 0x800003
sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z
if-eqz v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
and-int v0, p2, v1
if-ne v0, v1, :cond_18
iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;
:goto_11
invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
goto :goto_a
:cond_18
and-int v0, p2, v2
if-ne v0, v2, :cond_1f
iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_1f
and-int/lit8 v0, p2, 0x3
const/4 v1, 0x3
if-ne v0, v1, :cond_27
iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;
goto :goto_11
:cond_27
and-int/lit8 v0, p2, 0x5
const/4 v1, 0x5
if-ne v0, v1, :cond_a
iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;
goto :goto_11
.end method
.method public setDrawerTitle(ILjava/lang/CharSequence;)V
.registers 5
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v1
invoke-static {p1, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v0
const/4 v1, 0x3
if-ne v0, v1, :cond_e
iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;
:goto_d
:cond_d
return-void
:cond_e
const/4 v1, 0x5
if-ne v0, v1, :cond_d
iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;
goto :goto_d
.end method
.method  setDrawerViewOffset(Landroid/view/View;F)V
.registers 5
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v1, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
cmpl-float v1, p2, v1
if-nez v1, :cond_d
:goto_c
return-void
:cond_d
iput p2, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V
goto :goto_c
.end method
.method public setScrimColor(I)V
.registers 2
.parameter
.end parameter
iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
return-void
.end method
.method public setStatusBarBackground(I)V
.registers 3
if-eqz p1, :cond_10
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_a
iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
return-void
:cond_10
const/4 v0, 0x0
goto :goto_a
.end method
.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
return-void
.end method
.method public setStatusBarBackgroundColor(I)V
.registers 3
.parameter
.end parameter
new-instance v0, Landroid/graphics/drawable/ColorDrawable;
invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V
return-void
.end method
.method  updateDrawerState(IILandroid/view/View;)V
.registers 13
const/4 v8, 0x2
const/4 v7, 0x1
iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I
move-result v1
iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I
move-result v4
if-eq v1, v7, :cond_12
if-ne v4, v7, :cond_49
:cond_12
const/4 v5, 0x1
:goto_13
if-eqz p3, :cond_27
if-nez p2, :cond_27
invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;
iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
const/4 v7, 0x0
cmpl-float v6, v6, v7
if-nez v6, :cond_51
invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V
:goto_27
:cond_27
iget v6, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I
if-eq v5, v6, :cond_5d
iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I
iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
if-eqz v6, :cond_5d
iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_39
if-ltz v0, :cond_5d
iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;
invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/support/v4/widget/DrawerLayout$DrawerListener;
invoke-interface {v6, v5}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V
add-int/lit8 v0, v0, -0x1
goto :goto_39
:cond_49
if-eq v1, v8, :cond_4d
if-ne v4, v8, :cond_4f
:cond_4d
const/4 v5, 0x2
goto :goto_13
:cond_4f
const/4 v5, 0x0
goto :goto_13
:cond_51
iget v6, v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
const/high16 v7, 0x3f80
cmpl-float v6, v6, v7
if-nez v6, :cond_27
invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V
goto :goto_27
:cond_5d
return-void
.end method