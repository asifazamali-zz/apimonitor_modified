.class final Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;
.method constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 6
const/16 v3, 0x6c
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
if-eqz v0, :cond_19
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mDecorToolbar:Landroid/support/v7/widget/DecorToolbar;
invoke-interface {v0}, Landroid/support/v7/widget/DecorToolbar;->isOverflowMenuShowing()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
:goto_19
:cond_19
return-void
:cond_1a
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-interface {v0, v1, v2, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$MenuBuilderCallback;->this$0:Landroid/support/v7/app/ToolbarActionBar;
iget-object v0, v0, Landroid/support/v7/app/ToolbarActionBar;->mWindowCallback:Landroid/view/Window$Callback;
invoke-interface {v0, v3, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
goto :goto_19
.end method