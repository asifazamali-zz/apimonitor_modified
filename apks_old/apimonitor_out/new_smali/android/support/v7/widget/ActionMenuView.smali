.class public Landroid/support/v7/widget/ActionMenuView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ActionMenuView.java"
.implements Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.implements Landroid/support/v7/view/menu/MenuView;
.field static final GENERATED_ITEM_PADDING:I = 0x4
.field static final MIN_CELL_SIZE:I = 0x38
.field private static final TAG:Ljava/lang/String; = "ActionMenuView"
.field private mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
.field private mFormatItems:Z
.field private mFormatItemsWidth:I
.field private mGeneratedItemPadding:I
.field private mMenu:Landroid/support/v7/view/menu/MenuBuilder;
.field  mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
.field private mMinCellSize:I
.field  mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
.field private mPopupContext:Landroid/content/Context;
.field private mPopupTheme:I
.field private mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
.field private mReserveOverflow:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->setBaselineAligned(Z)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v0, v1, Landroid/util/DisplayMetrics;->density:F
const/high16 v1, 0x4260
mul-float/2addr v1, v0
float-to-int v1, v1
iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I
const/high16 v1, 0x4080
mul-float/2addr v1, v0
float-to-int v1, v1
iput v1, p0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;
iput v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I
return-void
.end method
.method static measureChildForCells(Landroid/view/View;IIII)I
.registers 18
invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v8
check-cast v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v11
sub-int v2, v11, p4
invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
instance-of v11, p0, Landroid/support/v7/view/menu/ActionMenuItemView;
if-eqz v11, :cond_61
move-object v11, p0
check-cast v11, Landroid/support/v7/view/menu/ActionMenuItemView;
move-object v7, v11
:goto_1c
if-eqz v7, :cond_63
invoke-virtual {v7}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z
move-result v11
if-eqz v11, :cond_63
const/4 v6, 0x1
:goto_25
const/4 v0, 0x0
if-lez p2, :cond_4a
if-eqz v6, :cond_2d
const/4 v11, 0x2
if-lt p2, v11, :cond_4a
:cond_2d
mul-int v11, p1, p2
const/high16 v12, -0x8000
invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
invoke-virtual {p0, v4, v3}, Landroid/view/View;->measure(II)V
invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I
move-result v9
div-int v0, v9, p1
rem-int v11, v9, p1
if-eqz v11, :cond_44
add-int/lit8 v0, v0, 0x1
:cond_44
if-eqz v6, :cond_4a
const/4 v11, 0x2
if-ge v0, v11, :cond_4a
const/4 v0, 0x2
:cond_4a
iget-boolean v11, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z
if-nez v11, :cond_65
if-eqz v6, :cond_65
const/4 v5, 0x1
:goto_51
iput-boolean v5, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z
iput v0, v8, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I
mul-int v10, v0, p1
const/high16 v11, 0x4000
invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v11
invoke-virtual {p0, v11, v3}, Landroid/view/View;->measure(II)V
return v0
:cond_61
const/4 v7, 0x0
goto :goto_1c
:cond_63
const/4 v6, 0x0
goto :goto_25
:cond_65
const/4 v5, 0x0
goto :goto_51
.end method
.method private onMeasureExactFormat(II)V
.registers 45
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v17
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v37
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v19
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I
move-result v38
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I
move-result v39
add-int v36, v38, v39
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingTop()I
move-result v38
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingBottom()I
move-result v39
add-int v18, v38, v39
const/16 v38, -0x2
move/from16 v0, p2
move/from16 v1, v18
move/from16 v2, v38
invoke-static {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildMeasureSpec(III)I
move-result v22
sub-int v37, v37, v36
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I
move/from16 v38, v0
div-int v4, v37, v38
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I
move/from16 v38, v0
rem-int v6, v37, v38
if-nez v4, :cond_4c
const/16 v38, 0x0
move-object/from16 v0, p0
move/from16 v1, v37
move/from16 v2, v38
invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V
:goto_4b
return-void
:cond_4c
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mMinCellSize:I
move/from16 v38, v0
div-int v39, v6, v4
add-int v5, v38, v39
move v8, v4
const/16 v25, 0x0
const/16 v24, 0x0
const/4 v14, 0x0
const/16 v34, 0x0
const/16 v16, 0x0
const-wide/16 v32, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I
move-result v12
const/16 v20, 0x0
:goto_68
move/from16 v0, v20
if-ge v0, v12, :cond_140
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v11
invoke-virtual {v11}, Landroid/view/View;->getVisibility()I
move-result v38
const/16 v39, 0x8
move/from16 v0, v38
move/from16 v1, v39
if-ne v0, v1, :cond_83
:goto_80
:cond_80
add-int/lit8 v20, v20, 0x1
goto :goto_68
:cond_83
instance-of v0, v11, Landroid/support/v7/view/menu/ActionMenuItemView;
move/from16 v21, v0
add-int/lit8 v34, v34, 0x1
if-eqz v21, :cond_a6
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I
move/from16 v38, v0
const/16 v39, 0x0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I
move/from16 v40, v0
const/16 v41, 0x0
move/from16 v0, v38
move/from16 v1, v39
move/from16 v2, v40
move/from16 v3, v41
invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V
:cond_a6
invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
const/16 v38, 0x0
move/from16 v0, v38
move-object/from16 v1, v23
iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z
const/16 v38, 0x0
move/from16 v0, v38
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I
const/16 v38, 0x0
move/from16 v0, v38
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I
const/16 v38, 0x0
move/from16 v0, v38
move-object/from16 v1, v23
iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z
const/16 v38, 0x0
move/from16 v0, v38
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I
const/16 v38, 0x0
move/from16 v0, v38
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I
if-eqz v21, :cond_13b
move-object/from16 v38, v11
check-cast v38, Landroid/support/v7/view/menu/ActionMenuItemView;
invoke-virtual/range {v38 .. v38}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z
move-result v38
if-eqz v38, :cond_13b
const/16 v38, 0x1
:goto_ea
move/from16 v0, v38
move-object/from16 v1, v23
iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z
move/from16 v38, v0
if-eqz v38, :cond_13e
const/4 v7, 0x1
:goto_f9
move/from16 v0, v22
move/from16 v1, v18
invoke-static {v11, v5, v7, v0, v1}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I
move-result v9
move/from16 v0, v24
invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I
move-result v24
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z
move/from16 v38, v0
if-eqz v38, :cond_111
add-int/lit8 v14, v14, 0x1
:cond_111
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z
move/from16 v38, v0
if-eqz v38, :cond_11b
const/16 v16, 0x1
:cond_11b
sub-int/2addr v8, v9
invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I
move-result v38
move/from16 v0, v25
move/from16 v1, v38
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v25
const/16 v38, 0x1
move/from16 v0, v38
if-ne v9, v0, :cond_80
const/16 v38, 0x1
shl-int v38, v38, v20
move/from16 v0, v38
int-to-long v0, v0
move-wide/from16 v38, v0
or-long v32, v32, v38
goto/16 :goto_80
:cond_13b
const/16 v38, 0x0
goto :goto_ea
:cond_13e
move v7, v8
goto :goto_f9
:cond_140
if-eqz v16, :cond_177
const/16 v38, 0x2
move/from16 v0, v34
move/from16 v1, v38
if-ne v0, v1, :cond_177
const/4 v10, 0x1
:goto_14b
const/16 v30, 0x0
:goto_14d
if-lez v14, :cond_1b7
if-lez v8, :cond_1b7
const v26, 0x7fffffff
const-wide/16 v28, 0x0
const/16 v27, 0x0
const/16 v20, 0x0
:goto_15a
move/from16 v0, v20
if-ge v0, v12, :cond_1b1
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v11
invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expandable:Z
move/from16 v38, v0
if-nez v38, :cond_179
:cond_174
:goto_174
add-int/lit8 v20, v20, 0x1
goto :goto_15a
:cond_177
const/4 v10, 0x0
goto :goto_14b
:cond_179
move-object/from16 v0, v23
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I
move/from16 v38, v0
move/from16 v0, v38
move/from16 v1, v26
if-ge v0, v1, :cond_197
move-object/from16 v0, v23
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I
move/from16 v26, v0
const/16 v38, 0x1
shl-int v38, v38, v20
move/from16 v0, v38
int-to-long v0, v0
move-wide/from16 v28, v0
const/16 v27, 0x1
goto :goto_174
:cond_197
move-object/from16 v0, v23
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I
move/from16 v38, v0
move/from16 v0, v38
move/from16 v1, v26
if-ne v0, v1, :cond_174
const/16 v38, 0x1
shl-int v38, v38, v20
move/from16 v0, v38
int-to-long v0, v0
move-wide/from16 v38, v0
or-long v28, v28, v38
add-int/lit8 v27, v27, 0x1
goto :goto_174
:cond_1b1
or-long v32, v32, v28
move/from16 v0, v27
if-le v0, v8, :cond_265
:cond_1b7
if-nez v16, :cond_2f0
const/16 v38, 0x1
move/from16 v0, v34
move/from16 v1, v38
if-ne v0, v1, :cond_2f0
const/16 v31, 0x1
:goto_1c3
if-lez v8, :cond_370
const-wide/16 v38, 0x0
cmp-long v38, v32, v38
if-eqz v38, :cond_370
add-int/lit8 v38, v34, -0x1
move/from16 v0, v38
if-lt v8, v0, :cond_1db
if-nez v31, :cond_1db
const/16 v38, 0x1
move/from16 v0, v24
move/from16 v1, v38
if-le v0, v1, :cond_370
:cond_1db
invoke-static/range {v32 .. v33}, Ljava/lang/Long;->bitCount(J)I
move-result v38
move/from16 v0, v38
int-to-float v13, v0
if-nez v31, :cond_239
const-wide/16 v38, 0x1
and-long v38, v38, v32
const-wide/16 v40, 0x0
cmp-long v38, v38, v40
if-eqz v38, :cond_20a
const/16 v38, 0x0
move-object/from16 v0, p0
move/from16 v1, v38
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v38
invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z
move/from16 v38, v0
if-nez v38, :cond_20a
const/high16 v38, 0x3f00
sub-float v13, v13, v38
:cond_20a
const/16 v38, 0x1
add-int/lit8 v39, v12, -0x1
shl-int v38, v38, v39
move/from16 v0, v38
int-to-long v0, v0
move-wide/from16 v38, v0
and-long v38, v38, v32
const-wide/16 v40, 0x0
cmp-long v38, v38, v40
if-eqz v38, :cond_239
add-int/lit8 v38, v12, -0x1
move-object/from16 v0, p0
move/from16 v1, v38
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v38
invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z
move/from16 v38, v0
if-nez v38, :cond_239
const/high16 v38, 0x3f00
sub-float v13, v13, v38
:cond_239
const/16 v38, 0x0
cmpl-float v38, v13, v38
if-lez v38, :cond_2f4
mul-int v38, v8, v5
move/from16 v0, v38
int-to-float v0, v0
move/from16 v38, v0
div-float v38, v38, v13
move/from16 v0, v38
float-to-int v15, v0
:goto_24b
const/16 v20, 0x0
:goto_24d
move/from16 v0, v20
if-ge v0, v12, :cond_36f
const/16 v38, 0x1
shl-int v38, v38, v20
move/from16 v0, v38
int-to-long v0, v0
move-wide/from16 v38, v0
and-long v38, v38, v32
const-wide/16 v40, 0x0
cmp-long v38, v38, v40
if-nez v38, :cond_2f7
:cond_262
:goto_262
add-int/lit8 v20, v20, 0x1
goto :goto_24d
:cond_265
add-int/lit8 v26, v26, 0x1
const/16 v20, 0x0
:goto_269
move/from16 v0, v20
if-ge v0, v12, :cond_2ec
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v11
invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
const/16 v38, 0x1
shl-int v38, v38, v20
move/from16 v0, v38
int-to-long v0, v0
move-wide/from16 v38, v0
and-long v38, v38, v28
const-wide/16 v40, 0x0
cmp-long v38, v38, v40
if-nez v38, :cond_2a6
move-object/from16 v0, v23
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I
move/from16 v38, v0
move/from16 v0, v38
move/from16 v1, v26
if-ne v0, v1, :cond_2a3
const/16 v38, 0x1
shl-int v38, v38, v20
move/from16 v0, v38
int-to-long v0, v0
move-wide/from16 v38, v0
or-long v32, v32, v38
:goto_2a3
:cond_2a3
add-int/lit8 v20, v20, 0x1
goto :goto_269
:cond_2a6
if-eqz v10, :cond_2d3
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z
move/from16 v38, v0
if-eqz v38, :cond_2d3
const/16 v38, 0x1
move/from16 v0, v38
if-ne v8, v0, :cond_2d3
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I
move/from16 v38, v0
add-int v38, v38, v5
const/16 v39, 0x0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuView;->mGeneratedItemPadding:I
move/from16 v40, v0
const/16 v41, 0x0
move/from16 v0, v38
move/from16 v1, v39
move/from16 v2, v40
move/from16 v3, v41
invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V
:cond_2d3
move-object/from16 v0, v23
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I
move/from16 v38, v0
add-int/lit8 v38, v38, 0x1
move/from16 v0, v38
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I
const/16 v38, 0x1
move/from16 v0, v38
move-object/from16 v1, v23
iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z
add-int/lit8 v8, v8, -0x1
goto :goto_2a3
:cond_2ec
const/16 v30, 0x1
goto/16 :goto_14d
:cond_2f0
const/16 v31, 0x0
goto/16 :goto_1c3
:cond_2f4
const/4 v15, 0x0
goto/16 :goto_24b
:cond_2f7
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v11
invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
instance-of v0, v11, Landroid/support/v7/view/menu/ActionMenuItemView;
move/from16 v38, v0
if-eqz v38, :cond_330
move-object/from16 v0, v23
iput v15, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I
const/16 v38, 0x1
move/from16 v0, v38
move-object/from16 v1, v23
iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z
if-nez v20, :cond_32c
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z
move/from16 v38, v0
if-nez v38, :cond_32c
neg-int v0, v15
move/from16 v38, v0
div-int/lit8 v38, v38, 0x2
move/from16 v0, v38
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I
:cond_32c
const/16 v30, 0x1
goto/16 :goto_262
:cond_330
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z
move/from16 v38, v0
if-eqz v38, :cond_353
move-object/from16 v0, v23
iput v15, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I
const/16 v38, 0x1
move/from16 v0, v38
move-object/from16 v1, v23
iput-boolean v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z
neg-int v0, v15
move/from16 v38, v0
div-int/lit8 v38, v38, 0x2
move/from16 v0, v38
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I
const/16 v30, 0x1
goto/16 :goto_262
:cond_353
if-eqz v20, :cond_35d
div-int/lit8 v38, v15, 0x2
move/from16 v0, v38
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I
:cond_35d
add-int/lit8 v38, v12, -0x1
move/from16 v0, v20
move/from16 v1, v38
if-eq v0, v1, :cond_262
div-int/lit8 v38, v15, 0x2
move/from16 v0, v38
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I
goto/16 :goto_262
:cond_36f
const/4 v8, 0x0
:cond_370
if-eqz v30, :cond_3b3
const/16 v20, 0x0
:goto_374
move/from16 v0, v20
if-ge v0, v12, :cond_3b3
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v11
invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-object/from16 v0, v23
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->expanded:Z
move/from16 v38, v0
if-nez v38, :cond_391
:goto_38e
add-int/lit8 v20, v20, 0x1
goto :goto_374
:cond_391
move-object/from16 v0, v23
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->cellsUsed:I
move/from16 v38, v0
mul-int v38, v38, v5
move-object/from16 v0, v23
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->extraPixels:I
move/from16 v39, v0
add-int v35, v38, v39
const/high16 v38, 0x4000
move/from16 v0, v35
move/from16 v1, v38
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v38
move/from16 v0, v38
move/from16 v1, v22
invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V
goto :goto_38e
:cond_3b3
const/high16 v38, 0x4000
move/from16 v0, v17
move/from16 v1, v38
if-eq v0, v1, :cond_3bd
move/from16 v19, v25
:cond_3bd
move-object/from16 v0, p0
move/from16 v1, v37
move/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->setMeasuredDimension(II)V
goto/16 :goto_4b
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
if-eqz p1, :cond_8
instance-of v0, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public dismissPopupMenus()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z
:cond_9
return-void
.end method
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
.registers 3
const/4 v1, -0x2
new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(II)V
const/16 v1, 0x10
iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I
return-object v0
.end method
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
.registers 4
if-eqz p1, :cond_1c
instance-of v1, p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
if-eqz v1, :cond_16
new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
check-cast p1, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/support/v7/widget/ActionMenuView$LayoutParams;)V
:goto_d
iget v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I
if-gtz v1, :cond_15
const/16 v1, 0x10
iput v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->gravity:I
:cond_15
:goto_15
return-object v0
:cond_16
new-instance v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v7/widget/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_d
:cond_1c
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v0
goto :goto_15
.end method
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->generateDefaultLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v0
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z
return-object v0
.end method
.method public getMenu()Landroid/view/Menu;
.registers 5
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
if-nez v1, :cond_3f
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/support/v7/view/menu/MenuBuilder;
invoke-direct {v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
new-instance v2, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;
invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuView$MenuBuilderCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V
invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter;
invoke-direct {v1, v0}, Landroid/support/v7/widget/ActionMenuPresenter;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->setReserveOverflow(Z)V
iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
if-eqz v1, :cond_42
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
:goto_2e
invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
iget-object v2, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
iget-object v3, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;
invoke-virtual {v1, v2, v3}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
:cond_3f
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
return-object v1
:cond_42
new-instance v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ActionMenuView$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuView;)V
goto :goto_2e
.end method
.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getPopupTheme()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I
return v0
.end method
.method public getWindowAnimations()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected hasSupportDividerBeforeChildAt(I)Z
.registers 6
if-nez p1, :cond_4
const/4 v2, 0x0
:cond_3
:goto_3
return v2
:cond_4
add-int/lit8 v3, p1, -0x1
invoke-virtual {p0, v3}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I
move-result v3
if-ge p1, v3, :cond_20
instance-of v3, v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
if-eqz v3, :cond_20
check-cast v1, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
invoke-interface {v1}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z
move-result v3
or-int/2addr v2, v3
:cond_20
if-lez p1, :cond_3
instance-of v3, v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
if-eqz v3, :cond_3
check-cast v0, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
invoke-interface {v0}, Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z
move-result v3
or-int/2addr v2, v3
goto :goto_3
.end method
.method public hideOverflowMenu()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
return-void
.end method
.method public invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z
move-result v0
return v0
.end method
.method public isOverflowMenuShowPending()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isOverflowMenuShowing()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isOverflowReserved()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z
return v0
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
if-eqz v0, :cond_1f
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->updateMenuView(Z)V
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z
move-result v0
if-eqz v0, :cond_1f
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z
:cond_1f
return-void
.end method
.method public onDetachedFromWindow()V
.registers 1
invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->dismissPopupMenus()V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 38
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z
move/from16 v30, v0
if-nez v30, :cond_c
invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V
:cond_b
:goto_b
return-void
:cond_c
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I
move-result v6
sub-int v30, p5, p3
div-int/lit8 v15, v30, 0x2
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getDividerWidth()I
move-result v7
const/16 v18, 0x0
const/16 v17, 0x0
const/16 v16, 0x0
sub-int v30, p4, p2
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I
move-result v31
sub-int v30, v30, v31
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I
move-result v31
sub-int v29, v30, v31
const/4 v8, 0x0
invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v11
const/4 v10, 0x0
:goto_32
if-ge v10, v6, :cond_c6
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I
move-result v30
const/16 v31, 0x8
move/from16 v0, v30
move/from16 v1, v31
if-ne v0, v1, :cond_49
:goto_46
add-int/lit8 v10, v10, 0x1
goto :goto_32
:cond_49
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v19
check-cast v19, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-object/from16 v0, v19
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z
move/from16 v30, v0
if-eqz v30, :cond_a1
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I
move-result v18
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z
move-result v30
if-eqz v30, :cond_65
add-int v18, v18, v7
:cond_65
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I
move-result v9
if-eqz v11, :cond_8c
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I
move-result v30
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I
move/from16 v31, v0
add-int v12, v30, v31
add-int v20, v12, v18
:goto_79
div-int/lit8 v30, v9, 0x2
sub-int v26, v15, v30
add-int v5, v26, v9
move-object/from16 v0, v27
move/from16 v1, v26
move/from16 v2, v20
invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V
sub-int v29, v29, v18
const/4 v8, 0x1
goto :goto_46
:cond_8c
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I
move-result v30
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I
move-result v31
sub-int v30, v30, v31
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I
move/from16 v31, v0
sub-int v20, v30, v31
sub-int v12, v20, v18
goto :goto_79
:cond_a1
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I
move-result v30
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I
move/from16 v31, v0
add-int v30, v30, v31
move-object/from16 v0, v19
iget v0, v0, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I
move/from16 v31, v0
add-int v21, v30, v31
add-int v17, v17, v21
sub-int v29, v29, v21
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z
move-result v30
if-eqz v30, :cond_c3
add-int v17, v17, v7
:cond_c3
add-int/lit8 v16, v16, 0x1
goto :goto_46
:cond_c6
const/16 v30, 0x1
move/from16 v0, v30
if-ne v6, v0, :cond_fd
if-nez v8, :cond_fd
const/16 v30, 0x0
move-object/from16 v0, p0
move/from16 v1, v30
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I
move-result v28
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I
move-result v9
sub-int v30, p4, p2
div-int/lit8 v14, v30, 0x2
div-int/lit8 v30, v28, 0x2
sub-int v12, v14, v30
div-int/lit8 v30, v9, 0x2
sub-int v26, v15, v30
add-int v30, v12, v28
add-int v31, v26, v9
move-object/from16 v0, v27
move/from16 v1, v26
move/from16 v2, v30
move/from16 v3, v31
invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V
goto/16 :goto_b
:cond_fd
if-eqz v8, :cond_141
const/16 v30, 0x0
:goto_101
sub-int v22, v16, v30
const/16 v31, 0x0
if-lez v22, :cond_144
div-int v30, v29, v22
:goto_109
move/from16 v0, v31
move/from16 v1, v30
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v23
if-eqz v11, :cond_175
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getWidth()I
move-result v30
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingRight()I
move-result v31
sub-int v25, v30, v31
const/4 v10, 0x0
:goto_11e
if-ge v10, v6, :cond_b
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v13
check-cast v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I
move-result v30
const/16 v31, 0x8
move/from16 v0, v30
move/from16 v1, v31
if-eq v0, v1, :cond_13e
iget-boolean v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z
move/from16 v30, v0
if-eqz v30, :cond_147
:cond_13e
:goto_13e
add-int/lit8 v10, v10, 0x1
goto :goto_11e
:cond_141
const/16 v30, 0x1
goto :goto_101
:cond_144
const/16 v30, 0x0
goto :goto_109
:cond_147
iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I
move/from16 v30, v0
sub-int v25, v25, v30
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I
move-result v28
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I
move-result v9
div-int/lit8 v30, v9, 0x2
sub-int v26, v15, v30
sub-int v30, v25, v28
add-int v31, v26, v9
move-object/from16 v0, v27
move/from16 v1, v30
move/from16 v2, v26
move/from16 v3, v25
move/from16 v4, v31
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V
iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I
move/from16 v30, v0
add-int v30, v30, v28
add-int v30, v30, v23
sub-int v25, v25, v30
goto :goto_13e
:cond_175
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ActionMenuView;->getPaddingLeft()I
move-result v24
const/4 v10, 0x0
:goto_17a
if-ge v10, v6, :cond_b
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v13
check-cast v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getVisibility()I
move-result v30
const/16 v31, 0x8
move/from16 v0, v30
move/from16 v1, v31
if-eq v0, v1, :cond_19a
iget-boolean v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z
move/from16 v30, v0
if-eqz v30, :cond_19d
:cond_19a
:goto_19a
add-int/lit8 v10, v10, 0x1
goto :goto_17a
:cond_19d
iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I
move/from16 v30, v0
add-int v24, v24, v30
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredWidth()I
move-result v28
invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getMeasuredHeight()I
move-result v9
div-int/lit8 v30, v9, 0x2
sub-int v26, v15, v30
add-int v30, v24, v28
add-int v31, v26, v9
move-object/from16 v0, v27
move/from16 v1, v24
move/from16 v2, v26
move/from16 v3, v30
move/from16 v4, v31
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V
iget v0, v13, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I
move/from16 v30, v0
add-int v30, v30, v28
add-int v30, v30, v23
add-int v24, v24, v30
goto :goto_19a
.end method
.method protected onMeasure(II)V
.registers 13
const/4 v7, 0x1
const/4 v8, 0x0
iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v6
const/high16 v9, 0x4000
if-ne v6, v9, :cond_3a
move v6, v7
:goto_d
iput-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z
iget-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z
if-eq v4, v6, :cond_15
iput v8, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I
:cond_15
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v5
iget-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z
if-eqz v6, :cond_2c
iget-object v6, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v6, :cond_2c
iget v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I
if-eq v5, v6, :cond_2c
iput v5, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItemsWidth:I
iget-object v6, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v6, v7}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
:cond_2c
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getChildCount()I
move-result v1
iget-boolean v6, p0, Landroid/support/v7/widget/ActionMenuView;->mFormatItems:Z
if-eqz v6, :cond_3c
if-lez v1, :cond_3c
invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ActionMenuView;->onMeasureExactFormat(II)V
:goto_39
return-void
:cond_3a
move v6, v8
goto :goto_d
:cond_3c
const/4 v2, 0x0
:goto_3d
if-ge v2, v1, :cond_50
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuView;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;
iput v8, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->rightMargin:I
iput v8, v3, Landroid/support/v7/widget/ActionMenuView$LayoutParams;->leftMargin:I
add-int/lit8 v2, v2, 0x1
goto :goto_3d
:cond_50
invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V
goto :goto_39
.end method
.method public peekMenu()Landroid/support/v7/view/menu/MenuBuilder;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
return-object v0
.end method
.method public setExpandedActionViewsExclusive(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V
return-void
.end method
.method public setMenuCallbacks(Landroid/support/v7/view/menu/MenuPresenter$Callback;Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mActionMenuPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
iput-object p2, p0, Landroid/support/v7/widget/ActionMenuView;->mMenuBuilderCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
return-void
.end method
.method public setOnMenuItemClickListener(Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mOnMenuItemClickListener:Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
return-void
.end method
.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getMenu()Landroid/view/Menu;
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setOverflowReserved(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuView;->mReserveOverflow:Z
return-void
.end method
.method public setPopupTheme(I)V
.registers 4
.parameter
.end parameter
iget v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I
if-eq v0, p1, :cond_e
iput p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupTheme:I
if-nez p1, :cond_f
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;
:cond_e
:goto_e
return-void
:cond_f
new-instance v0, Landroid/view/ContextThemeWrapper;
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPopupContext:Landroid/content/Context;
goto :goto_e
.end method
.method public setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter;->setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
return-void
.end method
.method public showOverflowMenu()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuView;->mPresenter:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method