.class  Landroid/support/v4/media/MediaBrowserServiceCompatApi24;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi24.java"
.field private static final TAG:Ljava/lang/String; = "MBSCompatApi24"
.field private static sResultFlags:Ljava/lang/reflect/Field;
.method static constructor <clinit>()V
.registers 3
:try_start_0
const-class v1, Landroid/service/media/MediaBrowserService$Result;
const-string v2, "mFlags"
invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
sput-object v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;
sget-object v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:goto_10
:try_end_10
.catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v1, "MBSCompatApi24"
invoke-static {v1, v0}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_10
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000()Ljava/lang/reflect/Field;
.registers 1
sget-object v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->sResultFlags:Ljava/lang/reflect/Field;
return-object v0
.end method
.method public static createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)Ljava/lang/Object;
.registers 3
new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;
invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)V
return-object v0
.end method
.method public static getBrowserRootHints(Ljava/lang/Object;)Landroid/os/Bundle;
.registers 2
check-cast p0, Landroid/service/media/MediaBrowserService;
invoke-virtual {p0}, Landroid/service/media/MediaBrowserService;->getBrowserRootHints()Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public static notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 3
check-cast p0, Landroid/service/media/MediaBrowserService;
invoke-virtual {p0, p1, p2}, Landroid/service/media/MediaBrowserService;->notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method