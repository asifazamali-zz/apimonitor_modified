.class public Landroid/support/v4/app/NotificationCompatBase;
.super Ljava/lang/Object;
.source "NotificationCompatBase.java"
.field private static sSetLatestEventInfo:Ljava/lang/reflect/Method;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static add(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Landroid/app/Notification;
.registers 12
sget-object v1, Landroid/support/v4/app/NotificationCompatBase;->sSetLatestEventInfo:Ljava/lang/reflect/Method;
if-nez v1, :cond_25
:try_start_4
const-class v1, Landroid/app/Notification;
const-string v2, "setLatestEventInfo"
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
const-class v5, Landroid/content/Context;
aput-object v5, v3, v4
const/4 v4, 0x1
const-class v5, Ljava/lang/CharSequence;
aput-object v5, v3, v4
const/4 v4, 0x2
const-class v5, Ljava/lang/CharSequence;
aput-object v5, v3, v4
const/4 v4, 0x3
const-class v5, Landroid/app/PendingIntent;
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sput-object v1, Landroid/support/v4/app/NotificationCompatBase;->sSetLatestEventInfo:Ljava/lang/reflect/Method;
:cond_25
:try_end_25
.catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_25} :catch_3c
:try_start_25
sget-object v1, Landroid/support/v4/app/NotificationCompatBase;->sSetLatestEventInfo:Ljava/lang/reflect/Method;
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
const/4 v3, 0x1
aput-object p2, v2, v3
const/4 v3, 0x2
aput-object p3, v2, v3
const/4 v3, 0x3
aput-object p4, v2, v3
invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_39
.catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_39} :catch_43
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_39} :catch_4a
iput-object p5, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;
return-object p0
:catch_3c
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_43
move-exception v0
:goto_44
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_4a
move-exception v0
goto :goto_44
.end method