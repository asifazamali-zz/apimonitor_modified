.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "CursorLoader.java"
.field  mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
.field  mCursor:Landroid/database/Cursor;
.field final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
.field  mProjection:[Ljava/lang/String;
.field  mSelection:Ljava/lang/String;
.field  mSelectionArgs:[Ljava/lang/String;
.field  mSortOrder:Ljava/lang/String;
.field  mUri:Landroid/net/Uri;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;
invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V
iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
.registers 8
invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/support/v4/content/Loader$ForceLoadContentObserver;
invoke-direct {v0, p0}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V
iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
iput-object p2, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;
iput-object p3, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;
iput-object p4, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;
iput-object p5, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;
iput-object p6, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;
return-void
.end method
.method public cancelLoadInBackground()V
.registers 2
invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V
monitor-enter p0
:try_start_4
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
invoke-virtual {v0}, Landroid/support/v4/os/CancellationSignal;->cancel()V
:cond_d
monitor-exit p0
return-void
:catchall_f
move-exception v0
monitor-exit p0
:try_end_11
.catchall {:try_start_4 .. :try_end_11} :catchall_f
throw v0
.end method
.method public deliverResult(Landroid/database/Cursor;)V
.registers 4
invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isReset()Z
move-result v1
if-eqz v1, :cond_c
if-eqz p1, :cond_b
invoke-interface {p1}, Landroid/database/Cursor;->close()V
:goto_b
:cond_b
return-void
:cond_c
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isStarted()Z
move-result v1
if-eqz v1, :cond_19
invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V
:cond_19
if-eqz v0, :cond_b
if-eq v0, p1, :cond_b
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v1
if-nez v1, :cond_b
invoke-interface {v0}, Landroid/database/Cursor;->close()V
goto :goto_b
.end method
.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/database/Cursor;
invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V
return-void
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 6
invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mUri="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mProjection="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;
invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mSelection="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mSelectionArgs="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;
invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mSortOrder="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mCursor="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v0, "mContentChanged="
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/content/CursorLoader;->mContentChanged:Z
invoke-static {p3, v0}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
return-void
.end method
.method public getProjection()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;
return-object v0
.end method
.method public getSelection()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;
return-object v0
.end method
.method public getSelectionArgs()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;
return-object v0
.end method
.method public getSortOrder()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;
return-object v0
.end method
.method public getUri()Landroid/net/Uri;
.registers 2
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;
return-object v0
.end method
.method public loadInBackground()Landroid/database/Cursor;
.registers 10
monitor-enter p0
:try_start_1
invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isLoadInBackgroundCanceled()Z
move-result v0
if-eqz v0, :cond_10
new-instance v0, Landroid/support/v4/os/OperationCanceledException;
invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V
throw v0
:catchall_d
move-exception v0
monitor-exit p0
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_d
throw v0
:cond_10
:try_start_10
new-instance v0, Landroid/support/v4/os/CancellationSignal;
invoke-direct {v0}, Landroid/support/v4/os/CancellationSignal;-><init>()V
iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
monitor-exit p0
:try_start_18
:try_end_18
.catchall {:try_start_10 .. :try_end_18} :catchall_d
invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;
iget-object v2, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;
iget-object v3, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;
iget-object v4, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;
iget-object v5, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;
iget-object v6, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
invoke-static/range {v0 .. v6}, Landroid/support/v4/content/ContentResolverCompat;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
:try_end_2f
.catchall {:try_start_18 .. :try_end_2f} :catchall_45
move-result-object v7
if-eqz v7, :cond_3a
:try_start_32
invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
invoke-interface {v7, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
:try_end_3a
.catchall {:try_start_32 .. :try_end_3a} :catchall_45
.catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_3a} :catch_40
:cond_3a
monitor-enter p0
const/4 v0, 0x0
:try_start_3c
iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
monitor-exit p0
:try_end_3f
.catchall {:try_start_3c .. :try_end_3f} :catchall_4c
return-object v7
:catch_40
move-exception v8
:try_start_41
invoke-interface {v7}, Landroid/database/Cursor;->close()V
throw v8
:try_end_45
.catchall {:try_start_41 .. :try_end_45} :catchall_45
:catchall_45
move-exception v0
monitor-enter p0
const/4 v1, 0x0
:try_start_48
iput-object v1, p0, Landroid/support/v4/content/CursorLoader;->mCancellationSignal:Landroid/support/v4/os/CancellationSignal;
monitor-exit p0
:try_end_4b
.catchall {:try_start_48 .. :try_end_4b} :catchall_4f
throw v0
:catchall_4c
move-exception v0
:try_start_4d
monitor-exit p0
:try_end_4e
.catchall {:try_start_4d .. :try_end_4e} :catchall_4c
throw v0
:catchall_4f
move-exception v0
:try_start_50
monitor-exit p0
:try_end_51
.catchall {:try_start_50 .. :try_end_51} :catchall_4f
throw v0
.end method
.method public bridge synthetic loadInBackground()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method
.method public onCanceled(Landroid/database/Cursor;)V
.registers 3
if-eqz p1, :cond_b
invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z
move-result v0
if-nez v0, :cond_b
invoke-interface {p1}, Landroid/database/Cursor;->close()V
:cond_b
return-void
.end method
.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/database/Cursor;
invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V
return-void
.end method
.method protected onReset()V
.registers 2
invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V
invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->onStopLoading()V
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
invoke-interface {v0}, Landroid/database/Cursor;->close()V
:cond_17
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
return-void
.end method
.method protected onStartLoading()V
.registers 2
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
invoke-virtual {p0, v0}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V
:cond_9
invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->takeContentChanged()Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;
if-nez v0, :cond_16
:cond_13
invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->forceLoad()V
:cond_16
return-void
.end method
.method protected onStopLoading()V
.registers 1
invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z
return-void
.end method
.method public setProjection([Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;
return-void
.end method
.method public setSelection(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;
return-void
.end method
.method public setSelectionArgs([Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;
return-void
.end method
.method public setSortOrder(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;
return-void
.end method
.method public setUri(Landroid/net/Uri;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;
return-void
.end method