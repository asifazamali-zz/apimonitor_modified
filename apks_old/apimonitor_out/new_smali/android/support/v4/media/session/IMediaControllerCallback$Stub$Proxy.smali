.class  Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaControllerCallback.java"
.implements Landroid/support/v4/media/session/IMediaControllerCallback;
.field private mRemote:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-object v0
.end method
.method public getInterfaceDescriptor()Ljava/lang/String;
.registers 2
const-string v0, "android.support.v4.media.session.IMediaControllerCallback"
return-object v0
.end method
.method public onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_22
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_16
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x1
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1e
.catchall {:try_start_4 .. :try_end_1e} :catchall_27
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_22
const/4 v1, 0x0
:try_start_23
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_26
.catchall {:try_start_23 .. :try_end_26} :catchall_27
goto :goto_16
:catchall_27
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onExtrasChanged(Landroid/os/Bundle;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_1f
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_13
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x7
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1b
.catchall {:try_start_4 .. :try_end_1b} :catchall_24
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_1f
const/4 v1, 0x0
:try_start_20
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_23
.catchall {:try_start_20 .. :try_end_23} :catchall_24
goto :goto_13
:catchall_24
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_1f
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V
:goto_13
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x4
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1b
.catchall {:try_start_4 .. :try_end_1b} :catchall_24
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_1f
const/4 v1, 0x0
:try_start_20
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_23
.catchall {:try_start_20 .. :try_end_23} :catchall_24
goto :goto_13
:catchall_24
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_1f
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V
:goto_13
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x3
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1b
.catchall {:try_start_4 .. :try_end_1b} :catchall_24
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_1f
const/4 v1, 0x0
:try_start_20
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_23
.catchall {:try_start_20 .. :try_end_23} :catchall_24
goto :goto_13
:catchall_24
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onQueueChanged(Ljava/util/List;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x5
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_14
.catchall {:try_start_4 .. :try_end_14} :catchall_18
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_18
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onQueueTitleChanged(Ljava/lang/CharSequence;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_1f
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-static {p1, v0, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
:goto_13
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x6
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1b
.catchall {:try_start_4 .. :try_end_1b} :catchall_24
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_1f
const/4 v1, 0x0
:try_start_20
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_23
.catchall {:try_start_20 .. :try_end_23} :catchall_24
goto :goto_13
:catchall_24
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onRepeatModeChanged(I)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v2, 0x9
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_15
.catchall {:try_start_4 .. :try_end_15} :catchall_19
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_19
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onSessionDestroyed()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v2, 0x2
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_11
.catchall {:try_start_4 .. :try_end_11} :catchall_15
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_15
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onShuffleModeChanged(Z)V
.registers 7
const/4 v1, 0x1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_5
const-string v2, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_1c
:goto_c
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v2, 0xa
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_18
.catchall {:try_start_5 .. :try_end_18} :catchall_1e
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_1c
const/4 v1, 0x0
goto :goto_c
:catchall_1e
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method
.method public onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
:try_start_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_20
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V
:goto_13
iget-object v1, p0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v2, 0x8
const/4 v3, 0x0
const/4 v4, 0x1
invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
:try_end_1c
.catchall {:try_start_4 .. :try_end_1c} :catchall_25
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_20
const/4 v1, 0x0
:try_start_21
invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
:try_end_24
.catchall {:try_start_21 .. :try_end_24} :catchall_25
goto :goto_13
:catchall_25
move-exception v1
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v1
.end method