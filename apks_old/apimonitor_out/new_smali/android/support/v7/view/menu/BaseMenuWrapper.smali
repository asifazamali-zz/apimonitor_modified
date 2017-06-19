.class abstract Landroid/support/v7/view/menu/BaseMenuWrapper;
.super Landroid/support/v7/view/menu/BaseWrapper;
.source "BaseMenuWrapper.java"
.field final mContext:Landroid/content/Context;
.field private mMenuItems:Ljava/util/Map;
.field private mSubMenus:Ljava/util/Map;
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0, p2}, Landroid/support/v7/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V
iput-object p1, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;
return-void
.end method
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
.registers 5
instance-of v2, p1, Landroid/support/v4/internal/view/SupportMenuItem;
if-eqz v2, :cond_28
move-object v0, p1
check-cast v0, Landroid/support/v4/internal/view/SupportMenuItem;
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
if-nez v2, :cond_12
new-instance v2, Landroid/support/v4/util/ArrayMap;
invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V
iput-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
:cond_12
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/MenuItem;
if-nez v1, :cond_27
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;
invoke-static {v2, v0}, Landroid/support/v7/view/menu/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Landroid/support/v4/internal/view/SupportMenuItem;)Landroid/view/MenuItem;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_27
:cond_27
return-object v1
:cond_28
move-object v1, p1
goto :goto_27
.end method
.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
.registers 5
instance-of v2, p1, Landroid/support/v4/internal/view/SupportSubMenu;
if-eqz v2, :cond_28
move-object v0, p1
check-cast v0, Landroid/support/v4/internal/view/SupportSubMenu;
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;
if-nez v2, :cond_12
new-instance v2, Landroid/support/v4/util/ArrayMap;
invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V
iput-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;
:cond_12
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/SubMenu;
if-nez v1, :cond_27
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mContext:Landroid/content/Context;
invoke-static {v2, v0}, Landroid/support/v7/view/menu/MenuWrapperFactory;->wrapSupportSubMenu(Landroid/content/Context;Landroid/support/v4/internal/view/SupportSubMenu;)Landroid/view/SubMenu;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;
invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_27
:cond_27
return-object v1
:cond_28
move-object v1, p1
goto :goto_27
.end method
.method final internalClear()V
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
:cond_9
iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mSubMenus:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
:cond_12
return-void
.end method
.method final internalRemoveGroup(I)V
.registers 5
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
if-nez v2, :cond_5
:cond_4
return-void
:cond_5
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_f
:cond_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_4
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/MenuItem;
invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I
move-result v2
if-ne p1, v2, :cond_f
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
goto :goto_f
.end method
.method final internalRemoveItem(I)V
.registers 5
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
if-nez v2, :cond_5
:cond_4
:goto_4
return-void
:cond_5
iget-object v2, p0, Landroid/support/v7/view/menu/BaseMenuWrapper;->mMenuItems:Ljava/util/Map;
invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_4
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/MenuItem;
invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I
move-result v2
if-ne p1, v2, :cond_f
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
goto :goto_4
.end method