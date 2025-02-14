.class public Landroid/support/v7/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"
.field static final ITEM_LAYOUT:I
.field  mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
.field private mExpandedIndex:I
.field private mForceShowIcon:Z
.field private final mInflater:Landroid/view/LayoutInflater;
.field private final mOverflowOnly:Z
.method static constructor <clinit>()V
.registers 1
sget v0, Landroid/support/v7/appcompat/R$layout;->abc_popup_menu_item_layout:I
sput v0, Landroid/support/v7/view/menu/MenuAdapter;->ITEM_LAYOUT:I
return-void
.end method
.method public constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V
.registers 5
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v0, -0x1
iput v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I
iput-boolean p3, p0, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z
iput-object p2, p0, Landroid/support/v7/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;
iput-object p1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuAdapter;->findExpandedIndex()V
return-void
.end method
.method  findExpandedIndex()V
.registers 7
iget-object v5, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v1
if-eqz v1, :cond_23
iget-object v5, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;
move-result-object v4
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v2, 0x0
:goto_13
if-ge v2, v0, :cond_23
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;
if-ne v3, v1, :cond_20
iput v2, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I
:goto_1f
return-void
:cond_20
add-int/lit8 v2, v2, 0x1
goto :goto_13
:cond_23
const/4 v5, -0x1
iput v5, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I
goto :goto_1f
.end method
.method public getAdapterMenu()Landroid/support/v7/view/menu/MenuBuilder;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
return-object v0
.end method
.method public getCount()I
.registers 3
iget-boolean v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z
if-eqz v1, :cond_13
iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;
move-result-object v0
:goto_a
iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I
if-gez v1, :cond_1a
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
:goto_12
return v1
:cond_13
iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;
move-result-object v0
goto :goto_a
:cond_1a
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
goto :goto_12
.end method
.method public getForceShowIcon()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z
return v0
.end method
.method public getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
.registers 4
iget-boolean v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z
if-eqz v1, :cond_1b
iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;
move-result-object v0
:goto_a
iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I
if-ltz v1, :cond_14
iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I
if-lt p1, v1, :cond_14
add-int/lit8 p1, p1, 0x1
:cond_14
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
return-object v1
:cond_1b
iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;
move-result-object v0
goto :goto_a
.end method
.method public bridge synthetic getItem(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
if-nez p2, :cond_b
iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;
sget v2, Landroid/support/v7/view/menu/MenuAdapter;->ITEM_LAYOUT:I
invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
:cond_b
move-object v0, p2
check-cast v0, Landroid/support/v7/view/menu/MenuView$ItemView;
iget-boolean v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z
if-eqz v1, :cond_19
move-object v1, p2
check-cast v1, Landroid/support/v7/view/menu/ListMenuItemView;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V
:cond_19
invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v1
invoke-interface {v0, v1, v3}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
return-object p2
.end method
.method public notifyDataSetChanged()V
.registers 1
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuAdapter;->findExpandedIndex()V
invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public setForceShowIcon(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z
return-void
.end method