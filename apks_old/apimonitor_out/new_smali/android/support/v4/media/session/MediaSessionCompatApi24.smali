.class  Landroid/support/v4/media/session/MediaSessionCompatApi24;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi24.java"
.field private static final TAG:Ljava/lang/String; = "MediaSessionCompatApi24"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)Ljava/lang/Object;
.registers 2
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V
return-object v0
.end method
.method public static getCallingPackage(Ljava/lang/Object;)Ljava/lang/String;
.registers 7
move-object v2, p0
check-cast v2, Landroid/media/session/MediaSession;
:try_start_3
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
const-string v4, "getCallingPackage"
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/Class;
invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
:try_end_19
.catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_19} :catch_24
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_19} :catch_26
.catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_19} :catch_1a
:goto_19
return-object v3
:catch_1a
move-exception v0
:goto_1b
const-string v3, "MediaSessionCompatApi24"
const-string v4, "Cannot execute MediaSession.getCallingPackage()"
invoke-static {v3, v4, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v3, 0x0
goto :goto_19
:catch_24
move-exception v0
goto :goto_1b
:catch_26
move-exception v0
goto :goto_1b
.end method