.class  Landroid/support/v4/app/Fragment$1;
.super Ljava/lang/Object;
.source "Fragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v4/app/Fragment;
.method constructor <init>(Landroid/support/v4/app/Fragment;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/Fragment$1;->this$0:Landroid/support/v4/app/Fragment;
#calls: Landroid/support/v4/app/Fragment;->callStartTransitionListener()V
invoke-static {v0}, Landroid/support/v4/app/Fragment;->access$800(Landroid/support/v4/app/Fragment;)V
return-void
.end method