.class  Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "MediaBrowserCompatApi21.java"
.field protected final mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V
.registers 2
invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
return-void
.end method
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
return-void
.end method
.method public onError(Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
invoke-interface {v0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;->onError(Ljava/lang/String;)V
return-void
.end method