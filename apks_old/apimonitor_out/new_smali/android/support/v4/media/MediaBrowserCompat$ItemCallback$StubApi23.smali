.class  Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"
.implements Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onError(Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
invoke-virtual {v0, p1}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onError(Ljava/lang/String;)V
return-void
.end method
.method public onItemLoaded(Landroid/os/Parcel;)V
.registers 5
if-nez p1, :cond_9
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
:goto_8
return-void
:cond_9
const/4 v1, 0x0
invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V
sget-object v1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;->this$0:Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
invoke-virtual {v1, v0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
goto :goto_8
.end method