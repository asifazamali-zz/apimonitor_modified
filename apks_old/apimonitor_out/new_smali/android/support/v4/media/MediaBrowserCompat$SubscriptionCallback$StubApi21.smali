.class  Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"
.implements Landroid/support/v4/media/MediaBrowserCompatApi21$SubscriptionCallback;
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method  applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
.registers 9
const/4 v5, -0x1
if-nez p1, :cond_5
const/4 p1, 0x0
:goto_4
:cond_4
return-object p1
:cond_5
const-string v4, "android.media.browse.extra.PAGE"
invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
const-string v4, "android.media.browse.extra.PAGE_SIZE"
invoke-virtual {p2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
if-ne v1, v5, :cond_15
if-eq v2, v5, :cond_4
:cond_15
mul-int v0, v2, v1
add-int v3, v0, v2
if-ltz v1, :cond_24
const/4 v4, 0x1
if-lt v2, v4, :cond_24
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v4
if-lt v0, v4, :cond_27
:cond_24
sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;
goto :goto_4
:cond_27
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v4
if-le v3, v4, :cond_31
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v3
:cond_31
invoke-interface {p1, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object p1
goto :goto_4
.end method
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
.registers 11
.parameter
.end parameter
.parameter
.end parameter
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;
if-nez v6, :cond_13
const/4 v5, 0x0
:goto_7
if-nez v5, :cond_1f
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;
move-result-object v7
invoke-virtual {v6, p1, v7}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
:cond_12
return-void
:cond_13
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
iget-object v6, v6, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->mSubscriptionRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/support/v4/media/MediaBrowserCompat$Subscription;
move-object v5, v6
goto :goto_7
:cond_1f
invoke-static {p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->fromMediaItemList(Ljava/util/List;)Ljava/util/List;
move-result-object v2
invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getCallbacks()Ljava/util/List;
move-result-object v0
invoke-virtual {v5}, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->getOptionsList()Ljava/util/List;
move-result-object v4
const/4 v1, 0x0
:goto_2c
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v6
if-ge v1, v6, :cond_12
invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/os/Bundle;
if-nez v3, :cond_42
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
invoke-virtual {v6, p1, v2}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
:goto_3f
add-int/lit8 v1, v1, 0x1
goto :goto_2c
:cond_42
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
invoke-virtual {p0, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
move-result-object v7
invoke-virtual {v6, p1, v7, v3}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onChildrenLoaded(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
goto :goto_3f
.end method
.method public onError(Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback$StubApi21;->this$0:Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;->onError(Ljava/lang/String;)V
return-void
.end method