.class  Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;
.super Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;
.source "MediaBrowserCompatApi24.java"
.method public constructor <init>(Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallbackProxy;-><init>(Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;)V
return-void
.end method
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
check-cast v0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;
invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
return-void
.end method
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallbackProxy;->mSubscriptionCallback:Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
check-cast v0, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method