.class  Landroid/support/v7/widget/AbsActionBarView$1;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/widget/AbsActionBarView;
.method constructor <init>(Landroid/support/v7/widget/AbsActionBarView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView$1;->this$0:Landroid/support/v7/widget/AbsActionBarView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$1;->this$0:Landroid/support/v7/widget/AbsActionBarView;
invoke-virtual {v0}, Landroid/support/v7/widget/AbsActionBarView;->showOverflowMenu()Z
return-void
.end method