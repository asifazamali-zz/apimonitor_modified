.class  Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplJB;
.super Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;
.source "ContentResolverCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;-><init>()V
return-void
.end method
.method public query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
.registers 16
if-eqz p7, :cond_11
:try_start_2
invoke-virtual {p7}, Landroid/support/v4/os/CancellationSignal;->getCancellationSignalObject()Ljava/lang/Object;
move-result-object v6
:goto_6
move-object v0, p1
move-object v1, p2
move-object v2, p3
move-object v3, p4
move-object v4, p5
move-object v5, p6
invoke-static/range {v0 .. v6}, Landroid/support/v4/content/ContentResolverCompatJellybean;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Landroid/database/Cursor;
:try_end_f
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_13
move-result-object v0
return-object v0
:cond_11
const/4 v6, 0x0
goto :goto_6
:catch_13
move-exception v7
invoke-static {v7}, Landroid/support/v4/content/ContentResolverCompatJellybean;->isFrameworkOperationCanceledException(Ljava/lang/Exception;)Z
move-result v0
if-eqz v0, :cond_20
new-instance v0, Landroid/support/v4/os/OperationCanceledException;
invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V
throw v0
:cond_20
throw v7
.end method