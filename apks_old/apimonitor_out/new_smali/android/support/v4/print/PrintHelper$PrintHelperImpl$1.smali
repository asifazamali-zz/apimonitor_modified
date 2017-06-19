.class  Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;
.super Ljava/lang/Object;
.source "PrintHelper.java"
.implements Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
.field final synthetic this$0:Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
.field final synthetic val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
.method constructor <init>(Landroid/support/v4/print/PrintHelper$PrintHelperImpl;Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;->this$0:Landroid/support/v4/print/PrintHelper$PrintHelperImpl;
iput-object p2, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFinish()V
.registers 2
iget-object v0, p0, Landroid/support/v4/print/PrintHelper$PrintHelperImpl$1;->val$callback:Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;
invoke-interface {v0}, Landroid/support/v4/print/PrintHelper$OnPrintFinishCallback;->onFinish()V
return-void
.end method