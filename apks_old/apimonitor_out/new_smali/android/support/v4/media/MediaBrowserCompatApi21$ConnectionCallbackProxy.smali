.class  Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "MediaBrowserCompatApi21.java"
.field protected final mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;)V
.registers 2
invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;
return-void
.end method
.method public onConnected()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;
invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;->onConnected()V
return-void
.end method
.method public onConnectionFailed()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;
invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;->onConnectionFailed()V
return-void
.end method
.method public onConnectionSuspended()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallbackProxy;->mConnectionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;
invoke-interface {v0}, Landroid/support/v4/media/MediaBrowserCompatApi21$ConnectionCallback;->onConnectionSuspended()V
return-void
.end method