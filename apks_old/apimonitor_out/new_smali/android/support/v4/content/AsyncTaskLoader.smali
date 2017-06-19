.class public abstract Landroid/support/v4/content/AsyncTaskLoader;
.super Landroid/support/v4/content/Loader;
.source "AsyncTaskLoader.java"
.field static final DEBUG:Z = false
.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"
.field volatile mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
.field private final mExecutor:Ljava/util/concurrent/Executor;
.field  mHandler:Landroid/os/Handler;
.field  mLastLoadCompleteTime:J
.field volatile mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
.field  mUpdateThrottle:J
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;
invoke-direct {p0, p1, v0}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
.registers 5
invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V
const-wide/16 v0, -0x2710
iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J
iput-object p2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;
return-void
.end method
.method public cancelLoadInBackground()V
.registers 1
return-void
.end method
.method  dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
.registers 5
invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-ne v0, p1, :cond_19
invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->rollbackContentChanged()V
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->deliverCancellation()V
invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V
:cond_19
return-void
.end method
.method  dispatchOnLoadComplete(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-eq v0, p1, :cond_8
invoke-virtual {p0, p1, p2}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
:goto_7
return-void
:cond_8
invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->isAbandoned()Z
move-result v0
if-eqz v0, :cond_12
invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V
goto :goto_7
:cond_12
invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->commitContentChanged()V
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V
goto :goto_7
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 9
invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-eqz v0, :cond_20
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mTask="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/Object;)V
const-string v0, " waiting="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
:cond_20
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-eqz v0, :cond_3d
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mCancellingTask="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/Object;)V
const-string v0, " waiting="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
:cond_3d
iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_63
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mUpdateThrottle="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J
invoke-static {v0, v1, p3}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V
const-string v0, " mLastLoadCompleteTime="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v2
invoke-static {v0, v1, v2, v3, p3}, Landroid/support/v4/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V
invoke-static {p3}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;)V
:cond_63
return-void
.end method
.method  executePendingTask()V
.registers 9
iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-nez v2, :cond_40
iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-eqz v2, :cond_40
iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iget-boolean v2, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
if-eqz v2, :cond_1a
iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
const/4 v3, 0x0
iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;
iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_1a
iget-wide v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_41
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iget-wide v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J
iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J
add-long/2addr v2, v4
cmp-long v2, v0, v2
if-gez v2, :cond_41
iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
const/4 v3, 0x1
iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;
iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J
iget-wide v6, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J
add-long/2addr v4, v6
invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z
:cond_40
:goto_40
return-void
:cond_41
iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iget-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;
const/4 v2, 0x0
check-cast v2, [Ljava/lang/Void;
invoke-virtual {v3, v4, v2}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;
goto :goto_40
.end method
.method public isLoadInBackgroundCanceled()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public abstract loadInBackground()Ljava/lang/Object;
.end method
.method protected onCancelLoad()Z
.registers 5
const/4 v3, 0x0
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-eqz v1, :cond_24
iget-boolean v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mStarted:Z
if-nez v1, :cond_d
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mContentChanged:Z
:cond_d
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-eqz v1, :cond_25
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
if-eqz v1, :cond_22
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iput-boolean v0, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;
iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
:cond_22
iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
:goto_24
:cond_24
return v0
:cond_25
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
if-eqz v1, :cond_39
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iput-boolean v0, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;
iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
goto :goto_24
:cond_39
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-virtual {v1, v0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z
move-result v0
if-eqz v0, :cond_48
iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
iput-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V
:cond_48
iput-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
goto :goto_24
.end method
.method public onCanceled(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method protected onForceLoad()V
.registers 2
invoke-super {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V
invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoad()Z
new-instance v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-direct {v0, p0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/support/v4/content/AsyncTaskLoader;)V
iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V
return-void
.end method
.method protected onLoadInBackground()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public setUpdateThrottle(J)V
.registers 6
iput-wide p1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J
const-wide/16 v0, 0x0
cmp-long v0, p1, v0
if-eqz v0, :cond_f
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;
:cond_f
return-void
.end method
.method public waitForLoader()V
.registers 2
iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
if-eqz v0, :cond_7
invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waitForLoader()V
:cond_7
return-void
.end method