.class Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;
.super Ljava/lang/Object;
.source "ViewCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewCompat$ViewCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseViewCompatImpl"
.end annotation


# static fields
.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private mTempDetachBound:Z

.field mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/support/v4/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mViewPropertyAnimatorCompatMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private bindTempDetach()V
    .registers 5

    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "dispatchStartTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const-class v1, Landroid/view/View;

    const-string v2, "dispatchFinishTemporaryDetach"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_1a} :catch_1e

    :goto_1a
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    return-void

    :catch_1e
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.method private canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollOffset()I

    move-result v0

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollRange()I

    move-result v4

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeHorizontalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    if-nez v1, :cond_14

    move v2, v3

    :cond_13
    :goto_13
    return v2

    :cond_14
    if-gez p2, :cond_1a

    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method

.method private canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z
    .registers 9

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollOffset()I

    move-result v0

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollRange()I

    move-result v4

    invoke-interface {p1}, Landroid/support/v4/view/ScrollingView;->computeVerticalScrollExtent()I

    move-result v5

    sub-int v1, v4, v5

    if-nez v1, :cond_14

    move v2, v3

    :cond_13
    :goto_13
    return v2

    :cond_14
    if-gez p2, :cond_1a

    if-gtz v0, :cond_13

    move v2, v3

    goto :goto_13

    :cond_1a
    add-int/lit8 v4, v1, -0x1

    if-lt v0, v4, :cond_13

    move v2, v3

    goto :goto_13
.end method


# virtual methods
.method public animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 3

    new-instance v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public canScrollHorizontally(Landroid/view/View;I)Z
    .registers 4

    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollHorizontally(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .registers 4

    instance-of v0, p1, Landroid/support/v4/view/ScrollingView;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/support/v4/view/ScrollingView;

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->canScrollingViewScrollVertically(Landroid/support/v4/view/ScrollingView;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public combineMeasuredStates(II)I
    .registers 4

    or-int v0, p1, p2

    return v0
.end method

.method public dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    return-object p2
.end method

.method public dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 5

    iget-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v1, :cond_7

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    :cond_7
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1d

    :try_start_b
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    goto :goto_13
.end method

.method public dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 6

    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 5

    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 7

    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 13

    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/NestedScrollingChild;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 5

    iget-boolean v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mTempDetachBound:Z

    if-nez v1, :cond_7

    invoke-direct {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->bindTempDetach()V

    :cond_7
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1d

    :try_start_b
    iget-object v1, p0, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->mDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_13

    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->onStartTemporaryDetach()V

    goto :goto_13
.end method

.method public getAccessibilityLiveRegion(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAlpha(Landroid/view/View;)F
    .registers 3

    const/high16 v0, 0x3f80

    return v0
.end method

.method public getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method public getElevation(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getFitsSystemWindows(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method getFrameTime()J
    .registers 3

    const-wide/16 v0, 0xa

    return-wide v0
.end method

.method public getImportantForAccessibility(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getLabelFor(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getLayerType(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutDirection(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getMeasuredState(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight(Landroid/view/View;)I
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumHeight(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getMinimumWidth(Landroid/view/View;)I
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->getMinimumWidth(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPaddingEnd(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getPaddingStart(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public getPivotX(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getPivotY(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getRotation(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getRotationX(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getRotationY(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleX(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getScaleY(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getScrollIndicators(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTranslationX(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationY(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getTranslationZ(Landroid/view/View;)F
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public getX(Landroid/view/View;)F
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getY(Landroid/view/View;)F
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getZ(Landroid/view/View;)F
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getTranslationZ(Landroid/view/View;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getElevation(Landroid/view/View;)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public hasAccessibilityDelegate(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public hasOnClickListeners(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public hasTransientState(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public isInLayout(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isLaidOut(Landroid/view/View;)Z
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/ViewCompatBase;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isPaddingRelative(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public offsetLeftAndRight(Landroid/view/View;I)V
    .registers 3

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->offsetLeftAndRight(Landroid/view/View;I)V

    return-void
.end method

.method public offsetTopAndBottom(Landroid/view/View;I)V
    .registers 3

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->offsetTopAndBottom(Landroid/view/View;I)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 3

    return-object p2
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 5

    const/4 v0, 0x0

    return v0
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 6

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->invalidate(IIII)V

    return-void
.end method

.method public postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 8

    invoke-virtual {p0}, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->getFrameTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public requestApplyInsets(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public resolveSizeAndState(III)I
    .registers 5

    invoke-static {p1, p2}, Landroid/view/View;->resolveSize(II)I

    move-result v0

    return v0
.end method

.method public setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V
    .registers 3

    return-void
.end method

.method public setAccessibilityLiveRegion(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setActivated(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setAlpha(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3

    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompatBase;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 10

    const/4 v6, 0x1

    sget-object v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1c

    :try_start_5
    const-class v1, Landroid/view/ViewGroup;

    const-string v2, "setChildrenDrawingOrderEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_17} :catch_2c

    :goto_17
    sget-object v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_1c
    :try_start_1c
    sget-object v1, Landroid/support/v4/view/ViewCompat$BaseViewCompatImpl;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_2b} :catch_35
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2b} :catch_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_2b} :catch_47

    :goto_2b
    return-void

    :catch_2c
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    :catch_35
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    :catch_3e
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    :catch_47
    move-exception v0

    const-string v1, "ViewCompat"

    const-string v2, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b
.end method

.method public setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3

    return-void
.end method

.method public setElevation(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setHasTransientState(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setImportantForAccessibility(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setLabelFor(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 3

    return-void
.end method

.method public setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 4

    return-void
.end method

.method public setLayoutDirection(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 4

    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
    .registers 3

    return-void
.end method

.method public setPaddingRelative(Landroid/view/View;IIII)V
    .registers 6

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setPivotX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setPivotY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setPointerIcon(Landroid/view/View;Landroid/support/v4/view/PointerIconCompat;)V
    .registers 3

    return-void
.end method

.method public setRotation(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setRotationX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setRotationY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 3

    return-void
.end method

.method public setScaleX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setScaleY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;I)V
    .registers 3

    return-void
.end method

.method public setScrollIndicators(Landroid/view/View;II)V
    .registers 4

    return-void
.end method

.method public setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public setTranslationX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setTranslationY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setTranslationZ(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setX(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setY(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public setZ(Landroid/view/View;F)V
    .registers 3

    return-void
.end method

.method public startNestedScroll(Landroid/view/View;I)Z
    .registers 4

    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_b

    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1, p2}, Landroid/support/v4/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public stopNestedScroll(Landroid/view/View;)V
    .registers 3

    instance-of v0, p1, Landroid/support/v4/view/NestedScrollingChild;

    if-eqz v0, :cond_9

    check-cast p1, Landroid/support/v4/view/NestedScrollingChild;

    invoke-interface {p1}, Landroid/support/v4/view/NestedScrollingChild;->stopNestedScroll()V

    :cond_9
    return-void
.end method
