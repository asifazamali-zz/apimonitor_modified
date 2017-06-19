.class  Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaSession.java"
.implements Landroid/support/v4/media/session/IMediaSession;
.field private mRemote:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-void
.end method
.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_29
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x29
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_22
.catchall {:try_start_8 .. :try_end_22} :catchall_2e
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_29
const/4 v2, 0x0
:try_start_2a
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_2e
goto :goto_17
:catchall_2e
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_2c
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x2a
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_25
.catchall {:try_start_8 .. :try_end_25} :catchall_31
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2c
const/4 v2, 0x0
:try_start_2d
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_31
goto :goto_17
:catchall_31
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public adjustVolume(IILjava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0xb
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_28
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_28
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-object v0
.end method
.method public fastForward()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x16
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public getExtras()Landroid/os/Bundle;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x1f
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_2d
sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:cond_2d
const/4 v2, 0x0
goto :goto_26
:catchall_2f
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getFlags()J
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v4, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v4, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v5, 0x9
const/4 v6, 0x0
invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result-wide v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-wide v2
:catchall_23
move-exception v4
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v4
.end method
.method public getInterfaceDescriptor()Ljava/lang/String;
.registers 2
const-string v0, "android.support.v4.media.session.IMediaSession"
return-object v0
.end method
.method public getLaunchPendingIntent()Landroid/app/PendingIntent;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x8
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_2d
sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/app/PendingIntent;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:cond_2d
const/4 v2, 0x0
goto :goto_26
:catchall_2f
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x1b
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_2d
sget-object v3, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/media/MediaMetadataCompat;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:cond_2d
const/4 v2, 0x0
goto :goto_26
:catchall_2f
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getPackageName()Ljava/lang/String;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v4, 0x6
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
:try_end_1a
.catchall {:try_start_8 .. :try_end_1a} :catchall_22
move-result-object v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:catchall_22
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x1c
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_2d
sget-object v3, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/media/session/PlaybackStateCompat;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:cond_2d
const/4 v2, 0x0
goto :goto_26
:catchall_2f
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getQueue()Ljava/util/List;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x1d
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
sget-object v3, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
:try_end_1d
.catchall {:try_start_8 .. :try_end_1d} :catchall_25
move-result-object v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:catchall_25
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getQueueTitle()Ljava/lang/CharSequence;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x1e
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_2d
sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/CharSequence;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:cond_2d
const/4 v2, 0x0
goto :goto_26
:catchall_2f
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getRatingType()I
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x20
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_23
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getRepeatMode()I
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x25
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_23
move-result v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_23
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getTag()Ljava/lang/String;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v4, 0x7
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
:try_end_1a
.catchall {:try_start_8 .. :try_end_1a} :catchall_22
move-result-object v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:catchall_22
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0xa
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_2d
sget-object v3, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/media/session/ParcelableVolumeInfo;
:try_end_26
.catchall {:try_start_8 .. :try_end_26} :catchall_2f
:goto_26
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:cond_2d
const/4 v2, 0x0
goto :goto_26
:catchall_2f
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public isShuffleModeEnabled()Z
.registers 7
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x26
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1c
.catchall {:try_start_9 .. :try_end_1c} :catchall_27
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x1
:cond_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_27
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public isTransportControlEnabled()Z
.registers 7
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v4, 0x5
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1b
.catchall {:try_start_9 .. :try_end_1b} :catchall_26
move-result v3
if-eqz v3, :cond_1f
const/4 v2, 0x1
:cond_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_26
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public next()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x14
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public pause()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x12
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public play()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0xd
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_2c
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0xe
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_25
.catchall {:try_start_8 .. :try_end_25} :catchall_31
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2c
const/4 v2, 0x0
:try_start_2d
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_31
goto :goto_1a
:catchall_31
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_2c
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0xf
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_25
.catchall {:try_start_8 .. :try_end_25} :catchall_31
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2c
const/4 v2, 0x0
:try_start_2d
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_31
goto :goto_1a
:catchall_31
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_33
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
if-eqz p2, :cond_40
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x10
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_2c
.catchall {:try_start_8 .. :try_end_2c} :catchall_38
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_33
const/4 v2, 0x0
:try_start_34
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_37
.catchall {:try_start_34 .. :try_end_37} :catchall_38
goto :goto_17
:catchall_38
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
:cond_40
const/4 v2, 0x0
:try_start_41
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_44
.catchall {:try_start_41 .. :try_end_44} :catchall_38
goto :goto_21
.end method
.method public prepare()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x21
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_2c
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x22
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_25
.catchall {:try_start_8 .. :try_end_25} :catchall_31
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2c
const/4 v2, 0x0
:try_start_2d
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_31
goto :goto_1a
:catchall_31
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_2c
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x23
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_25
.catchall {:try_start_8 .. :try_end_25} :catchall_31
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2c
const/4 v2, 0x0
:try_start_2d
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_31
goto :goto_1a
:catchall_31
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_33
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p1, v0, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
if-eqz p2, :cond_40
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_21
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x24
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_2c
.catchall {:try_start_8 .. :try_end_2c} :catchall_38
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_33
const/4 v2, 0x0
:try_start_34
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_37
.catchall {:try_start_34 .. :try_end_37} :catchall_38
goto :goto_17
:catchall_38
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
:cond_40
const/4 v2, 0x0
:try_start_41
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_44
.catchall {:try_start_41 .. :try_end_44} :catchall_38
goto :goto_21
.end method
.method public previous()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x15
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public rate(Landroid/support/v4/media/RatingCompat;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_29
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/RatingCompat;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x19
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_22
.catchall {:try_start_8 .. :try_end_22} :catchall_2e
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_29
const/4 v2, 0x0
:try_start_2a
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_2e
goto :goto_17
:catchall_2e
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_27
invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_13
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v3, 0x3
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_20
.catchall {:try_start_8 .. :try_end_20} :catchall_29
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_27
const/4 v2, 0x0
goto :goto_13
:catchall_29
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_29
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V
:goto_17
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x2b
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_22
.catchall {:try_start_8 .. :try_end_22} :catchall_2e
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_29
const/4 v2, 0x0
:try_start_2a
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_2d
.catchall {:try_start_2a .. :try_end_2d} :catchall_2e
goto :goto_17
:catchall_2e
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public removeQueueItemAt(I)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x2c
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public rewind()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x17
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public seekTo(J)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x18
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_35
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
if-eqz p3, :cond_42
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p3, v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->writeToParcel(Landroid/os/Parcel;I)V
:goto_24
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_8 .. :try_end_2e} :catchall_3a
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v2, 0x0
:try_start_36
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_39
.catchall {:try_start_36 .. :try_end_39} :catchall_3a
goto :goto_1a
:catchall_3a
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
:cond_42
const/4 v2, 0x0
:try_start_43
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_46
.catchall {:try_start_43 .. :try_end_46} :catchall_3a
goto :goto_24
.end method
.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_2c
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
:goto_1a
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x1a
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_25
.catchall {:try_start_8 .. :try_end_25} :catchall_31
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2c
const/4 v2, 0x0
:try_start_2d
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_31
goto :goto_1a
:catchall_31
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public sendMediaButton(Landroid/view/KeyEvent;)Z
.registers 9
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_a
const-string v4, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_30
const/4 v4, 0x1
invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
const/4 v4, 0x0
invoke-virtual {p1, v0, v4}, Landroid/view/KeyEvent;->writeToParcel(Landroid/os/Parcel;I)V
:goto_19
iget-object v4, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v5, 0x2
const/4 v6, 0x0
invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_26
.catchall {:try_start_a .. :try_end_26} :catchall_35
move-result v4
if-eqz v4, :cond_3d
:goto_29
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:cond_30
const/4 v4, 0x0
:try_start_31
invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
:try_end_34
.catchall {:try_start_31 .. :try_end_34} :catchall_35
goto :goto_19
:catchall_35
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
:cond_3d
move v2, v3
goto :goto_29
.end method
.method public setRepeatMode(I)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x27
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public setShuffleModeEnabled(Z)V
.registers 7
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string v3, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_11
const/4 v2, 0x1
:cond_11
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x28
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_1f
.catchall {:try_start_9 .. :try_end_1f} :catchall_26
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_26
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public setVolumeTo(IILjava/lang/String;)V
.registers 9
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0xc
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_28
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_28
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public skipToQueueItem(J)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x11
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_1b
.catchall {:try_start_8 .. :try_end_1b} :catchall_22
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_22
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public stop()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x13
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string v2, "android.support.v4.media.session.IMediaSession"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_27
invoke-interface {p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->asBinder()Landroid/os/IBinder;
move-result-object v2
:goto_13
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
iget-object v2, p0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v3, 0x4
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_20
.catchall {:try_start_8 .. :try_end_20} :catchall_29
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:cond_27
const/4 v2, 0x0
goto :goto_13
:catchall_29
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method