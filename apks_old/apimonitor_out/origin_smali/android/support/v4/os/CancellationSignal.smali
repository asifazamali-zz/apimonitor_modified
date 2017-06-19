.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 2

    :goto_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v0, :cond_a

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    :catch_8
    move-exception v0

    goto :goto_0

    :cond_a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v2, :cond_7

    monitor-exit p0

    :goto_6
    return-void

    :cond_7
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    iget-object v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_28

    if-eqz v0, :cond_17

    :try_start_14
    invoke-interface {v0}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    :cond_17
    if-eqz v1, :cond_1c

    invoke-static {v1}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_2b

    :cond_1c
    monitor-enter p0

    const/4 v2, 0x0

    :try_start_1e
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto :goto_6

    :catchall_25
    move-exception v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    throw v2

    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v2

    :catchall_2b
    move-exception v2

    monitor-enter p0

    const/4 v3, 0x0

    :try_start_2e
    iput-boolean v3, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_35

    throw v2

    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    monitor-enter p0

    :try_start_9
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_1c

    invoke-static {}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V

    :cond_1c
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    monitor-exit p0

    goto :goto_7

    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/support/v4/os/CancellationSignal;->waitForCancelFinishedLocked()V

    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_a

    monitor-exit p0

    :goto_9
    return-void

    :cond_a
    iput-object p1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_12

    if-nez p1, :cond_17

    :cond_12
    monitor-exit p0

    goto :goto_9

    :catchall_14
    move-exception v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :try_start_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_14

    invoke-interface {p1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_9
.end method

.method public throwIfCanceled()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0

    :cond_c
    return-void
.end method
