.class  Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;
.super Landroid/support/v7/view/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"
.implements Landroid/support/v4/view/MenuItemCompat$OnActionExpandListener;
.field final synthetic this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;
.method constructor <init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnActionExpandListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;
invoke-direct {p0, p2}, Landroid/support/v7/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;
iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;
invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
move-result-object v1
invoke-interface {v0, v1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem$OnActionExpandListener;
iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnActionExpandListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;
invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
move-result-object v1
invoke-interface {v0, v1}, Landroid/view/MenuItem$OnActionExpandListener;->onMenuItemActionExpand(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method