.class  Landroid/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;
.super Landroid/support/v7/view/menu/BaseWrapper;
.source "MenuItemWrapperICS.java"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;
.method constructor <init>(Landroid/support/v7/view/menu/MenuItemWrapperICS;Landroid/view/MenuItem$OnMenuItemClickListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;
invoke-direct {p0, p2}, Landroid/support/v7/view/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->mWrappedObject:Ljava/lang/Object;
check-cast v0, Landroid/view/MenuItem$OnMenuItemClickListener;
iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemWrapperICS$OnMenuItemClickListenerWrapper;->this$0:Landroid/support/v7/view/menu/MenuItemWrapperICS;
invoke-virtual {v1, p1}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
move-result-object v1
invoke-interface {v0, v1}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method