.class public final Landroid/support/v4/os/AsyncTaskCompat;
.super Ljava/lang/Object;
.source "AsyncTaskCompat.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static varargs executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "task can not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_14
invoke-static {p0, p1}, Landroid/support/v4/os/AsyncTaskCompatHoneycomb;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
:goto_13
return-object p0
:cond_14
invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_13
.end method