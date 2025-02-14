.class  Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;
.field  mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
.field private mActionItemWidthLimit:I
.field private mExpandedActionViewsExclusive:Z
.field private mMaxItems:I
.field private mMaxItemsSet:Z
.field private mMinCellSize:I
.field  mOpenSubMenuId:I
.field  mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
.field  mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;
.field private mPendingOverflowIconSet:Z
.field private mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.field final mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;
.field  mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
.field private mReserveOverflow:Z
.field private mReserveOverflowSet:Z
.field private mScrapActionButtonView:Landroid/view/View;
.field private mStrictWidthLimit:Z
.field private mWidthLimit:I
.field private mWidthLimitSet:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I
sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I
invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V
new-instance v0, Landroid/util/SparseBooleanArray;
invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;
new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;
invoke-direct {v0, p0}, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;
return-void
.end method
.method static synthetic access$000(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
return-object v0
.end method
.method static synthetic access$100(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
return-object v0
.end method
.method static synthetic access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
return-object v0
.end method
.method static synthetic access$300(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
return-object v0
.end method
.method static synthetic access$400(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuBuilder;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
return-object v0
.end method
.method static synthetic access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/view/menu/MenuView;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
return-object v0
.end method
.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
.registers 8
const/4 v5, 0x0
iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
check-cast v3, Landroid/view/ViewGroup;
if-nez v3, :cond_9
move-object v0, v5
:goto_8
:cond_8
return-object v0
:cond_9
invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
const/4 v2, 0x0
:goto_e
if-ge v2, v1, :cond_24
invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
instance-of v4, v0, Landroid/support/v7/view/menu/MenuView$ItemView;
if-eqz v4, :cond_21
move-object v4, v0
check-cast v4, Landroid/support/v7/view/menu/MenuView$ItemView;
invoke-interface {v4}, Landroid/support/v7/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v4
if-eq v4, p1, :cond_8
:cond_21
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_24
move-object v0, v5
goto :goto_8
.end method
.method public bindItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/support/v7/view/menu/MenuView$ItemView;)V
.registers 6
const/4 v2, 0x0
invoke-interface {p2, p1, v2}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
check-cast v1, Landroid/support/v7/widget/ActionMenuView;
move-object v0, p2
check-cast v0, Landroid/support/v7/view/menu/ActionMenuItemView;
invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;)V
iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;
if-nez v2, :cond_19
new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;
invoke-direct {v2, p0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;
:cond_19
iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;
invoke-virtual {v0, v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V
return-void
.end method
.method public dismissPopupMenus()Z
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z
move-result v0
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z
move-result v1
or-int/2addr v0, v1
return v0
.end method
.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
.registers 5
invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
if-ne v0, v1, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z
move-result v0
goto :goto_9
.end method
.method public flagActionItems()Z
.registers 30
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
move-object/from16 v27, v0
if-eqz v27, :cond_5e
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
move-object/from16 v27, v0
invoke-virtual/range {v27 .. v27}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;
move-result-object v25
invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I
move-result v15
:goto_16
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I
move/from16 v17, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I
move/from16 v26, v0
const/16 v27, 0x0
const/16 v28, 0x0
invoke-static/range {v27 .. v28}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v20
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
move-object/from16 v19, v0
check-cast v19, Landroid/view/ViewGroup;
const/16 v22, 0x0
const/16 v21, 0x0
const/4 v8, 0x0
const/4 v10, 0x0
const/4 v11, 0x0
:goto_39
if-ge v11, v15, :cond_6d
move-object/from16 v0, v25
invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z
move-result v27
if-eqz v27, :cond_62
add-int/lit8 v22, v22, 0x1
:goto_4b
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z
move/from16 v27, v0
if-eqz v27, :cond_5b
invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z
move-result v27
if-eqz v27, :cond_5b
const/16 v17, 0x0
:cond_5b
add-int/lit8 v11, v11, 0x1
goto :goto_39
:cond_5e
const/16 v25, 0x0
const/4 v15, 0x0
goto :goto_16
:cond_62
invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z
move-result v27
if-eqz v27, :cond_6b
add-int/lit8 v21, v21, 0x1
goto :goto_4b
:cond_6b
const/4 v10, 0x1
goto :goto_4b
:cond_6d
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z
move/from16 v27, v0
if-eqz v27, :cond_81
if-nez v10, :cond_7f
add-int v27, v22, v21
move/from16 v0, v27
move/from16 v1, v17
if-le v0, v1, :cond_81
:cond_7f
add-int/lit8 v17, v17, -0x1
:cond_81
sub-int v17, v17, v22
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;
move-object/from16 v23, v0
invoke-virtual/range {v23 .. v23}, Landroid/util/SparseBooleanArray;->clear()V
const/4 v4, 0x0
const/4 v7, 0x0
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z
move/from16 v27, v0
if-eqz v27, :cond_b0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I
move/from16 v27, v0
div-int v7, v26, v27
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I
move/from16 v27, v0
rem-int v5, v26, v27
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I
move/from16 v27, v0
div-int v28, v5, v7
add-int v4, v27, v28
:cond_b0
const/4 v11, 0x0
:goto_b1
if-ge v11, v15, :cond_202
move-object/from16 v0, v25
invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v14
check-cast v14, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->requiresActionButton()Z
move-result v27
if-eqz v27, :cond_122
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;
move-object/from16 v27, v0
move-object/from16 v0, p0
move-object/from16 v1, v27
move-object/from16 v2, v19
invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v24
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;
move-object/from16 v27, v0
if-nez v27, :cond_df
move-object/from16 v0, v24
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;
:cond_df
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z
move/from16 v27, v0
if-eqz v27, :cond_118
const/16 v27, 0x0
move-object/from16 v0, v24
move/from16 v1, v20
move/from16 v2, v27
invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I
move-result v27
sub-int v7, v7, v27
:goto_f5
invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I
move-result v18
sub-int v26, v26, v18
if-nez v8, :cond_ff
move/from16 v8, v18
:cond_ff
invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I
move-result v9
if-eqz v9, :cond_10e
const/16 v27, 0x1
move-object/from16 v0, v23
move/from16 v1, v27
invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
:cond_10e
const/16 v27, 0x1
move/from16 v0, v27
invoke-virtual {v14, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V
:goto_115
add-int/lit8 v11, v11, 0x1
goto :goto_b1
:cond_118
move-object/from16 v0, v24
move/from16 v1, v20
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V
goto :goto_f5
:cond_122
invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->requestsActionButton()Z
move-result v27
if-eqz v27, :cond_1f9
invoke-virtual {v14}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I
move-result v9
move-object/from16 v0, v23
invoke-virtual {v0, v9}, Landroid/util/SparseBooleanArray;->get(I)Z
move-result v12
if-gtz v17, :cond_136
if-eqz v12, :cond_1a9
:cond_136
if-lez v26, :cond_1a9
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z
move/from16 v27, v0
if-eqz v27, :cond_142
if-lez v7, :cond_1a9
:cond_142
const/4 v13, 0x1
:goto_143
if-eqz v13, :cond_193
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;
move-object/from16 v27, v0
move-object/from16 v0, p0
move-object/from16 v1, v27
move-object/from16 v2, v19
invoke-virtual {v0, v14, v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v24
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;
move-object/from16 v27, v0
if-nez v27, :cond_163
move-object/from16 v0, v24
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;
:cond_163
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z
move/from16 v27, v0
if-eqz v27, :cond_1ab
const/16 v27, 0x0
move-object/from16 v0, v24
move/from16 v1, v20
move/from16 v2, v27
invoke-static {v0, v4, v7, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I
move-result v6
sub-int/2addr v7, v6
if-nez v6, :cond_17b
const/4 v13, 0x0
:goto_17b
:cond_17b
invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getMeasuredWidth()I
move-result v18
sub-int v26, v26, v18
if-nez v8, :cond_185
move/from16 v8, v18
:cond_185
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z
move/from16 v27, v0
if-eqz v27, :cond_1b8
if-ltz v26, :cond_1b5
const/16 v27, 0x1
:goto_191
and-int v13, v13, v27
:goto_193
:cond_193
if-eqz v13, :cond_1c4
if-eqz v9, :cond_1c4
const/16 v27, 0x1
move-object/from16 v0, v23
move/from16 v1, v27
invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
:cond_1a0
if-eqz v13, :cond_1a4
add-int/lit8 v17, v17, -0x1
:cond_1a4
invoke-virtual {v14, v13}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V
goto/16 :goto_115
:cond_1a9
const/4 v13, 0x0
goto :goto_143
:cond_1ab
move-object/from16 v0, v24
move/from16 v1, v20
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V
goto :goto_17b
:cond_1b5
const/16 v27, 0x0
goto :goto_191
:cond_1b8
add-int v27, v26, v8
if-lez v27, :cond_1c1
const/16 v27, 0x1
:goto_1be
and-int v13, v13, v27
goto :goto_193
:cond_1c1
const/16 v27, 0x0
goto :goto_1be
:cond_1c4
if-eqz v12, :cond_1a0
const/16 v27, 0x0
move-object/from16 v0, v23
move/from16 v1, v27
invoke-virtual {v0, v9, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V
const/16 v16, 0x0
:goto_1d1
move/from16 v0, v16
if-ge v0, v11, :cond_1a0
move-object/from16 v0, v25
move/from16 v1, v16
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I
move-result v27
move/from16 v0, v27
if-ne v0, v9, :cond_1f6
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z
move-result v27
if-eqz v27, :cond_1ef
add-int/lit8 v17, v17, 0x1
:cond_1ef
const/16 v27, 0x0
move/from16 v0, v27
invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V
:cond_1f6
add-int/lit8 v16, v16, 0x1
goto :goto_1d1
:cond_1f9
const/16 v27, 0x0
move/from16 v0, v27
invoke-virtual {v14, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setIsActionButton(Z)V
goto/16 :goto_115
:cond_202
const/16 v27, 0x1
return v27
.end method
.method public getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_c
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z
move-result v3
if-eqz v3, :cond_10
:cond_c
invoke-super {p0, p1, p2, p3}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:cond_10
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z
move-result v3
if-eqz v3, :cond_30
const/16 v3, 0x8
:goto_18
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
move-object v2, p3
check-cast v2, Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
move-result v3
if-nez v3, :cond_2f
invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v3
invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_2f
return-object v0
:cond_30
const/4 v3, 0x0
goto :goto_18
.end method
.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
.registers 5
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
invoke-super {p0, p1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
move-result-object v1
if-eq v0, v1, :cond_e
move-object v2, v1
check-cast v2, Landroid/support/v7/widget/ActionMenuView;
invoke-virtual {v2, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V
:cond_e
return-object v1
.end method
.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_a
return-object v0
:cond_b
iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;
goto :goto_a
:cond_12
const/4 v0, 0x0
goto :goto_a
.end method
.method public hideOverflowMenu()Z
.registers 5
const/4 v2, 0x1
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
if-eqz v1, :cond_17
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
if-eqz v1, :cond_17
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
check-cast v1, Landroid/view/View;
iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
move v1, v2
:goto_16
return v1
:cond_17
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
if-eqz v0, :cond_20
invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuPopupHelper;->dismiss()V
move v1, v2
goto :goto_16
:cond_20
const/4 v1, 0x0
goto :goto_16
.end method
.method public hideSubMenus()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 11
.parameter
.end parameter
.parameter
.end parameter
const/4 v7, 0x0
const/4 v6, 0x0
invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {p1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;
move-result-object v0
iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z
if-nez v4, :cond_17
invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->showsOverflowMenuButton()Z
move-result v4
iput-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z
:cond_17
iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z
if-nez v4, :cond_21
invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I
move-result v4
iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I
:cond_21
iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z
if-nez v4, :cond_2b
invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getMaxActionButtons()I
move-result v4
iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I
:cond_2b
iget v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I
iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z
if-eqz v4, :cond_6e
iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
if-nez v4, :cond_56
new-instance v4, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;
invoke-direct {v4, p0, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
iput-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z
if-eqz v4, :cond_4d
iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;
iput-boolean v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z
:cond_4d
invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
invoke-virtual {v4, v2, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V
:cond_56
iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I
move-result v4
sub-int/2addr v3, v4
:goto_5d
iput v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I
const/high16 v4, 0x4260
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v5
iget v5, v5, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v4, v5
float-to-int v4, v4
iput v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I
iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;
return-void
:cond_6e
iput-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
goto :goto_5d
.end method
.method public isOverflowMenuShowPending()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
if-nez v0, :cond_a
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z
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
.method public isOverflowMenuShowing()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z
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
iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z
return v0
.end method
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z
invoke-super {p0, p1, p2}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z
if-nez v0, :cond_10
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;
invoke-static {v0}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getMaxActionButtons()I
move-result v0
iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I
:cond_10
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v0, :cond_1a
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
:cond_1a
return-void
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 7
instance-of v3, p1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
if-nez v3, :cond_5
:goto_4
:cond_4
return-void
:cond_5
move-object v1, p1
check-cast v1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
iget v3, v1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I
if-lez v3, :cond_4
iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
iget v4, v1, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I
invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
if-eqz v0, :cond_4
invoke-interface {v0}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;
move-result-object v2
check-cast v2, Landroid/support/v7/view/menu/SubMenuBuilder;
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
goto :goto_4
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 3
new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;-><init>()V
iget v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I
iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I
return-object v0
.end method
.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
.registers 11
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z
move-result v7
if-nez v7, :cond_8
:goto_7
:cond_7
return v6
:cond_8
move-object v5, p1
:goto_9
invoke-virtual {v5}, Landroid/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;
move-result-object v7
iget-object v8, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
if-eq v7, v8, :cond_18
invoke-virtual {v5}, Landroid/support/v7/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;
move-result-object v5
check-cast v5, Landroid/support/v7/view/menu/SubMenuBuilder;
goto :goto_9
:cond_18
invoke-virtual {v5}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;
move-result-object v7
invoke-direct {p0, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_7
invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;
move-result-object v6
invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I
move-result v6
iput v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I
const/4 v4, 0x0
invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->size()I
move-result v2
const/4 v3, 0x0
:goto_32
if-ge v3, v2, :cond_45
invoke-virtual {p1, v3}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;
move-result-object v1
invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z
move-result v6
if-eqz v6, :cond_5d
invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v6
if-eqz v6, :cond_5d
const/4 v4, 0x1
:cond_45
new-instance v6, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
iget-object v7, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;
invoke-direct {v6, p0, v7, p1, v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/view/View;)V
iput-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
iget-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
invoke-virtual {v6, v4}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V
iget-object v6, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
invoke-virtual {v6}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V
invoke-super {p0, p1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
const/4 v6, 0x1
goto :goto_7
:cond_5d
add-int/lit8 v3, v3, 0x1
goto :goto_32
.end method
.method public onSubUiVisibilityChanged(Z)V
.registers 4
if-eqz p1, :cond_7
const/4 v0, 0x0
invoke-super {p0, v0}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v0, :cond_6
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
goto :goto_6
.end method
.method public setExpandedActionViewsExclusive(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z
return-void
.end method
.method public setItemLimit(I)V
.registers 3
iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z
return-void
.end method
.method public setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->initialize(Landroid/support/v7/view/menu/MenuBuilder;)V
return-void
.end method
.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_9
return-void
:cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;
goto :goto_9
.end method
.method public setReserveOverflow(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z
return-void
.end method
.method public setWidthLimit(IZ)V
.registers 4
iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I
iput-boolean p2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z
return-void
.end method
.method public shouldIncludeItem(ILandroid/support/v7/view/menu/MenuItemImpl;)Z
.registers 4
invoke-virtual {p2}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z
move-result v0
return v0
.end method
.method public showOverflowMenu()Z
.registers 7
const/4 v5, 0x1
iget-boolean v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z
if-eqz v1, :cond_44
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z
move-result v1
if-nez v1, :cond_44
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v1, :cond_44
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
if-eqz v1, :cond_44
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
if-nez v1, :cond_44
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v1
if-nez v1, :cond_44
new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;
iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
move-object v1, p0
invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/View;Z)V
new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V
iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
check-cast v1, Landroid/view/View;
iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
const/4 v1, 0x0
invoke-super {p0, v1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
:goto_43
return v5
:cond_44
const/4 v5, 0x0
goto :goto_43
.end method
.method public updateMenuView(Z)V
.registers 14
const/4 v10, 0x1
const/4 v11, 0x0
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
check-cast v9, Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
if-eqz v5, :cond_11
invoke-static {v5}, Landroid/support/v7/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V
:cond_11
invoke-super {p0, p1}, Landroid/support/v7/view/menu/BaseMenuPresenter;->updateMenuView(Z)V
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
check-cast v9, Landroid/view/View;
invoke-virtual {v9}, Landroid/view/View;->requestLayout()V
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v9, :cond_3e
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v3, 0x0
:goto_2a
if-ge v3, v1, :cond_3e
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
move-result-object v8
if-eqz v8, :cond_3b
invoke-virtual {v8, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V
:cond_3b
add-int/lit8 v3, v3, 0x1
goto :goto_2a
:cond_3e
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v9, :cond_9b
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;
move-result-object v6
:goto_48
const/4 v2, 0x0
iget-boolean v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z
if-eqz v9, :cond_62
if-eqz v6, :cond_62
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v1
if-ne v1, v10, :cond_9f
invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v9}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionViewExpanded()Z
move-result v9
if-nez v9, :cond_9d
move v2, v10
:cond_62
:goto_62
if-eqz v2, :cond_a5
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
if-nez v9, :cond_71
new-instance v9, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
iget-object v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;
invoke-direct {v9, p0, v10}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
iput-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
:cond_71
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;
move-result-object v7
check-cast v7, Landroid/view/ViewGroup;
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
if-eq v7, v9, :cond_91
if-eqz v7, :cond_84
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_84
iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
check-cast v4, Landroid/support/v7/widget/ActionMenuView;
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;
move-result-object v10
invoke-virtual {v4, v9, v10}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_91
:cond_91
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
check-cast v9, Landroid/support/v7/widget/ActionMenuView;
iget-boolean v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z
invoke-virtual {v9, v10}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V
return-void
:cond_9b
const/4 v6, 0x0
goto :goto_48
:cond_9d
move v2, v11
goto :goto_62
:cond_9f
if-lez v1, :cond_a3
move v2, v10
:goto_a2
goto :goto_62
:cond_a3
move v2, v11
goto :goto_a2
:cond_a5
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
if-eqz v9, :cond_91
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
invoke-virtual {v9}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;
move-result-object v9
iget-object v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
if-ne v9, v10, :cond_91
iget-object v9, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/MenuView;
check-cast v9, Landroid/view/ViewGroup;
iget-object v10, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
goto :goto_91
.end method