.class  Landroid/support/v7/widget/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"
.implements Landroid/widget/PopupWindow$OnDismissListener;
.field final synthetic this$0:Landroid/support/v7/widget/PopupMenu;
.method constructor <init>(Landroid/support/v7/widget/PopupMenu;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/PopupMenu$2;->this$0:Landroid/support/v7/widget/PopupMenu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDismiss()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$2;->this$0:Landroid/support/v7/widget/PopupMenu;
iget-object v0, v0, Landroid/support/v7/widget/PopupMenu;->mOnDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/widget/PopupMenu$2;->this$0:Landroid/support/v7/widget/PopupMenu;
iget-object v0, v0, Landroid/support/v7/widget/PopupMenu;->mOnDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;
iget-object v1, p0, Landroid/support/v7/widget/PopupMenu$2;->this$0:Landroid/support/v7/widget/PopupMenu;
invoke-interface {v0, v1}, Landroid/support/v7/widget/PopupMenu$OnDismissListener;->onDismiss(Landroid/support/v7/widget/PopupMenu;)V
:cond_f
return-void
.end method