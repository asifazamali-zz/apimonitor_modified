.class  Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;
.source "MediaBrowserServiceCompatApi24.java"
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V
return-void
.end method
.method public onLoadChildren(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;Landroid/os/Bundle;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;
check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;
new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;
invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;-><init>(Landroid/service/media/MediaBrowserService$Result;)V
invoke-interface {v0, p1, v1, p3}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ServiceCompatProxy;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;Landroid/os/Bundle;)V
return-void
.end method