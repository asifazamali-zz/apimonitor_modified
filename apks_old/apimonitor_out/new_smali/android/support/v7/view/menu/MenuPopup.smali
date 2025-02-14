.class abstract Landroid/support/v7/view/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"
.implements Landroid/support/v7/view/menu/ShowableListMenu;
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field private mEpicenterBounds:Landroid/graphics/Rect;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
.registers 14
const/4 v9, 0x0
const/4 v6, 0x0
const/4 v4, 0x0
const/4 v3, 0x0
invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
invoke-static {v9, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I
move-result v0
const/4 v2, 0x0
:goto_11
if-ge v2, v0, :cond_36
invoke-interface {p0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v7
if-eq v7, v3, :cond_1b
move v3, v7
const/4 v4, 0x0
:cond_1b
if-nez p1, :cond_22
new-instance p1, Landroid/widget/FrameLayout;
invoke-direct {p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
:cond_22
invoke-interface {p0, v2, v4, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v4
invoke-virtual {v4, v8, v1}, Landroid/view/View;->measure(II)V
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v5
if-lt v5, p3, :cond_30
:goto_2f
return p3
:cond_30
if-le v5, v6, :cond_33
move v6, v5
:cond_33
add-int/lit8 v2, v2, 0x1
goto :goto_11
:cond_36
move p3, v6
goto :goto_2f
.end method
.method protected static shouldPreserveIconSpacing(Landroid/support/v7/view/menu/MenuBuilder;)Z
.registers 6
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I
move-result v1
const/4 v2, 0x0
:goto_6
if-ge v2, v1, :cond_19
invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z
move-result v4
if-eqz v4, :cond_1a
invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v4
if-eqz v4, :cond_1a
const/4 v3, 0x1
:cond_19
return v3
:cond_1a
add-int/lit8 v2, v2, 0x1
goto :goto_6
.end method
.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;
.registers 2
instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;
if-eqz v0, :cond_d
check-cast p0, Landroid/widget/HeaderViewListAdapter;
invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/MenuAdapter;
:goto_c
return-object v0
:cond_d
check-cast p0, Landroid/support/v7/view/menu/MenuAdapter;
move-object v0, p0
goto :goto_c
.end method
.method public abstract addMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
.end method
.method protected closeMenuOnSubMenuOpened()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public getEpicenterBounds()Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;
return-object v0
.end method
.method public getId()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "MenuPopups manage their own views"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
check-cast v0, Landroid/widget/ListAdapter;
invoke-static {v0}, Landroid/support/v7/view/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Landroid/support/v7/view/menu/MenuAdapter;
move-result-object v1
iget-object v4, v1, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/MenuItem;
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuPopup;->closeMenuOnSubMenuOpened()Z
move-result v3
if-eqz v3, :cond_1d
const/4 v3, 0x0
:goto_19
invoke-virtual {v4, v2, p0, v3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z
return-void
:cond_1d
const/4 v3, 0x4
goto :goto_19
.end method
.method public abstract setAnchorView(Landroid/view/View;)V
.end method
.method public setEpicenterBounds(Landroid/graphics/Rect;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;
return-void
.end method
.method public abstract setForceShowIcon(Z)V
.end method
.method public abstract setGravity(I)V
.end method
.method public abstract setHorizontalOffset(I)V
.end method
.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method
.method public abstract setShowTitle(Z)V
.end method
.method public abstract setVerticalOffset(I)V
.end method