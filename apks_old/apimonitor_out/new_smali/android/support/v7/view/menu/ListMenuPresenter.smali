.class public Landroid/support/v7/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"
.implements Landroid/support/v7/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"
.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"
.field  mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
.field private mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
.field  mContext:Landroid/content/Context;
.field private mId:I
.field  mInflater:Landroid/view/LayoutInflater;
.field  mItemIndexOffset:I
.field  mItemLayoutRes:I
.field  mMenu:Landroid/support/v7/view/menu/MenuBuilder;
.field  mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
.field  mThemeRes:I
.method public constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mItemLayoutRes:I
iput p2, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mThemeRes:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p2, v0}, Landroid/support/v7/view/menu/ListMenuPresenter;-><init>(II)V
iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;
return-void
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
.method public flagActionItems()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getAdapter()Landroid/widget/ListAdapter;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
invoke-direct {v0, p0}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroid/support/v7/view/menu/ListMenuPresenter;)V
iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
:cond_b
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
return-object v0
.end method
.method public getId()I
.registers 2
iget v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mId:I
return v0
.end method
.method  getItemIndexOffset()I
.registers 2
iget v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mItemIndexOffset:I
return v0
.end method
.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/view/menu/MenuView;
.registers 5
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
if-nez v0, :cond_28
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;
sget v1, Landroid/support/v7/appcompat/R$layout;->abc_expanded_menu_layout:I
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/ExpandedMenuView;
iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
if-nez v0, :cond_1c
new-instance v0, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
invoke-direct {v0, p0}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroid/support/v7/view/menu/ListMenuPresenter;)V
iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
:cond_1c
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
invoke-virtual {v0, p0}, Landroid/support/v7/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
:cond_28
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
return-object v0
.end method
.method public initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 5
iget v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mThemeRes:I
if-eqz v0, :cond_21
new-instance v0, Landroid/view/ContextThemeWrapper;
iget v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mThemeRes:I
invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;
:goto_15
:cond_15
iput-object p2, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
if-eqz v0, :cond_20
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V
:cond_20
return-void
:cond_21
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;
if-eqz v0, :cond_15
iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;
if-nez v0, :cond_15
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;
goto :goto_15
.end method
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
.registers 4
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
:cond_9
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
invoke-virtual {v1, p3}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z
return-void
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 2
check-cast p1, Landroid/os/Bundle;
invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V
return-void
.end method
.method public onSaveInstanceState()Landroid/os/Parcelable;
.registers 3
iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
if-nez v1, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V
goto :goto_5
.end method
.method public onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
.registers 4
invoke-virtual {p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->hasVisibleItems()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
new-instance v0, Landroid/support/v7/view/menu/MenuDialogHelper;
invoke-direct {v0, p1}, Landroid/support/v7/view/menu/MenuDialogHelper;-><init>(Landroid/support/v7/view/menu/MenuBuilder;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
if-eqz v0, :cond_1a
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
:cond_1a
const/4 v0, 0x1
goto :goto_7
.end method
.method public restoreHierarchyState(Landroid/os/Bundle;)V
.registers 4
const-string v1, "android:menu:list"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v0
if-eqz v0, :cond_d
iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V
:cond_d
return-void
.end method
.method public saveHierarchyState(Landroid/os/Bundle;)V
.registers 4
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
if-eqz v1, :cond_e
iget-object v1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V
:cond_e
const-string v1, "android:menu:list"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
return-void
.end method
.method public setCallback(Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mCallback:Landroid/support/v7/view/menu/MenuPresenter$Callback;
return-void
.end method
.method public setId(I)V
.registers 2
iput p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mId:I
return-void
.end method
.method public setItemIndexOffset(I)V
.registers 3
iput p1, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mItemIndexOffset:I
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/view/menu/ExpandedMenuView;
if-eqz v0, :cond_a
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ListMenuPresenter;->updateMenuView(Z)V
:cond_a
return-void
.end method
.method public updateMenuView(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;
invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V
:cond_9
return-void
.end method