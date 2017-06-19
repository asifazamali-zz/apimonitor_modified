.class abstract Landroid/support/v7/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8


# instance fields
.field protected mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Landroid/support/v7/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected final mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Landroid/support/v7/widget/AbsActionBarView;)V

    iput-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_2a

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    :goto_29
    return-void

    :cond_2a
    iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_29
.end method

.method static synthetic access$001(Landroid/support/v7/widget/AbsActionBarView;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$101(Landroid/support/v7/widget/AbsActionBarView;I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method protected static next(IIZ)I
    .registers 4

    if-eqz p2, :cond_5

    sub-int v0, p0, p1

    :goto_4
    return v0

    :cond_5
    add-int v0, p0, p1

    goto :goto_4
.end method


# virtual methods
.method public animateToVisibility(I)V
    .registers 6

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, p1, v2, v3}, Landroid/support/v7/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public dismissPopupMenus()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_9
    return-void
.end method

.method public getAnimatedVisibility()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    :goto_8
    return v0

    :cond_9
    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    goto :goto_8
.end method

.method public getContentHeight()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isOverflowReserved()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .registers 6

    const/high16 v0, -0x8000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p4

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v4, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AbsActionBarView;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v1, :cond_26

    iget-object v1, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_26
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/16 v5, 0x9

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-ne v0, v5, :cond_c

    iput-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    :cond_c
    iget-boolean v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    if-nez v2, :cond_1a

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-ne v0, v5, :cond_1a

    if-nez v1, :cond_1a

    iput-boolean v4, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    :cond_1a
    const/16 v2, 0xa

    if-eq v0, v2, :cond_21

    const/4 v2, 0x3

    if-ne v0, v2, :cond_23

    :cond_21
    iput-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingHover:Z

    :cond_23
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_a

    iput-boolean v4, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_a
    iget-boolean v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    if-nez v2, :cond_18

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v0, :cond_18

    if-nez v1, :cond_18

    iput-boolean v3, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_18
    if-eq v0, v3, :cond_1d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1f

    :cond_1d
    iput-boolean v4, p0, Landroid/support/v7/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_1f
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .registers 11

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    add-int v1, p3, v3

    if-eqz p5, :cond_1b

    sub-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, v3, v1, p2, v4}, Landroid/view/View;->layout(IIII)V

    :goto_17
    if-eqz p5, :cond_1a

    neg-int v2, v2

    :cond_1a
    return v2

    :cond_1b
    add-int v3, p2, v2

    add-int v4, v1, v0

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_17
.end method

.method public postShowOverflowMenu()V
    .registers 2

    new-instance v0, Landroid/support/v7/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/AbsActionBarView$1;-><init>(Landroid/support/v7/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/AbsActionBarView;->mContentHeight:I

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->requestLayout()V

    return-void
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_12
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
    .registers 8

    const/4 v3, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_a
    if-nez p1, :cond_2d

    invoke-virtual {p0}, Landroid/support/v7/widget/AbsActionBarView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_15
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x3f80

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v2, v0, p1}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v1, v0

    :goto_2c
    return-object v1

    :cond_2d
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v2, p0, Landroid/support/v7/widget/AbsActionBarView;->mVisAnimListener:Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v2, v0, p1}, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-object v1, v0

    goto :goto_2c
.end method

.method public showOverflowMenu()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/support/v7/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
