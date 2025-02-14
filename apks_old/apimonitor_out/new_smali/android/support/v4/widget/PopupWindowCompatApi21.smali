.class  Landroid/support/v4/widget/PopupWindowCompatApi21;
.super Ljava/lang/Object;
.source "PopupWindowCompatApi21.java"
.field private static final TAG:Ljava/lang/String; = "PopupWindowCompatApi21"
.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;
.method static constructor <clinit>()V
.registers 3
:try_start_0
const-class v1, Landroid/widget/PopupWindow;
const-string v2, "mOverlapAnchor"
invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
sput-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;
sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:goto_10
:try_end_10
.catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v1, "PopupWindowCompatApi21"
const-string v2, "Could not fetch mOverlapAnchor field from PopupWindow"
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_10
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
.registers 4
sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;
if-eqz v1, :cond_19
:try_start_4
sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;
invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_f
.catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_f} :catch_11
move-result v1
:goto_10
return v1
:catch_11
move-exception v0
const-string v1, "PopupWindowCompatApi21"
const-string v2, "Could not get overlap anchor field in PopupWindow"
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_19
const/4 v1, 0x0
goto :goto_10
.end method
.method static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
.registers 5
sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;
if-eqz v1, :cond_d
:try_start_4
sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:try_end_d
.catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_d} :catch_e
:goto_d
:cond_d
return-void
:catch_e
move-exception v0
const-string v1, "PopupWindowCompatApi21"
const-string v2, "Could not set overlap anchor field in PopupWindow"
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_d
.end method