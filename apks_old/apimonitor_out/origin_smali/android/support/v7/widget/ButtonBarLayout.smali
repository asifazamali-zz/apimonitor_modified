.class public Landroid/support/v7/widget/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final ALLOW_STACKING_MIN_HEIGHT_DP:I = 0x140

.field private static final PEEK_BUTTON_DP:I = 0x10


# instance fields
.field private mAllowStacking:Z

.field private mLastWidthSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v2

    const/16 v3, 0x140

    if-lt v2, v3, :cond_25

    const/4 v0, 0x1

    :goto_13
    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$styleable;->ButtonBarLayout_allowStacking:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_25
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private getNextVisibleChildIndex(I)I
    .registers 5

    move v1, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_15

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_12

    :goto_11
    return v1

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method private isStacked()Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private setStacked(Z)V
    .registers 6

    if-eqz p1, :cond_2d

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setOrientation(I)V

    if-eqz p1, :cond_2f

    const/4 v3, 0x5

    :goto_9
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->setGravity(I)V

    sget v3, Landroid/support/v7/appcompat/R$id;->spacer:I

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1b

    if-eqz p1, :cond_32

    const/16 v3, 0x8

    :goto_18
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    :goto_21
    if-ltz v1, :cond_34

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    :cond_2d
    const/4 v3, 0x0

    goto :goto_3

    :cond_2f
    const/16 v3, 0x50

    goto :goto_9

    :cond_32
    const/4 v3, 0x4

    goto :goto_18

    :cond_34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 23

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    move/from16 v16, v0

    if-eqz v16, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_25

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v16

    if-eqz v16, :cond_25

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_25
    move-object/from16 v0, p0

    iput v15, v0, Landroid/support/v7/widget/ButtonBarLayout;->mLastWidthSize:I

    :cond_29
    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v16

    if-nez v16, :cond_fe

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v16

    const/high16 v17, 0x4000

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_fe

    const/high16 v16, -0x8000

    invoke-static/range {v15 .. v16}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v12, 0x1

    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-super {v0, v8, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7d

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v16

    if-nez v16, :cond_7d

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v17, 0xb

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_105

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v9

    const/high16 v16, -0x100

    and-int v10, v9, v16

    const/high16 v16, 0x100

    move/from16 v0, v16

    if-ne v10, v0, :cond_102

    const/4 v14, 0x1

    :goto_71
    if-eqz v14, :cond_7d

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    const/4 v12, 0x1

    :cond_7d
    if-eqz v12, :cond_82

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_82
    const/4 v11, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v6

    if-ltz v6, :cond_f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingTop()I

    move-result v16

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v16, v16, v17

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v16, v16, v17

    iget v0, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int v11, v11, v16

    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->isStacked()Z

    move-result v16

    if-eqz v16, :cond_131

    add-int/lit8 v16, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/support/v7/widget/ButtonBarLayout;->getNextVisibleChildIndex(I)I

    move-result v13

    if-ltz v13, :cond_f0

    int-to-float v0, v11

    move/from16 v16, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingTop()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4180

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    add-float v17, v17, v18

    add-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v11, v0

    :cond_f0
    :goto_f0
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v16

    move/from16 v0, v16

    if-eq v0, v11, :cond_fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/support/v7/widget/ButtonBarLayout;->setMinimumHeight(I)V

    :cond_fd
    return-void

    :cond_fe
    move/from16 v8, p1

    goto/16 :goto_43

    :cond_102
    const/4 v14, 0x0

    goto/16 :goto_71

    :cond_105
    const/4 v2, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getChildCount()I

    move-result v3

    :goto_10b
    if-ge v7, v3, :cond_11c

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v2, v2, v16

    add-int/lit8 v7, v7, 0x1

    goto :goto_10b

    :cond_11c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingLeft()I

    move-result v16

    add-int v16, v16, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingRight()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    if-le v0, v15, :cond_12f

    const/4 v14, 0x1

    :goto_12d
    goto/16 :goto_71

    :cond_12f
    const/4 v14, 0x0

    goto :goto_12d

    :cond_131
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ButtonBarLayout;->getPaddingBottom()I

    move-result v16

    add-int v11, v11, v16

    goto :goto_f0
.end method

.method public setAllowStacking(Z)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-eq v0, p1, :cond_18

    iput-boolean p1, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/ButtonBarLayout;->mAllowStacking:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/ButtonBarLayout;->setStacked(Z)V

    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/ButtonBarLayout;->requestLayout()V

    :cond_18
    return-void
.end method
