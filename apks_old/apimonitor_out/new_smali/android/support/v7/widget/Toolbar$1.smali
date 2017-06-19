.class  Landroid/support/v7/widget/Toolbar$1;
.super Ljava/lang/Object;
.source "Toolbar.java"
.implements Landroid/support/v7/widget/ActionMenuView$OnMenuItemClickListener;
.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/Toolbar$1;->this$0:Landroid/support/v7/widget/Toolbar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/Toolbar$1;->this$0:Landroid/support/v7/widget/Toolbar;
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/widget/Toolbar$1;->this$0:Landroid/support/v7/widget/Toolbar;
iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->mOnMenuItemClickListener:Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;
invoke-interface {v0, p1}, Landroid/support/v7/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method