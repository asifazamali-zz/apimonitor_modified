.class  Landroid/support/v4/content/ExecutorCompatHoneycomb;
.super Ljava/lang/Object;
.source "ExecutorCompatHoneycomb.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getParallelExecutor()Ljava/util/concurrent/Executor;
.registers 1
sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
return-object v0
.end method