.class  Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "DrawableCompatJellybeanMr1.java"
.field private static final TAG:Ljava/lang/String; = "DrawableCompatJellybeanMr1"
.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;
.field private static sGetLayoutDirectionMethodFetched:Z
.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;
.field private static sSetLayoutDirectionMethodFetched:Z
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
.registers 6
const/4 v4, 0x1
sget-boolean v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z
if-nez v1, :cond_1a
:try_start_5
const-class v1, Landroid/graphics/drawable/Drawable;
const-string v2, "getLayoutDirection"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Class;
invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;
sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:goto_18
:try_end_18
.catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_18} :catch_2e
sput-boolean v4, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z
:cond_1a
sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;
if-eqz v1, :cond_42
:try_start_1e
sget-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
:try_end_2c
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2c} :catch_37
move-result v1
:goto_2d
return v1
:catch_2e
move-exception v0
const-string v1, "DrawableCompatJellybeanMr1"
const-string v2, "Failed to retrieve getLayoutDirection() method"
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_18
:catch_37
move-exception v0
const-string v1, "DrawableCompatJellybeanMr1"
const-string v2, "Failed to invoke getLayoutDirection() via reflection"
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;
:cond_42
const/4 v1, -0x1
goto :goto_2d
.end method
.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
.registers 10
const/4 v2, 0x0
const/4 v1, 0x1
sget-boolean v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z
if-nez v3, :cond_20
:try_start_6
const-class v3, Landroid/graphics/drawable/Drawable;
const-string v4, "setLayoutDirection"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Class;
const/4 v6, 0x0
sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v7, v5, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
sput-object v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;
sget-object v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
:try_end_1e
.catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1e} :catch_34
:goto_1e
sput-boolean v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z
:cond_20
sget-object v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;
if-eqz v3, :cond_48
:try_start_24
sget-object v3, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_33
:try_end_33
.catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_3d
return v1
:catch_34
move-exception v0
const-string v3, "DrawableCompatJellybeanMr1"
const-string v4, "Failed to retrieve setLayoutDirection(int) method"
invoke-static {v3, v4, v0}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_1e
:catch_3d
move-exception v0
const-string v1, "DrawableCompatJellybeanMr1"
const-string v3, "Failed to invoke setLayoutDirection(int) via reflection"
invoke-static {v1, v3, v0}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
sput-object v1, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;
:cond_48
move v1, v2
goto :goto_33
.end method