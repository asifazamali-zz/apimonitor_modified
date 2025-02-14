.class public Landroid/support/v4/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"
.field private static final DIR_ANDROID:Ljava/lang/String; = "Android"
.field private static final DIR_OBB:Ljava/lang/String; = "obb"
.field private static final TAG:Ljava/lang/String; = "ContextCompat"
.field private static final sLock:Ljava/lang/Object;
.field private static sTempValue:Landroid/util/TypedValue;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Landroid/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;
return-void
.end method
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static varargs buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
.registers 7
move-object v0, p0
array-length v4, p1
const/4 v3, 0x0
move-object v1, v0
:goto_4
if-ge v3, v4, :cond_1b
aget-object v2, p1, v3
if-nez v1, :cond_13
new-instance v0, Ljava/io/File;
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:goto_f
add-int/lit8 v3, v3, 0x1
move-object v1, v0
goto :goto_4
:cond_13
if-eqz v2, :cond_1c
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
goto :goto_f
:cond_1b
return-object v1
:cond_1c
move-object v0, v1
goto :goto_f
.end method
.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
.registers 4
.parameter
.end parameter
.parameter
.end parameter
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "permission is null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v0
invoke-static {}, Landroid/os/Process;->myUid()I
move-result v1
invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I
move-result v0
return v0
.end method
.method public static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
.registers 2
invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z
move-result v0
if-eqz v0, :cond_b
invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi24;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method private static declared-synchronized createFilesDir(Ljava/io/File;)Ljava/io/File;
.registers 5
const-class v1, Landroid/support/v4/content/ContextCompat;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_15
invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
move-result v0
if-nez v0, :cond_15
invoke-virtual {p0}, Ljava/io/File;->exists()Z
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_35
move-result v0
if-eqz v0, :cond_17
:cond_15
:goto_15
monitor-exit v1
return-object p0
:cond_17
:try_start_17
const-string v0, "ContextCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unable to create files subdir "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:try_end_33
.catchall {:try_start_17 .. :try_end_33} :catchall_35
const/4 p0, 0x0
goto :goto_15
:catchall_35
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
.registers 6
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x15
if-lt v1, v2, :cond_b
invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi21;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v2
:goto_a
return-object v2
:cond_b
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
new-instance v2, Ljava/io/File;
iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
const-string v4, "code_cache"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;
move-result-object v2
goto :goto_a
.end method
.method public static final getColor(Landroid/content/Context;I)I
.registers 4
.parameter
.end parameter
.parameter
.end parameter
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-lt v0, v1, :cond_b
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColor(Landroid/content/Context;I)I
move-result v1
:goto_a
return v1
:cond_b
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
goto :goto_a
.end method
.method public static final getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
.registers 4
.parameter
.end parameter
.parameter
.end parameter
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-lt v0, v1, :cond_b
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi23;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v1
:goto_a
return-object v1
:cond_b
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v1
goto :goto_a
.end method
.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
.registers 3
invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z
move-result v1
if-eqz v1, :cond_b
invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi24;->getDataDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
:goto_a
return-object v1
:cond_b
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v1
iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
if-eqz v0, :cond_19
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
goto :goto_a
:cond_19
const/4 v1, 0x0
goto :goto_a
.end method
.method public static final getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
.registers 8
.parameter
.end parameter
.parameter
.end parameter
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x15
if-lt v1, v2, :cond_b
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatApi21;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v2
:goto_a
return-object v2
:cond_b
const/16 v2, 0x10
if-lt v1, v2, :cond_18
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
goto :goto_a
:cond_18
sget-object v3, Landroid/support/v4/content/ContextCompat;->sLock:Ljava/lang/Object;
monitor-enter v3
:try_start_1b
sget-object v2, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;
if-nez v2, :cond_26
new-instance v2, Landroid/util/TypedValue;
invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V
sput-object v2, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;
:cond_26
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
sget-object v4, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;
const/4 v5, 0x1
invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
sget-object v2, Landroid/support/v4/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;
iget v0, v2, Landroid/util/TypedValue;->resourceId:I
monitor-exit v3
:try_end_35
.catchall {:try_start_1b .. :try_end_35} :catchall_3e
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
goto :goto_a
:catchall_3e
move-exception v2
:try_start_3f
monitor-exit v3
:try_end_40
.catchall {:try_start_3f .. :try_end_40} :catchall_3e
throw v2
.end method
.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_b
invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
move-result-object v1
:goto_a
return-object v1
:cond_b
const/4 v1, 0x1
new-array v1, v1, [Ljava/io/File;
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v3
aput-object v3, v1, v2
goto :goto_a
.end method
.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
.registers 6
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_b
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatKitKat;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
move-result-object v1
:goto_a
return-object v1
:cond_b
const/4 v1, 0x1
new-array v1, v1, [Ljava/io/File;
const/4 v2, 0x0
invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
move-result-object v3
aput-object v3, v1, v2
goto :goto_a
.end method
.method public static final getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
.registers 6
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x15
if-lt v1, v2, :cond_b
invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi21;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v2
:goto_a
return-object v2
:cond_b
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
new-instance v2, Ljava/io/File;
iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;
const-string v4, "no_backup"
invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v2}, Landroid/support/v4/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;
move-result-object v2
goto :goto_a
.end method
.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x13
if-lt v1, v2, :cond_d
invoke-static {p0}, Landroid/support/v4/content/ContextCompatKitKat;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;
move-result-object v2
:goto_c
return-object v2
:cond_d
const/16 v2, 0xb
if-lt v1, v2, :cond_1a
invoke-static {p0}, Landroid/support/v4/content/ContextCompatHoneycomb;->getObbDir(Landroid/content/Context;)Ljava/io/File;
move-result-object v0
:goto_15
new-array v2, v7, [Ljava/io/File;
aput-object v0, v2, v6
goto :goto_c
:cond_1a
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/String;
const-string v4, "Android"
aput-object v4, v3, v6
const-string v4, "obb"
aput-object v4, v3, v7
const/4 v4, 0x2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;
move-result-object v0
goto :goto_15
.end method
.method public static isDeviceProtectedStorage(Landroid/content/Context;)Z
.registers 2
invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z
move-result v0
if-eqz v0, :cond_b
invoke-static {p0}, Landroid/support/v4/content/ContextCompatApi24;->isDeviceProtectedStorage(Landroid/content/Context;)Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Landroid/support/v4/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
move-result v0
return v0
.end method
.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
.registers 6
const/4 v1, 0x1
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x10
if-lt v0, v2, :cond_b
invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V
:goto_a
return v1
:cond_b
const/16 v2, 0xb
if-lt v0, v2, :cond_13
invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompatHoneycomb;->startActivities(Landroid/content/Context;[Landroid/content/Intent;)V
goto :goto_a
:cond_13
const/4 v1, 0x0
goto :goto_a
.end method
.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_a
invoke-static {p0, p1, p2}, Landroid/support/v4/content/ContextCompatJellybean;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
:goto_9
return-void
:cond_a
invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_9
.end method