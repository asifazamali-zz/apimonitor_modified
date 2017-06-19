.class  Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;
.super Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;
.source "MediaBrowserCompat.java"
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
return-void
.end method
.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
if-nez p2, :cond_c
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;
#getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;
invoke-static {p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;
move-result-object v1
invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->subscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
:goto_b
return-void
:cond_c
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;
#getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;
invoke-static {p3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;
move-result-object v1
invoke-static {v0, p1, p2, v1}, Landroid/support/v4/media/MediaBrowserCompatApi24;->subscribe(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
goto :goto_b
.end method
.method public unsubscribe(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
if-nez p2, :cond_8
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserCompatApi21;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;)V
:goto_7
return-void
:cond_8
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi24;->mBrowserObj:Ljava/lang/Object;
#getter for: Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionCallbackObj:Ljava/lang/Object;
invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->access$200(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)Ljava/lang/Object;
move-result-object v1
invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompatApi24;->unsubscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_7
.end method