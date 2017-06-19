.class final Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;
.method constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
.registers 5
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
const/4 v1, 0x0
invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
:cond_e
return-void
.end method
.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
.registers 4
if-nez p1, :cond_10
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$PanelMenuPresenterCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
const/4 v1, 0x0
invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
:cond_10
const/4 v0, 0x1
return v0
.end method