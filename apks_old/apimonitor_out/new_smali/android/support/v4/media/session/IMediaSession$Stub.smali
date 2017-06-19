.class public abstract Landroid/support/v4/media/session/IMediaSession$Stub;
.super Landroid/os/Binder;
.source "IMediaSession.java"
.implements Landroid/support/v4/media/session/IMediaSession;
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaSession"
.field static final TRANSACTION_addQueueItem:I = 0x29
.field static final TRANSACTION_addQueueItemAt:I = 0x2a
.field static final TRANSACTION_adjustVolume:I = 0xb
.field static final TRANSACTION_fastForward:I = 0x16
.field static final TRANSACTION_getExtras:I = 0x1f
.field static final TRANSACTION_getFlags:I = 0x9
.field static final TRANSACTION_getLaunchPendingIntent:I = 0x8
.field static final TRANSACTION_getMetadata:I = 0x1b
.field static final TRANSACTION_getPackageName:I = 0x6
.field static final TRANSACTION_getPlaybackState:I = 0x1c
.field static final TRANSACTION_getQueue:I = 0x1d
.field static final TRANSACTION_getQueueTitle:I = 0x1e
.field static final TRANSACTION_getRatingType:I = 0x20
.field static final TRANSACTION_getRepeatMode:I = 0x25
.field static final TRANSACTION_getTag:I = 0x7
.field static final TRANSACTION_getVolumeAttributes:I = 0xa
.field static final TRANSACTION_isShuffleModeEnabled:I = 0x26
.field static final TRANSACTION_isTransportControlEnabled:I = 0x5
.field static final TRANSACTION_next:I = 0x14
.field static final TRANSACTION_pause:I = 0x12
.field static final TRANSACTION_play:I = 0xd
.field static final TRANSACTION_playFromMediaId:I = 0xe
.field static final TRANSACTION_playFromSearch:I = 0xf
.field static final TRANSACTION_playFromUri:I = 0x10
.field static final TRANSACTION_prepare:I = 0x21
.field static final TRANSACTION_prepareFromMediaId:I = 0x22
.field static final TRANSACTION_prepareFromSearch:I = 0x23
.field static final TRANSACTION_prepareFromUri:I = 0x24
.field static final TRANSACTION_previous:I = 0x15
.field static final TRANSACTION_rate:I = 0x19
.field static final TRANSACTION_registerCallbackListener:I = 0x3
.field static final TRANSACTION_removeQueueItem:I = 0x2b
.field static final TRANSACTION_removeQueueItemAt:I = 0x2c
.field static final TRANSACTION_rewind:I = 0x17
.field static final TRANSACTION_seekTo:I = 0x18
.field static final TRANSACTION_sendCommand:I = 0x1
.field static final TRANSACTION_sendCustomAction:I = 0x1a
.field static final TRANSACTION_sendMediaButton:I = 0x2
.field static final TRANSACTION_setRepeatMode:I = 0x27
.field static final TRANSACTION_setShuffleModeEnabled:I = 0x28
.field static final TRANSACTION_setVolumeTo:I = 0xc
.field static final TRANSACTION_skipToQueueItem:I = 0x11
.field static final TRANSACTION_stop:I = 0x13
.field static final TRANSACTION_unregisterCallbackListener:I = 0x4
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v1, "android.support.v4.media.session.IMediaSession"
invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Landroid/support/v4/media/session/IMediaSession;
if-eqz v1, :cond_13
check-cast v0, Landroid/support/v4/media/session/IMediaSession;
goto :goto_3
:cond_13
new-instance v0, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 15
const/4 v7, 0x0
const/4 v8, 0x1
sparse-switch p1, :sswitch_data_428
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v8
:goto_9
return v8
:sswitch_a
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_3c
sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:goto_27
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_3e
sget-object v7, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
:goto_35
invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_3c
const/4 v2, 0x0
goto :goto_27
:cond_3e
const/4 v3, 0x0
goto :goto_35
:sswitch_40
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v9
if-eqz v9, :cond_61
sget-object v9, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/KeyEvent;
:goto_53
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendMediaButton(Landroid/view/KeyEvent;)Z
move-result v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_5d
move v7, v8
:cond_5d
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_9
:cond_61
const/4 v0, 0x0
goto :goto_53
:sswitch_63
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v7
invoke-static {v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_77
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v7
invoke-static {v7}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_8c
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isTransportControlEnabled()Z
move-result v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_9b
move v7, v8
:cond_9b
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_a0
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPackageName()Ljava/lang/String;
move-result-object v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto/16 :goto_9
:sswitch_b1
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getTag()Ljava/lang/String;
move-result-object v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto/16 :goto_9
:sswitch_c2
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getLaunchPendingIntent()Landroid/app/PendingIntent;
move-result-object v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_d8
invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v4, p3, v8}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_9
:cond_d8
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_dd
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getFlags()J
move-result-wide v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V
goto/16 :goto_9
:sswitch_ee
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
move-result-object v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_104
invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/session/ParcelableVolumeInfo;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_9
:cond_104
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_109
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->adjustVolume(IILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_122
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/IMediaSession$Stub;->setVolumeTo(IILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_13b
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
move-result-object v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_151
invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/MediaMetadataCompat;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_9
:cond_151
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_156
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
move-result-object v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_16c
invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/session/PlaybackStateCompat;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_9
:cond_16c
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_171
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueue()Ljava/util/List;
move-result-object v6
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
goto/16 :goto_9
:sswitch_182
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getQueueTitle()Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_198
invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V
invoke-static {v4, p3, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
goto/16 :goto_9
:cond_198
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_19d
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getExtras()Landroid/os/Bundle;
move-result-object v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_1b3
invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v4, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_9
:cond_1b3
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_1b8
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRatingType()I
move-result v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_1c9
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->getRepeatMode()I
move-result v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_1da
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->isShuffleModeEnabled()Z
move-result v4
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v4, :cond_1e9
move v7, v8
:cond_1e9
invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_1ee
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_209
sget-object v7, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;
:goto_201
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_209
const/4 v0, 0x0
goto :goto_201
:sswitch_20b
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_22a
sget-object v7, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;
:goto_21e
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_22a
const/4 v0, 0x0
goto :goto_21e
:sswitch_22c
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_247
sget-object v7, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;
:goto_23f
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_247
const/4 v0, 0x0
goto :goto_23f
:sswitch_249
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->removeQueueItemAt(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_25a
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepare()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_267
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_286
sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:goto_27e
invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_286
const/4 v2, 0x0
goto :goto_27e
:sswitch_288
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_2a7
sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:goto_29f
invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_2a7
const/4 v2, 0x0
goto :goto_29f
:sswitch_2a9
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_2d2
sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
:goto_2bc
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_2d4
sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:goto_2ca
invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_2d2
const/4 v0, 0x0
goto :goto_2bc
:cond_2d4
const/4 v2, 0x0
goto :goto_2ca
:sswitch_2d6
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->play()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_2e3
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_302
sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:goto_2fa
invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_302
const/4 v2, 0x0
goto :goto_2fa
:sswitch_304
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_323
sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:goto_31b
invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_323
const/4 v2, 0x0
goto :goto_31b
:sswitch_325
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_34e
sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
:goto_338
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_350
sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:goto_346
invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_34e
const/4 v0, 0x0
goto :goto_338
:cond_350
const/4 v2, 0x0
goto :goto_346
:sswitch_352
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->skipToQueueItem(J)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_363
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->pause()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_370
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->stop()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_37d
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->next()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_38a
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->previous()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_397
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->fastForward()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3a4
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rewind()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3b1
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/IMediaSession$Stub;->seekTo(J)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3c2
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_3dd
sget-object v7, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/RatingCompat;
:goto_3d5
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->rate(Landroid/support/v4/media/RatingCompat;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_3dd
const/4 v0, 0x0
goto :goto_3d5
:sswitch_3df
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setRepeatMode(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3f0
const-string v9, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v9
if-eqz v9, :cond_404
move v0, v8
:goto_3fc
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->setShuffleModeEnabled(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_404
move v0, v7
goto :goto_3fc
:sswitch_406
const-string v7, "android.support.v4.media.session.IMediaSession"
invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v7
if-eqz v7, :cond_425
sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:goto_41d
invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaSession$Stub;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_425
const/4 v2, 0x0
goto :goto_41d
nop
:sswitch_data_428
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_40
0x3 -> :sswitch_63
0x4 -> :sswitch_77
0x5 -> :sswitch_8c
0x6 -> :sswitch_a0
0x7 -> :sswitch_b1
0x8 -> :sswitch_c2
0x9 -> :sswitch_dd
0xa -> :sswitch_ee
0xb -> :sswitch_109
0xc -> :sswitch_122
0xd -> :sswitch_2d6
0xe -> :sswitch_2e3
0xf -> :sswitch_304
0x10 -> :sswitch_325
0x11 -> :sswitch_352
0x12 -> :sswitch_363
0x13 -> :sswitch_370
0x14 -> :sswitch_37d
0x15 -> :sswitch_38a
0x16 -> :sswitch_397
0x17 -> :sswitch_3a4
0x18 -> :sswitch_3b1
0x19 -> :sswitch_3c2
0x1a -> :sswitch_406
0x1b -> :sswitch_13b
0x1c -> :sswitch_156
0x1d -> :sswitch_171
0x1e -> :sswitch_182
0x1f -> :sswitch_19d
0x20 -> :sswitch_1b8
0x21 -> :sswitch_25a
0x22 -> :sswitch_267
0x23 -> :sswitch_288
0x24 -> :sswitch_2a9
0x25 -> :sswitch_1c9
0x26 -> :sswitch_1da
0x27 -> :sswitch_3df
0x28 -> :sswitch_3f0
0x29 -> :sswitch_1ee
0x2a -> :sswitch_20b
0x2b -> :sswitch_22c
0x2c -> :sswitch_249
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method