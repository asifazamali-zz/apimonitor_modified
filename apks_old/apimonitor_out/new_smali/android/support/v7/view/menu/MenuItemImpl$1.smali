.class  Landroid/support/v7/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"
.implements Landroid/support/v4/view/ActionProvider$VisibilityListener;
.field final synthetic this$0:Landroid/support/v7/view/menu/MenuItemImpl;
.method constructor <init>(Landroid/support/v7/view/menu/MenuItemImpl;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/MenuItemImpl$1;->this$0:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onActionProviderVisibilityChanged(Z)V
.registers 4
iget-object v0, p0, Landroid/support/v7/view/menu/MenuItemImpl$1;->this$0:Landroid/support/v7/view/menu/MenuItemImpl;
iget-object v0, v0, Landroid/support/v7/view/menu/MenuItemImpl;->mMenu:Landroid/support/v7/view/menu/MenuBuilder;
iget-object v1, p0, Landroid/support/v7/view/menu/MenuItemImpl$1;->this$0:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
return-void
.end method