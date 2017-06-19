.class  Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi24;
.super Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
.source "MediaBrowserCompat.java"
.implements Landroid/support/v4/media/MediaBrowserCompatApi24$SubscriptionCallback;
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi24;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;-><init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
return-void
.end method
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi24;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;
move-result-object v1
invoke-virtual {v0, p1, v1, p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
return-void
.end method
.method public onError(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi24;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method