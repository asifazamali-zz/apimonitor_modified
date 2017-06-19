.class  Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImplBase;
.super Ljava/lang/Object;
.source "ContentResolverCompat.java"
.implements Landroid/support/v4/content/ContentResolverCompat$ContentResolverCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/CancellationSignal;)Landroid/database/Cursor;
.registers 9
if-eqz p7, :cond_5
invoke-virtual {p7}, Landroid/support/v4/os/CancellationSignal;->throwIfCanceled()V
:cond_5
invoke-static/range {p1 .. p6}, Ldroidbox/android/content/ContentResolver;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v0
return-object v0
.end method