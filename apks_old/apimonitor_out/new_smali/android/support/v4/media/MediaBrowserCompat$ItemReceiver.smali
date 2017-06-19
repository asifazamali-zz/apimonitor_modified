.class  Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"
.field private final mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.field private final mMediaId:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;Landroid/os/Handler;)V
.registers 4
invoke-direct {p0, p3}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
return-void
.end method
.method protected onReceiveResult(ILandroid/os/Bundle;)V
.registers 6
if-eqz p2, :cond_b
const-class v1, Landroid/support/v4/media/MediaBrowserCompat;
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
:cond_b
if-nez p1, :cond_17
if-eqz p2, :cond_17
const-string v1, "media_item"
invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1f
:cond_17
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V
:goto_1e
return-void
:cond_1f
const-string v1, "media_item"
invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_2b
instance-of v1, v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
if-eqz v1, :cond_33
:cond_2b
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
goto :goto_1e
:cond_33
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;->mMediaId:Ljava/lang/String;
invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V
goto :goto_1e
.end method