.class  Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;
.super Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;
.source "MediaBrowserServiceCompatApi23.java"
.method constructor <init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$MediaBrowserServiceAdaptor;-><init>(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)V
return-void
.end method
.method public onLoadItem(Ljava/lang/String;Landroid/service/media/MediaBrowserService$Result;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$MediaBrowserServiceAdaptor;->mServiceProxy:Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;
check-cast v0, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;
new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;
invoke-direct {v1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;-><init>(Landroid/service/media/MediaBrowserService$Result;)V
invoke-interface {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;->onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
return-void
.end method