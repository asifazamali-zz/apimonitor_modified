.class  Landroid/support/v7/widget/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.field final synthetic this$0:Landroid/support/v7/widget/PopupMenu;
.method constructor <init>(Landroid/support/v7/widget/PopupMenu;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;
iget-object v0, v0, Landroid/support/v7/widget/PopupMenu;->mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$1;->this$0:Landroid/support/v7/widget/PopupMenu;
iget-object v0, v0, Landroid/support/v7/widget/PopupMenu;->mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
invoke-interface {v0, p2}, Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 2
return-void
.end method