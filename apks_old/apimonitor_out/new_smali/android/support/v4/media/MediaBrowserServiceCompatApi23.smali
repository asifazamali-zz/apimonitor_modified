.class  Landroid/support/v4/media/MediaBrowserServiceCompatApi23;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi23.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)Ljava/lang/Object;
.registers 3
new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;
invoke-direct {v0, p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V
return-object v0
.end method