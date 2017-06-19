.class public Landroid/support/v7/widget/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"
.implements Landroid/support/v7/widget/DecorContentParent;
.implements Landroid/support/v4/view/NestedScrollingParent;
.field static final ATTRS:[I = null
.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"
.field private final ACTION_BAR_ANIMATE_DELAY:I
.field private mActionBarHeight:I
.field  mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
.field private mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;
.field  mAnimatingForFling:Z
.field private final mBaseContentInsets:Landroid/graphics/Rect;
.field private final mBaseInnerInsets:Landroid/graphics/Rect;
.field private mContent:Landroid/support/v7/widget/ContentFrameLayout;
.field private final mContentInsets:Landroid/graphics/Rect;
.field  mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.field private mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
.field private mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;
.field private mHasNonEmbeddedTabs:Z
.field private mHideOnContentScroll:Z
.field private mHideOnContentScrollReference:I
.field private mIgnoreWindowContentOverlay:Z
.field private final mInnerInsets:Landroid/graphics/Rect;
.field private final mLastBaseContentInsets:Landroid/graphics/Rect;
.field private final mLastInnerInsets:Landroid/graphics/Rect;
.field private mLastSystemUiVisibility:I
.field private mOverlayMode:Z
.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;
.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;
.field final mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;
.field private mWindowVisibility:I
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I
aput v2, v0, v1
const/4 v1, 0x1
const v2, 0x1010059
aput v2, v0, v1
sput-object v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;
const/16 v0, 0x258
iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->ACTION_BAR_ANIMATE_DELAY:I
new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;
invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$1;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mTopAnimatorListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;
new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$2;
invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$2;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;
new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$3;
invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionBarOverlayLayout$3;-><init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;
invoke-direct {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V
new-instance v0, Landroid/support/v4/view/NestedScrollingParentHelper;
invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;
return-void
.end method
.method private addActionBarHideOffset()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
return-void
.end method
.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
.registers 11
const/4 v0, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
check-cast v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
if-eqz p3, :cond_14
iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I
iget v3, p2, Landroid/graphics/Rect;->left:I
if-eq v2, v3, :cond_14
const/4 v0, 0x1
iget v2, p2, Landroid/graphics/Rect;->left:I
iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I
:cond_14
if-eqz p4, :cond_21
iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I
iget v3, p2, Landroid/graphics/Rect;->top:I
if-eq v2, v3, :cond_21
const/4 v0, 0x1
iget v2, p2, Landroid/graphics/Rect;->top:I
iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I
:cond_21
if-eqz p6, :cond_2e
iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I
iget v3, p2, Landroid/graphics/Rect;->right:I
if-eq v2, v3, :cond_2e
const/4 v0, 0x1
iget v2, p2, Landroid/graphics/Rect;->right:I
iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I
:cond_2e
if-eqz p5, :cond_3b
iget v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I
iget v3, p2, Landroid/graphics/Rect;->bottom:I
if-eq v2, v3, :cond_3b
const/4 v0, 0x1
iget v2, p2, Landroid/graphics/Rect;->bottom:I
iput v2, v1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I
:cond_3b
return v0
.end method
.method private getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;
.registers 5
instance-of v0, p1, Landroid/support/v7/widget/DecorToolbar;
if-eqz v0, :cond_7
check-cast p1, Landroid/support/v7/widget/DecorToolbar;
:goto_6
return-object p1
:cond_7
instance-of v0, p1, Landroid/support/v7/widget/Toolbar;
if-eqz v0, :cond_12
check-cast p1, Landroid/support/v7/widget/Toolbar;
invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getWrapper()Landroid/support/v7/widget/DecorToolbar;
move-result-object p1
goto :goto_6
:cond_12
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can\'t make a decor toolbar out of "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private init(Landroid/content/Context;)V
.registers 7
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v1
sget-object v4, Landroid/support/v7/widget/ActionBarOverlayLayout;->ATTRS:[I
invoke-virtual {v1, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
iput v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;
if-nez v1, :cond_3a
move v1, v2
:goto_21
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setWillNotDraw(Z)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v1
iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
const/16 v4, 0x13
if-ge v1, v4, :cond_3c
:goto_31
iput-boolean v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z
invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;
return-void
:cond_3a
move v1, v3
goto :goto_21
:cond_3c
move v2, v3
goto :goto_31
.end method
.method private postAddActionBarHideOffset()V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;
const-wide/16 v2, 0x258
invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method private postRemoveActionBarHideOffset()V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;
const-wide/16 v2, 0x258
invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method private removeActionBarHideOffset()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
return-void
.end method
.method private shouldHideActionBarOnFling(FF)Z
.registers 13
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;
float-to-int v4, p2
const/high16 v7, -0x8000
const v8, 0x7fffffff
move v2, v1
move v3, v1
move v5, v1
move v6, v1
invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mFlingEstimator:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I
move-result v9
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I
move-result v0
if-le v9, v0, :cond_1f
const/4 v1, 0x1
:cond_1f
return v1
.end method
.method public canShowOverflowMenu()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->canShowOverflowMenu()Z
move-result v0
return v0
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
instance-of v0, p1, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
return v0
.end method
.method public dismissPopups()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->dismissPopupMenus()V
return-void
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 7
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V
iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_3b
iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z
if-nez v2, :cond_3b
iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I
move-result v2
if-nez v2, :cond_3c
iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContainer;->getBottom()I
move-result v2
int-to-float v2, v2
iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F
move-result v3
add-float/2addr v2, v3
const/high16 v3, 0x3f00
add-float/2addr v2, v3
float-to-int v0, v2
:goto_26
iget-object v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWidth()I
move-result v3
iget-object v4, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v4
add-int/2addr v4, v0
invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowContentOverlay:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_3b
return-void
:cond_3c
move v0, v1
goto :goto_26
.end method
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
.registers 12
const/4 v5, 0x0
const/4 v3, 0x1
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I
move-result v9
and-int/lit16 v0, v9, 0x100
if-eqz v0, :cond_3c
move v8, v3
:goto_e
move-object v2, p1
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
move-object v0, p0
move v4, v3
move v6, v3
invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
move-result v7
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;
invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;
invoke-static {p0, v0, v1}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_36
const/4 v7, 0x1
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastBaseContentInsets:Landroid/graphics/Rect;
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
:cond_36
if-eqz v7, :cond_3b
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->requestLayout()V
:cond_3b
return v3
:cond_3c
move v8, v5
goto :goto_e
.end method
.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
.registers 3
const/4 v1, -0x1
new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(II)V
return-object v0
.end method
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
new-instance v0, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method
.method public getActionBarHideOffset()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F
move-result v0
float-to-int v0, v0
neg-int v0, v0
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public getNestedScrollAxes()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;
invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I
move-result v0
return v0
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->getTitle()Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method  haltActionBarHideOffsetAnimations()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mRemoveActionBarHideOffset:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAddActionBarHideOffset:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V
:cond_13
return-void
.end method
.method public hasIcon()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hasIcon()Z
move-result v0
return v0
.end method
.method public hasLogo()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hasLogo()Z
move-result v0
return v0
.end method
.method public hideOverflowMenu()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->hideOverflowMenu()Z
move-result v0
return v0
.end method
.method public initFeature(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
sparse-switch p1, :sswitch_data_18
:goto_6
return-void
:sswitch_7
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->initProgress()V
goto :goto_6
:sswitch_d
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->initIndeterminateProgress()V
goto :goto_6
:sswitch_13
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setOverlayMode(Z)V
goto :goto_6
:sswitch_data_18
.sparse-switch
0x2 -> :sswitch_7
0x5 -> :sswitch_d
0x6d -> :sswitch_13
.end sparse-switch
.end method
.method public isHideOnContentScrollEnabled()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z
return v0
.end method
.method public isInOverlayMode()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z
return v0
.end method
.method public isOverflowMenuShowPending()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowPending()Z
move-result v0
return v0
.end method
.method public isOverflowMenuShowing()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z
move-result v0
return v0
.end method
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->init(Landroid/content/Context;)V
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 1
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 20
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildCount()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I
move-result v8
sub-int v12, p4, p2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I
move-result v13
sub-int v9, v12, v13
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I
move-result v10
sub-int v12, p5, p3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I
move-result v13
sub-int v7, v12, v13
const/4 v5, 0x0
:goto_1d
if-ge v5, v3, :cond_4b
invoke-virtual {p0, v5}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v12
const/16 v13, 0x8
if-eq v12, v13, :cond_48
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v6
check-cast v6, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I
move-result v11
invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I
move-result v4
iget v12, v6, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I
add-int v1, v8, v12
iget v12, v6, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I
add-int v2, v10, v12
add-int v12, v1, v11
add-int v13, v2, v4
invoke-virtual {v0, v1, v2, v12, v13}, Landroid/view/View;->layout(IIII)V
:cond_48
add-int/lit8 v5, v5, 0x1
goto :goto_1d
:cond_4b
return-void
.end method
.method protected onMeasure(II)V
.registers 20
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
const/4 v11, 0x0
const/4 v12, 0x0
const/4 v9, 0x0
const/4 v15, 0x0
const/4 v8, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
const/4 v4, 0x0
const/4 v6, 0x0
move-object/from16 v1, p0
move/from16 v3, p1
move/from16 v5, p2
invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v10
check-cast v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I
move-result v1
iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I
add-int/2addr v1, v2
iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I
add-int/2addr v1, v2
invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I
move-result v12
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I
move-result v1
iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I
add-int/2addr v1, v2
iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I
add-int/2addr v1, v2
invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I
move-result v11
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v1
invoke-static {v9, v1}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v9
invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I
move-result v16
move/from16 v0, v16
and-int/lit16 v1, v0, 0x100
if-eqz v1, :cond_15d
const/4 v13, 0x1
:goto_5c
if-eqz v13, :cond_160
move-object/from16 v0, p0
iget v15, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I
move-object/from16 v0, p0
iget-boolean v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z
if-eqz v1, :cond_77
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getTabContainer()Landroid/view/View;
move-result-object v14
if-eqz v14, :cond_77
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarHeight:I
add-int/2addr v15, v1
:cond_77
:goto_77
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseContentInsets:Landroid/graphics/Rect;
invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mBaseInnerInsets:Landroid/graphics/Rect;
invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
move-object/from16 v0, p0
iget-boolean v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z
if-nez v1, :cond_176
if-nez v13, :cond_176
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->top:I
add-int/2addr v2, v15
iput v2, v1, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->bottom:I
add-int/2addr v2, v8
iput v2, v1, Landroid/graphics/Rect;->bottom:I
:goto_a7
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContentInsets:Landroid/graphics/Rect;
const/4 v4, 0x1
const/4 v5, 0x1
const/4 v6, 0x1
const/4 v7, 0x1
move-object/from16 v1, p0
invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/ActionBarOverlayLayout;->applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;
invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_dc
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastInnerInsets:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;
invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;
invoke-virtual {v1, v2}, Landroid/support/v7/widget/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V
:cond_dc
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;
const/4 v4, 0x0
const/4 v6, 0x0
move-object/from16 v1, p0
move/from16 v3, p1
move/from16 v5, p2
invoke-virtual/range {v1 .. v6}, Landroid/support/v7/widget/ActionBarOverlayLayout;->measureChildWithMargins(Landroid/view/View;IIII)V
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v10
check-cast v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredWidth()I
move-result v1
iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->leftMargin:I
add-int/2addr v1, v2
iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->rightMargin:I
add-int/2addr v1, v2
invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I
move-result v12
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMeasuredHeight()I
move-result v1
iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->topMargin:I
add-int/2addr v1, v2
iget v2, v10, Landroid/support/v7/widget/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I
add-int/2addr v1, v2
invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I
move-result v11
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;
invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v1
invoke-static {v9, v1}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v9
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingLeft()I
move-result v1
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingRight()I
move-result v2
add-int/2addr v1, v2
add-int/2addr v12, v1
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingTop()I
move-result v1
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getPaddingBottom()I
move-result v2
add-int/2addr v1, v2
add-int/2addr v11, v1
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumHeight()I
move-result v1
invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I
move-result v11
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getSuggestedMinimumWidth()I
move-result v1
invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I
move-result v12
move/from16 v0, p1
invoke-static {v12, v0, v9}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v1
shl-int/lit8 v2, v9, 0x10
move/from16 v0, p2
invoke-static {v11, v0, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v2
move-object/from16 v0, p0
invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setMeasuredDimension(II)V
return-void
:cond_15d
const/4 v13, 0x0
goto/16 :goto_5c
:cond_160
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I
move-result v1
const/16 v2, 0x8
if-eq v1, v2, :cond_77
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I
move-result v15
goto/16 :goto_77
:cond_176
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->top:I
add-int/2addr v2, v15
iput v2, v1, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mInnerInsets:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->bottom:I
add-int/2addr v2, v8
iput v2, v1, Landroid/graphics/Rect;->bottom:I
goto/16 :goto_a7
.end method
.method public onNestedFling(Landroid/view/View;FFZ)Z
.registers 7
const/4 v0, 0x1
iget-boolean v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z
if-eqz v1, :cond_7
if-nez p4, :cond_9
:cond_7
const/4 v0, 0x0
:goto_8
return v0
:cond_9
invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/ActionBarOverlayLayout;->shouldHideActionBarOnFling(FF)Z
move-result v1
if-eqz v1, :cond_15
invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->addActionBarHideOffset()V
:goto_12
iput-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z
goto :goto_8
:cond_15
invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->removeActionBarHideOffset()V
goto :goto_12
.end method
.method public onNestedPreFling(Landroid/view/View;FF)Z
.registers 5
const/4 v0, 0x0
return v0
.end method
.method public onNestedPreScroll(Landroid/view/View;II[I)V
.registers 5
return-void
.end method
.method public onNestedScroll(Landroid/view/View;IIII)V
.registers 7
iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I
add-int/2addr v0, p3
iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I
iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V
return-void
.end method
.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
.registers 5
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getActionBarHideOffset()I
move-result v0
iput v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
invoke-interface {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V
:cond_17
return-void
.end method
.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
.registers 5
and-int/lit8 v0, p3, 0x2
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getVisibility()I
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return v0
:cond_e
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z
goto :goto_d
.end method
.method public onStopNestedScroll(Landroid/view/View;)V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z
if-eqz v0, :cond_15
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z
if-nez v0, :cond_15
iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScrollReference:I
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I
move-result v1
if-gt v0, v1, :cond_1f
invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postRemoveActionBarHideOffset()V
:cond_15
:goto_15
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
if-eqz v0, :cond_1e
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
invoke-interface {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V
:cond_1e
return-void
:cond_1f
invoke-direct {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->postAddActionBarHideOffset()V
goto :goto_15
.end method
.method public onWindowSystemUiVisibilityChanged(I)V
.registers 9
const/4 v3, 0x1
const/4 v4, 0x0
sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v6, 0x10
if-lt v5, v6, :cond_b
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V
:cond_b
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I
xor-int v1, v5, p1
iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I
and-int/lit8 v5, p1, 0x4
if-nez v5, :cond_3e
move v0, v3
:goto_19
and-int/lit16 v5, p1, 0x100
if-eqz v5, :cond_40
move v2, v3
:goto_1e
iget-object v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
if-eqz v5, :cond_32
iget-object v5, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
if-nez v2, :cond_42
:goto_26
invoke-interface {v5, v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V
if-nez v0, :cond_2d
if-nez v2, :cond_44
:cond_2d
iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
invoke-interface {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V
:goto_32
:cond_32
and-int/lit16 v3, v1, 0x100
if-eqz v3, :cond_3d
iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
if-eqz v3, :cond_3d
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V
:cond_3d
return-void
:cond_3e
move v0, v4
goto :goto_19
:cond_40
move v2, v4
goto :goto_1e
:cond_42
move v3, v4
goto :goto_26
:cond_44
iget-object v3, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
invoke-interface {v3}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V
goto :goto_32
.end method
.method protected onWindowVisibilityChanged(I)V
.registers 3
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V
iput p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
invoke-interface {v0, p1}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V
:cond_e
return-void
.end method
.method  pullChildren()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;
if-nez v0, :cond_24
sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ContentFrameLayout;
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mContent:Landroid/support/v7/widget/ContentFrameLayout;
sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_container:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ActionBarContainer;
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getDecorToolbar(Landroid/view/View;)Landroid/support/v7/widget/DecorToolbar;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
:cond_24
return-void
.end method
.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V
return-void
.end method
.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V
return-void
.end method
.method public setActionBarHideOffset(I)V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContainer;->getHeight()I
move-result v0
const/4 v1, 0x0
invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result p1
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarTop:Landroid/support/v7/widget/ActionBarContainer;
neg-int v2, p1
int-to-float v2, v2
invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V
return-void
.end method
.method public setActionBarVisibilityCallback(Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
.registers 5
iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getWindowToken()Landroid/os/IBinder;
move-result-object v1
if-eqz v1, :cond_1b
iget-object v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mActionBarVisibilityCallback:Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;
iget v2, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mWindowVisibility:I
invoke-interface {v1, v2}, Landroid/support/v7/widget/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V
iget v1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I
if-eqz v1, :cond_1b
iget v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mLastSystemUiVisibility:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->onWindowSystemUiVisibilityChanged(I)V
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V
:cond_1b
return-void
.end method
.method public setHasNonEmbeddedTabs(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHasNonEmbeddedTabs:Z
return-void
.end method
.method public setHideOnContentScrollEnabled(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z
if-eq p1, v0, :cond_f
iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mHideOnContentScroll:Z
if-nez p1, :cond_f
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->haltActionBarHideOffsetAnimations()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->setActionBarHideOffset(I)V
:cond_f
return-void
.end method
.method public setIcon(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setIcon(I)V
return-void
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setLogo(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setLogo(I)V
return-void
.end method
.method public setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0, p1, p2}, Landroid/support/v7/widget/DecorToolbar;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
return-void
.end method
.method public setMenuPrepared()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->setMenuPrepared()V
return-void
.end method
.method public setOverlayMode(Z)V
.registers 4
iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mOverlayMode:Z
if-eqz p1, :cond_16
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
const/16 v1, 0x13
if-ge v0, v1, :cond_16
const/4 v0, 0x1
:goto_13
iput-boolean v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mIgnoreWindowContentOverlay:Z
return-void
:cond_16
const/4 v0, 0x0
goto :goto_13
.end method
.method public setShowingForActionMode(Z)V
.registers 2
return-void
.end method
.method public setUiOptions(I)V
.registers 2
return-void
.end method
.method public setWindowCallback(Landroid/view/Window$Callback;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V
return-void
.end method
.method public setWindowTitle(Ljava/lang/CharSequence;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public shouldDelayChildPressedState()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public showOverflowMenu()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->pullChildren()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->showOverflowMenu()Z
move-result v0
return v0
.end method