.class  Landroid/support/v7/widget/Toolbar$2;
.super Ljava/lang/Object;
.source "Toolbar.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/widget/Toolbar;
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/Toolbar$2;->this$0:Landroid/support/v7/widget/Toolbar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/Toolbar$2;->this$0:Landroid/support/v7/widget/Toolbar;
invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->showOverflowMenu()Z
return-void
.end method