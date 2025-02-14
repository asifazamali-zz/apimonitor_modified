.class final Landroid/support/v7/view/menu/CascadingMenuPopup;
.super Landroid/support/v7/view/menu/MenuPopup;
.source "CascadingMenuPopup.java"
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.field static final HORIZ_POSITION_LEFT:I = 0x0
.field static final HORIZ_POSITION_RIGHT:I = 0x1
.field static final SUBMENU_TIMEOUT_MS:I = 0xc8
.field private mAnchorView:Landroid/view/View;
.field private final mContext:Landroid/content/Context;
.field private mDropDownGravity:I
.field private mForceShowIcon:Z
.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field private mHasXOffset:Z
.field private mHasYOffset:Z
.field private mLastPosition:I
.field private final mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;
.field private final mMenuMaxWidth:I
.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
.field private final mOverflowOnly:Z
.field private final mPendingMenus:Ljava/util/List;
.field private final mPopupStyleAttr:I
.field private final mPopupStyleRes:I
.field private mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
.field private mRawDropDownGravity:I
.field  mShouldCloseImmediately:Z
.field private mShowTitle:Z
.field final mShowingMenus:Ljava/util/List;
.field  mShownAnchorView:Landroid/view/View;
.field final mSubMenuHoverHandler:Landroid/os/Handler;
.field private mTreeObserver:Landroid/view/ViewTreeObserver;
.field private mXOffset:I
.field private mYOffset:I
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
.registers 9
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v2, 0x0
invoke-direct {p0}, Landroid/support/v7/view/menu/MenuPopup;-><init>()V
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
new-instance v1, Landroid/support/v7/view/menu/CascadingMenuPopup$1;
invoke-direct {v1, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$1;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V
iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
new-instance v1, Landroid/support/v7/view/menu/CascadingMenuPopup$2;
invoke-direct {v1, p0}, Landroid/support/v7/view/menu/CascadingMenuPopup$2;-><init>(Landroid/support/v7/view/menu/CascadingMenuPopup;)V
iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;
iput v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I
iput v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I
iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;
iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;
iput p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I
iput p4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I
iput-boolean p5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z
iput-boolean v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z
invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I
move-result v1
iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I
div-int/lit8 v1, v1, 0x2
sget v2, Landroid/support/v7/appcompat/R$dimen;->abc_config_prefDialogWidth:I
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I
move-result v1
iput v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I
new-instance v1, Landroid/os/Handler;
invoke-direct {v1}, Landroid/os/Handler;-><init>()V
iput-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;
return-void
.end method
.method private createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;
.registers 6
new-instance v0, Landroid/support/v7/widget/MenuPopupWindow;
iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;
const/4 v2, 0x0
iget v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleAttr:I
iget v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPopupStyleRes:I
invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuItemHoverListener:Landroid/support/v7/widget/MenuItemHoverListener;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setHoverListener(Landroid/support/v7/widget/MenuItemHoverListener;)V
invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {v0, p0}, Landroid/support/v7/widget/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V
iget v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I
invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/widget/MenuPopupWindow;->setModal(Z)V
return-object v0
.end method
.method private findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I
.registers 6
.parameter
.end parameter
const/4 v1, 0x0
iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
:goto_7
if-ge v1, v0, :cond_19
iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
iget-object v3, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-ne p1, v3, :cond_16
:goto_15
return v1
:cond_16
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_19
const/4 v1, -0x1
goto :goto_15
.end method
.method private findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;
.registers 7
.parameter
.end parameter
.parameter
.end parameter
const/4 v1, 0x0
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->size()I
move-result v0
:goto_5
if-ge v1, v0, :cond_1b
invoke-virtual {p1, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;
move-result-object v2
invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z
move-result v3
if-eqz v3, :cond_18
invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;
move-result-object v3
if-ne p2, v3, :cond_18
:goto_17
return-object v2
:cond_18
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1b
const/4 v2, 0x0
goto :goto_17
.end method
.method private findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;
.registers 15
.parameter
.end parameter
.parameter
.end parameter
const/4 v10, 0x0
iget-object v11, p1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-direct {p0, v11, p2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/MenuItem;
move-result-object v7
if-nez v7, :cond_a
:goto_9
:cond_9
return-object v10
:cond_a
invoke-virtual {p1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v4
instance-of v11, v4, Landroid/widget/HeaderViewListAdapter;
if-eqz v11, :cond_49
move-object v1, v4
check-cast v1, Landroid/widget/HeaderViewListAdapter;
invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I
move-result v2
invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;
move-result-object v6
check-cast v6, Landroid/support/v7/view/menu/MenuAdapter;
:goto_23
const/4 v8, -0x1
const/4 v3, 0x0
invoke-virtual {v6}, Landroid/support/v7/view/menu/MenuAdapter;->getCount()I
move-result v0
:goto_29
if-ge v3, v0, :cond_32
invoke-virtual {v6, v3}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v11
if-ne v7, v11, :cond_4e
move v8, v3
:cond_32
const/4 v11, -0x1
if-eq v8, v11, :cond_9
add-int/2addr v8, v2
invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v11
sub-int v9, v8, v11
if-ltz v9, :cond_9
invoke-virtual {v5}, Landroid/widget/ListView;->getChildCount()I
move-result v11
if-ge v9, v11, :cond_9
invoke-virtual {v5, v9}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;
move-result-object v10
goto :goto_9
:cond_49
const/4 v2, 0x0
move-object v6, v4
check-cast v6, Landroid/support/v7/view/menu/MenuAdapter;
goto :goto_23
:cond_4e
add-int/lit8 v3, v3, 0x1
goto :goto_29
.end method
.method private getInitialMenuPosition()I
.registers 4
const/4 v1, 0x1
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;
invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v0
if-ne v0, v1, :cond_a
const/4 v1, 0x0
:cond_a
return v1
.end method
.method private getNextMenuPosition(I)I
.registers 11
const/4 v7, 0x1
const/4 v6, 0x0
iget-object v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
iget-object v8, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v8}, Ljava/util/List;->size()I
move-result v8
add-int/lit8 v8, v8, -0x1
invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
invoke-virtual {v5}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;
move-result-object v1
const/4 v5, 0x2
new-array v4, v5, [I
invoke-virtual {v1, v4}, Landroid/widget/ListView;->getLocationOnScreen([I)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iget-object v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;
invoke-virtual {v5, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
iget v5, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I
if-ne v5, v7, :cond_3b
aget v5, v4, v6
invoke-virtual {v1}, Landroid/widget/ListView;->getWidth()I
move-result v8
add-int/2addr v5, v8
add-int v3, v5, p1
iget v5, v0, Landroid/graphics/Rect;->right:I
if-le v3, v5, :cond_39
move v5, v6
:goto_38
return v5
:cond_39
move v5, v7
goto :goto_38
:cond_3b
aget v5, v4, v6
sub-int v2, v5, p1
if-gez v2, :cond_43
move v5, v7
goto :goto_38
:cond_43
move v5, v6
goto :goto_38
.end method
.method private showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 26
.parameter
.end parameter
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;
move-object/from16 v21, v0
invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v5
new-instance v3, Landroid/support/v7/view/menu/MenuAdapter;
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOverflowOnly:Z
move/from16 v21, v0
move-object/from16 v0, p1
move/from16 v1, v21
invoke-direct {v3, v0, v5, v1}, Landroid/support/v7/view/menu/MenuAdapter;-><init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z
move-result v21
if-nez v21, :cond_162
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z
move/from16 v21, v0
if-eqz v21, :cond_162
const/16 v21, 0x1
move/from16 v0, v21
invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V
:goto_2e
:cond_2e
const/16 v21, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;
move-object/from16 v22, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mMenuMaxWidth:I
move/from16 v23, v0
move-object/from16 v0, v21
move-object/from16 v1, v22
move/from16 v2, v23
invoke-static {v3, v0, v1, v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
move-result v8
invoke-direct/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->createPopupWindow()Landroid/support/v7/widget/MenuPopupWindow;
move-result-object v14
invoke-virtual {v14, v3}, Landroid/support/v7/widget/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {v14, v8}, Landroid/support/v7/widget/MenuPopupWindow;->setContentWidth(I)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I
move/from16 v21, v0
move/from16 v0, v21
invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setDropDownGravity(I)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
move-object/from16 v21, v0
invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I
move-result v21
if-lez v21, :cond_173
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
move-object/from16 v21, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
move-object/from16 v22, v0
invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I
move-result v22
add-int/lit8 v22, v22, -0x1
invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v10, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findParentViewForSubmenu(Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;Landroid/support/v7/view/menu/MenuBuilder;)Landroid/view/View;
move-result-object v13
:goto_87
if-eqz v13, :cond_190
const/16 v21, 0x0
move/from16 v0, v21
invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setTouchModal(Z)V
const/16 v21, 0x0
move-object/from16 v0, v21
invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V
move-object/from16 v0, p0
invoke-direct {v0, v8}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getNextMenuPosition(I)I
move-result v9
const/16 v21, 0x1
move/from16 v0, v21
if-ne v9, v0, :cond_177
const/4 v15, 0x1
:goto_a4
move-object/from16 v0, p0
iput v9, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I
const/16 v21, 0x2
move/from16 v0, v21
new-array v0, v0, [I
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-virtual {v13, v0}, Landroid/view/View;->getLocationInWindow([I)V
iget-object v0, v10, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/MenuPopupWindow;->getHorizontalOffset()I
move-result v21
const/16 v22, 0x0
aget v22, v16, v22
add-int v11, v21, v22
iget-object v0, v10, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Landroid/support/v7/widget/MenuPopupWindow;->getVerticalOffset()I
move-result v21
const/16 v22, 0x1
aget v22, v16, v22
add-int v12, v21, v22
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I
move/from16 v21, v0
and-int/lit8 v21, v21, 0x5
const/16 v22, 0x5
move/from16 v0, v21
move/from16 v1, v22
if-ne v0, v1, :cond_182
if-eqz v15, :cond_17a
add-int v19, v11, v8
:goto_e5
move/from16 v0, v19
invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V
move/from16 v20, v12
move/from16 v0, v20
invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V
:goto_f1
new-instance v7, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I
move/from16 v21, v0
move-object/from16 v0, p1
move/from16 v1, v21
invoke-direct {v7, v14, v0, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Landroid/support/v7/widget/MenuPopupWindow;Landroid/support/v7/view/menu/MenuBuilder;I)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
move-object/from16 v21, v0
move-object/from16 v0, v21
invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v14}, Landroid/support/v7/widget/MenuPopupWindow;->show()V
if-nez v10, :cond_161
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z
move/from16 v21, v0
if-eqz v21, :cond_161
invoke-virtual/range {p1 .. p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;
move-result-object v21
if-eqz v21, :cond_161
invoke-virtual {v14}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;
move-result-object v6
sget v21, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_header_item_layout:I
const/16 v22, 0x0
move/from16 v0, v21
move/from16 v1, v22
invoke-virtual {v5, v0, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v17
check-cast v17, Landroid/widget/FrameLayout;
const v21, 0x1020016
move-object/from16 v0, v17
move/from16 v1, v21
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;
move-result-object v18
check-cast v18, Landroid/widget/TextView;
const/16 v21, 0x0
move-object/from16 v0, v17
move/from16 v1, v21
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V
invoke-virtual/range {p1 .. p1}, Landroid/support/v7/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;
move-result-object v21
move-object/from16 v0, v18
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v21, 0x0
const/16 v22, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v21
move/from16 v2, v22
invoke-virtual {v6, v0, v1, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
invoke-virtual {v14}, Landroid/support/v7/widget/MenuPopupWindow;->show()V
:cond_161
return-void
:cond_162
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z
move-result v21
if-eqz v21, :cond_2e
invoke-static/range {p1 .. p1}, Landroid/support/v7/view/menu/MenuPopup;->shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z
move-result v21
move/from16 v0, v21
invoke-virtual {v3, v0}, Landroid/support/v7/view/menu/MenuAdapter;->setForceShowIcon(Z)V
goto/16 :goto_2e
:cond_173
const/4 v10, 0x0
const/4 v13, 0x0
goto/16 :goto_87
:cond_177
const/4 v15, 0x0
goto/16 :goto_a4
:cond_17a
invoke-virtual {v13}, Landroid/view/View;->getWidth()I
move-result v21
sub-int v19, v11, v21
goto/16 :goto_e5
:cond_182
if-eqz v15, :cond_18c
invoke-virtual {v13}, Landroid/view/View;->getWidth()I
move-result v21
add-int v19, v11, v21
goto/16 :goto_e5
:cond_18c
sub-int v19, v11, v8
goto/16 :goto_e5
:cond_190
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z
move/from16 v21, v0
if-eqz v21, :cond_1a3
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I
move/from16 v21, v0
move/from16 v0, v21
invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setHorizontalOffset(I)V
:cond_1a3
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z
move/from16 v21, v0
if-eqz v21, :cond_1b6
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I
move/from16 v21, v0
move/from16 v0, v21
invoke-virtual {v14, v0}, Landroid/support/v7/widget/MenuPopupWindow;->setVerticalOffset(I)V
:cond_1b6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;
move-result-object v4
invoke-virtual {v14, v4}, Landroid/support/v7/widget/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V
goto/16 :goto_f1
.end method
.method public addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;
invoke-virtual {p1, p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z
move-result v0
if-eqz v0, :cond_f
invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
:goto_e
return-void
:cond_f
iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_e
.end method
.method protected closeMenuOnSubMenuOpened()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public dismiss()V
.registers 7
iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v3
if-lez v3, :cond_28
iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
new-array v5, v3, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
add-int/lit8 v1, v3, -0x1
:goto_14
if-ltz v1, :cond_28
aget-object v2, v0, v1
iget-object v4, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z
move-result v4
if-eqz v4, :cond_25
iget-object v4, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V
:cond_25
add-int/lit8 v1, v1, -0x1
goto :goto_14
:cond_28
return-void
.end method
.method public flagActionItems()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getListView()Landroid/widget/ListView;
.registers 3
iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;
move-result-object v0
goto :goto_9
.end method
.method public isShowing()Z
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
iget-object v0, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_1b
const/4 v0, 0x1
:goto_1a
return v0
:cond_1b
move v0, v1
goto :goto_1a
.end method
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
.registers 13
const/4 v9, 0x0
const/4 v8, 0x0
invoke-direct {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Landroid/support/v7/view/menu/MenuBuilder;)I
move-result v3
if-gez v3, :cond_9
:cond_8
:goto_8
return-void
:cond_9
add-int/lit8 v4, v3, 0x1
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v6
if-ge v4, v6, :cond_20
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
iget-object v6, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v6, v8}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
:cond_20
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v6, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
iget-object v6, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v6, p0}, Landroid/support/v7/view/menu/MenuBuilder;->removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
iget-boolean v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z
if-eqz v6, :cond_3b
iget-object v6, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
invoke-virtual {v6, v9}, Landroid/support/v7/widget/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V
iget-object v6, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
invoke-virtual {v6, v8}, Landroid/support/v7/widget/MenuPopupWindow;->setAnimationStyle(I)V
:cond_3b
iget-object v6, v2, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
invoke-virtual {v6}, Landroid/support/v7/widget/MenuPopupWindow;->dismiss()V
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_80
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
add-int/lit8 v7, v1, -0x1
invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
iget v6, v6, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I
iput v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I
:goto_56
if-nez v1, :cond_87
invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
if-eqz v6, :cond_65
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
const/4 v7, 0x1
invoke-interface {v6, p1, v7}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
:cond_65
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
if-eqz v6, :cond_7a
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
invoke-virtual {v6}, Landroid/view/ViewTreeObserver;->isAlive()Z
move-result v6
if-eqz v6, :cond_78
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
iget-object v7, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:cond_78
iput-object v9, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
:cond_7a
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
invoke-interface {v6}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V
goto :goto_8
:cond_80
invoke-direct {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->getInitialMenuPosition()I
move-result v6
iput v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mLastPosition:I
goto :goto_56
:cond_87
if-eqz p2, :cond_8
iget-object v6, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
iget-object v6, v5, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v6, v8}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
goto/16 :goto_8
.end method
.method public onDismiss()V
.registers 7
const/4 v1, 0x0
const/4 v2, 0x0
iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v0
:goto_8
if-ge v2, v0, :cond_1b
iget-object v4, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
iget-object v4, v3, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
invoke-virtual {v4}, Landroid/support/v7/widget/MenuPopupWindow;->isShowing()Z
move-result v4
if-nez v4, :cond_24
move-object v1, v3
:cond_1b
if-eqz v1, :cond_23
iget-object v4, v1, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;
const/4 v5, 0x0
invoke-virtual {v4, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
:cond_23
return-void
:cond_24
add-int/lit8 v2, v2, 0x1
goto :goto_8
.end method
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x1
invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I
move-result v1
if-ne v1, v0, :cond_f
const/16 v1, 0x52
if-ne p2, v1, :cond_f
invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->dismiss()V
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 2
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
.registers 6
const/4 v1, 0x1
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_7
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
iget-object v3, v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-ne p1, v3, :cond_7
invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z
:goto_1e
:cond_1e
return v1
:cond_1f
invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z
move-result v2
if-eqz v2, :cond_32
invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
if-eqz v2, :cond_1e
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
invoke-interface {v2, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
goto :goto_1e
:cond_32
const/4 v1, 0x0
goto :goto_1e
.end method
.method public setAnchorView(Landroid/view/View;)V
.registers 4
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;
if-eq v0, p1, :cond_14
iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;
iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I
iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;
invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v1
invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v0
iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I
:cond_14
return-void
.end method
.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPresenterCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
return-void
.end method
.method public setForceShowIcon(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mForceShowIcon:Z
return-void
.end method
.method public setGravity(I)V
.registers 3
iget v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I
if-eq v0, p1, :cond_12
iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mRawDropDownGravity:I
iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v0
iput v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mDropDownGravity:I
:cond_12
return-void
.end method
.method public setHorizontalOffset(I)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasXOffset:Z
iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mXOffset:I
return-void
.end method
.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
return-void
.end method
.method public setShowTitle(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowTitle:Z
return-void
.end method
.method public setVerticalOffset(I)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mHasYOffset:Z
iput p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mYOffset:I
return-void
.end method
.method public show()V
.registers 5
invoke-virtual {p0}, Landroid/support/v7/view/menu/CascadingMenuPopup;->isShowing()Z
move-result v2
if-eqz v2, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuBuilder;
invoke-direct {p0, v1}, Landroid/support/v7/view/menu/CascadingMenuPopup;->showMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
goto :goto_d
:cond_1d
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->clear()V
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;
iput-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;
if-eqz v2, :cond_6
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
if-nez v2, :cond_41
const/4 v0, 0x1
:goto_2f
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v2
iput-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
if-eqz v0, :cond_6
iget-object v2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;
iget-object v3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
goto :goto_6
:cond_41
const/4 v0, 0x0
goto :goto_2f
.end method
.method public updateMenuView(Z)V
.registers 5
iget-object v1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
invoke-virtual {v0}, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v2
invoke-static {v2}, Landroid/support/v7/view/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;
move-result-object v2
invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuAdapter;->notifyDataSetChanged()V
goto :goto_6
:cond_22
return-void
.end method