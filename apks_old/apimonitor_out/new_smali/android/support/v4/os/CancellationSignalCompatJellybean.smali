.class  Landroid/support/v4/os/CancellationSignalCompatJellybean;
.super Ljava/lang/Object;
.source "CancellationSignalCompatJellybean.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static cancel(Ljava/lang/Object;)V
.registers 1
check-cast p0, Landroid/os/CancellationSignal;
invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V
return-void
.end method
.method public static create()Ljava/lang/Object;
.registers 1
new-instance v0, Landroid/os/CancellationSignal;
invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V
return-object v0
.end method