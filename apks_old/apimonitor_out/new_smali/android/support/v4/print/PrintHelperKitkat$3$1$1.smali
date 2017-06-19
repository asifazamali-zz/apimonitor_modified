.class  Landroid/support/v4/print/PrintHelperKitkat$3$1$1;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"
.implements Landroid/os/CancellationSignal$OnCancelListener;
.field final synthetic this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat$3$1;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel()V
.registers 3
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;
iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat$3$1;->this$1:Landroid/support/v4/print/PrintHelperKitkat$3;
#calls: Landroid/support/v4/print/PrintHelperKitkat$3;->cancelLoad()V
invoke-static {v0}, Landroid/support/v4/print/PrintHelperKitkat$3;->access$300(Landroid/support/v4/print/PrintHelperKitkat$3;)V
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$3$1$1;->this$2:Landroid/support/v4/print/PrintHelperKitkat$3$1;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelperKitkat$3$1;->cancel(Z)Z
return-void
.end method