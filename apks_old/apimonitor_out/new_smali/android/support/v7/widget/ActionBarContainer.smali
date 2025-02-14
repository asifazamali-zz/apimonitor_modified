.class public Landroid/support/v7/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "ActionBarContainer.java"
.field private mActionBarView:Landroid/view/View;
.field  mBackground:Landroid/graphics/drawable/Drawable;
.field private mContextView:Landroid/view/View;
.field private mHeight:I
.field  mIsSplit:Z
.field  mIsStacked:Z
.field private mIsTransitioning:Z
.field  mSplitBackground:Landroid/graphics/drawable/Drawable;
.field  mStackedBackground:Landroid/graphics/drawable/Drawable;
.field private mTabContainer:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 9
const/4 v3, 0x0
const/4 v2, 0x1
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0x15
if-lt v4, v5, :cond_53
new-instance v1, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ActionBarBackgroundDrawableV21;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V
:goto_10
invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
sget-object v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I
invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
sget v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar_background:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
sget v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundStacked:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
sget v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I
const/4 v5, -0x1
invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v4
iput v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getId()I
move-result v4
sget v5, Landroid/support/v7/appcompat/R$id;->split_action_bar:I
if-ne v4, v5, :cond_44
iput-boolean v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z
sget v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar_backgroundSplit:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
:cond_44
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iget-boolean v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z
if-eqz v4, :cond_5b
iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-nez v4, :cond_59
:goto_4f
:cond_4f
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V
return-void
:cond_53
new-instance v1, Landroid/support/v7/widget/ActionBarBackgroundDrawable;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ActionBarBackgroundDrawable;-><init>(Landroid/support/v7/widget/ActionBarContainer;)V
goto :goto_10
:cond_59
move v2, v3
goto :goto_4f
:cond_5b
iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-nez v4, :cond_63
iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v4, :cond_4f
:cond_63
move v2, v3
goto :goto_4f
.end method
.method private getMeasuredHeightWithMargins(Landroid/view/View;)I
.registers 5
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v1
iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
add-int/2addr v1, v2
iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
add-int/2addr v1, v2
return v1
.end method
.method private isCollapsed(Landroid/view/View;)Z
.registers 4
if-eqz p1, :cond_10
invoke-virtual {p1}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v1, 0x8
if-eq v0, v1, :cond_10
invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
if-nez v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method protected drawableStateChanged()V
.registers 3
invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_18
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_2d
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_2d
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_42
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_42
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_42
return-void
.end method
.method public getTabContainer()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
return-object v0
.end method
.method public jumpDrawablesToCurrentState()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_24
invoke-super {p0}, Landroid/widget/FrameLayout;->jumpDrawablesToCurrentState()V
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
:cond_12
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
:cond_1b
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_24
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
:cond_24
return-void
.end method
.method public onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V
sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
sget v0, Landroid/support/v7/appcompat/R$id;->action_context_bar:I
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;
return-void
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsTransitioning:Z
if-nez v0, :cond_a
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public onLayout(ZIIII)V
.registers 17
invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
if-eqz v4, :cond_53
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v6
const/16 v7, 0x8
if-eq v6, v7, :cond_53
const/4 v1, 0x1
:goto_10
if-eqz v4, :cond_34
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v6
const/16 v7, 0x8
if-eq v6, v7, :cond_34
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I
move-result v0
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/widget/FrameLayout$LayoutParams;
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v5
sub-int v6, v0, v5
iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
sub-int/2addr v6, v7
iget v7, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
sub-int v7, v0, v7
invoke-virtual {v4, p2, v6, p4, v7}, Landroid/view/View;->layout(IIII)V
:cond_34
const/4 v3, 0x0
iget-boolean v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z
if-eqz v6, :cond_55
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-eqz v6, :cond_4d
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
const/4 v7, 0x0
const/4 v8, 0x0
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I
move-result v9
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I
move-result v10
invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
const/4 v3, 0x1
:goto_4d
:cond_4d
if-eqz v3, :cond_52
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V
:cond_52
return-void
:cond_53
const/4 v1, 0x0
goto :goto_10
:cond_55
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-eqz v6, :cond_7f
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getVisibility()I
move-result v6
if-nez v6, :cond_9e
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
iget-object v7, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-virtual {v7}, Landroid/view/View;->getLeft()I
move-result v7
iget-object v8, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getTop()I
move-result v8
iget-object v9, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->getRight()I
move-result v9
iget-object v10, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-virtual {v10}, Landroid/view/View;->getBottom()I
move-result v10
invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:goto_7e
const/4 v3, 0x1
:cond_7f
iput-boolean v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z
if-eqz v1, :cond_4d
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v6, :cond_4d
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/view/View;->getLeft()I
move-result v7
invoke-virtual {v4}, Landroid/view/View;->getTop()I
move-result v8
invoke-virtual {v4}, Landroid/view/View;->getRight()I
move-result v9
invoke-virtual {v4}, Landroid/view/View;->getBottom()I
move-result v10
invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
const/4 v3, 0x1
goto :goto_4d
:cond_9e
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;
if-eqz v6, :cond_c8
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getVisibility()I
move-result v6
if-nez v6, :cond_c8
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
iget-object v7, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;
invoke-virtual {v7}, Landroid/view/View;->getLeft()I
move-result v7
iget-object v8, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getTop()I
move-result v8
iget-object v9, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->getRight()I
move-result v9
iget-object v10, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;
invoke-virtual {v10}, Landroid/view/View;->getBottom()I
move-result v10
invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
goto :goto_7e
:cond_c8
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
const/4 v10, 0x0
invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
goto :goto_7e
.end method
.method public onMeasure(II)V
.registers 9
const/high16 v5, -0x8000
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
if-nez v3, :cond_1e
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v3
if-ne v3, v5, :cond_1e
iget v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I
if-ltz v3, :cond_1e
iget v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mHeight:I
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v4
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v3
invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p2
:cond_1e
invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
if-nez v3, :cond_26
:goto_25
:cond_25
return-void
:cond_26
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
if-eqz v3, :cond_25
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v4, 0x8
if-eq v3, v4, :cond_25
const/high16 v3, 0x4000
if-eq v1, v3, :cond_25
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-direct {p0, v3}, Landroid/support/v7/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z
move-result v3
if-nez v3, :cond_63
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-direct {p0, v3}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I
move-result v2
:goto_4a
if-ne v1, v5, :cond_74
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
:goto_50
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I
move-result v3
iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
invoke-direct {p0, v4}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I
move-result v4
add-int/2addr v4, v2
invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I
move-result v4
invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/ActionBarContainer;->setMeasuredDimension(II)V
goto :goto_25
:cond_63
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;
invoke-direct {p0, v3}, Landroid/support/v7/widget/ActionBarContainer;->isCollapsed(Landroid/view/View;)Z
move-result v3
if-nez v3, :cond_72
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mContextView:Landroid/view/View;
invoke-direct {p0, v3}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeightWithMargins(Landroid/view/View;)I
move-result v2
goto :goto_4a
:cond_72
const/4 v2, 0x0
goto :goto_4a
:cond_74
const v0, 0x7fffffff
goto :goto_50
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
const/4 v0, 0x1
return v0
.end method
.method public setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_11
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_11
iput-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_39
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
if-eqz v2, :cond_39
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getTop()I
move-result v4
iget-object v5, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getRight()I
move-result v5
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mActionBarView:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getBottom()I
move-result v6
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_39
iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z
if-eqz v2, :cond_4a
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_48
:cond_41
:goto_41
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V
return-void
:cond_48
move v0, v1
goto :goto_41
:cond_4a
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_52
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_41
:cond_52
move v0, v1
goto :goto_41
.end method
.method public setSplitBackground(Landroid/graphics/drawable/Drawable;)V
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_11
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_11
iput-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_2d
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z
if-eqz v2, :cond_2d
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_2d
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredWidth()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getMeasuredHeight()I
move-result v4
invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_2d
iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z
if-eqz v2, :cond_3e
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_3c
:goto_35
:cond_35
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V
return-void
:cond_3c
move v0, v1
goto :goto_35
:cond_3e
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_46
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_35
:cond_46
move v0, v1
goto :goto_35
.end method
.method public setStackedBackground(Landroid/graphics/drawable/Drawable;)V
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_11
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_11
iput-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_3d
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z
if-eqz v2, :cond_3d
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_3d
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
iget-object v3, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getLeft()I
move-result v3
iget-object v4, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getTop()I
move-result v4
iget-object v5, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getRight()I
move-result v5
iget-object v6, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
invoke-virtual {v6}, Landroid/view/View;->getBottom()I
move-result v6
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_3d
iget-boolean v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z
if-eqz v2, :cond_4e
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_4c
:goto_45
:cond_45
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->setWillNotDraw(Z)V
invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->invalidate()V
return-void
:cond_4c
move v0, v1
goto :goto_45
:cond_4e
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_56
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_45
:cond_56
move v0, v1
goto :goto_45
.end method
.method public setTabContainer(Landroid/support/v7/widget/ScrollingTabContainerView;)V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
if-eqz v1, :cond_9
iget-object v1, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionBarContainer;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mTabContainer:Landroid/view/View;
if-eqz p1, :cond_1e
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionBarContainer;->addView(Landroid/view/View;)V
invoke-virtual {p1}, Landroid/support/v7/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
const/4 v1, -0x1
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v1, -0x2
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
const/4 v1, 0x0
invoke-virtual {p1, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V
:cond_1e
return-void
.end method
.method public setTransitioning(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsTransitioning:Z
if-eqz p1, :cond_a
const/high16 v0, 0x6
:goto_6
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionBarContainer;->setDescendantFocusability(I)V
return-void
:cond_a
const/high16 v0, 0x4
goto :goto_6
.end method
.method public setVisibility(I)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V
if-nez p1, :cond_23
const/4 v0, 0x1
:goto_7
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_10
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
:cond_10
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_19
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
:cond_19
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_22
iget-object v2, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
:cond_22
return-void
:cond_23
move v0, v1
goto :goto_7
.end method
.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.registers 4
const/4 v0, 0x0
return-object v0
.end method
.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
.registers 5
if-eqz p3, :cond_7
invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
move-result-object v0
:goto_6
return-object v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mBackground:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_8
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z
if-eqz v0, :cond_1e
:cond_8
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mStackedBackground:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_10
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsStacked:Z
if-nez v0, :cond_1e
:cond_10
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mSplitBackground:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_18
iget-boolean v0, p0, Landroid/support/v7/widget/ActionBarContainer;->mIsSplit:Z
if-nez v0, :cond_1e
:cond_18
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-eqz v0, :cond_20
:cond_1e
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method