.class  Landroid/support/v4/app/NotificationManagerCompatKitKat;
.super Ljava/lang/Object;
.source "NotificationManagerCompatKitKat.java"
.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"
.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static areNotificationsEnabled(Landroid/content/Context;)Z
.registers 16
const/4 v11, 0x0
const/4 v10, 0x1
const-string v9, "appops"
invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/app/AppOpsManager;
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v9
invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v6
iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I
:try_start_18
const-class v9, Landroid/app/AppOpsManager;
invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
const-string v9, "checkOpNoThrow"
const/4 v12, 0x3
new-array v12, v12, [Ljava/lang/Class;
const/4 v13, 0x0
sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v14, v12, v13
const/4 v13, 0x1
sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v14, v12, v13
const/4 v13, 0x2
const-class v14, Ljava/lang/String;
aput-object v14, v12, v13
invoke-virtual {v2, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
const-string v9, "OP_POST_NOTIFICATION"
invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v5
const-class v9, Ljava/lang/Integer;
invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Integer;
invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
move-result v8
const/4 v9, 0x3
new-array v9, v9, [Ljava/lang/Object;
const/4 v12, 0x0
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v9, v12
const/4 v12, 0x1
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v9, v12
const/4 v12, 0x2
aput-object v6, v9, v12
invoke-virtual {v3, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Integer;
invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
:try_end_69
.catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_69} :catch_70
.catch Ljava/lang/NoSuchMethodException; {:try_start_18 .. :try_end_69} :catch_79
.catch Ljava/lang/NoSuchFieldException; {:try_start_18 .. :try_end_69} :catch_75
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_69} :catch_7b
.catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_69} :catch_77
.catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_69} :catch_73
move-result v9
if-nez v9, :cond_6e
move v9, v10
:goto_6d
return v9
:cond_6e
move v9, v11
goto :goto_6d
:catch_70
move-exception v4
:goto_71
move v9, v10
goto :goto_6d
:catch_73
move-exception v4
goto :goto_71
:catch_75
move-exception v4
goto :goto_71
:catch_77
move-exception v4
goto :goto_71
:catch_79
move-exception v4
goto :goto_71
:catch_7b
move-exception v4
goto :goto_71
.end method