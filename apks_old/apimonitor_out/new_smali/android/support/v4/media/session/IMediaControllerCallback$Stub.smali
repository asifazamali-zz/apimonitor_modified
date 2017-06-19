.class public abstract Landroid/support/v4/media/session/IMediaControllerCallback$Stub;
.super Landroid/os/Binder;
.source "IMediaControllerCallback.java"
.implements Landroid/support/v4/media/session/IMediaControllerCallback;
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.support.v4.media.session.IMediaControllerCallback"
.field static final TRANSACTION_onEvent:I = 0x1
.field static final TRANSACTION_onExtrasChanged:I = 0x7
.field static final TRANSACTION_onMetadataChanged:I = 0x4
.field static final TRANSACTION_onPlaybackStateChanged:I = 0x3
.field static final TRANSACTION_onQueueChanged:I = 0x5
.field static final TRANSACTION_onQueueTitleChanged:I = 0x6
.field static final TRANSACTION_onRepeatModeChanged:I = 0x9
.field static final TRANSACTION_onSessionDestroyed:I = 0x2
.field static final TRANSACTION_onShuffleModeChanged:I = 0xa
.field static final TRANSACTION_onVolumeInfoChanged:I = 0x8
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaControllerCallback;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v1, "android.support.v4.media.session.IMediaControllerCallback"
invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Landroid/support/v4/media/session/IMediaControllerCallback;
if-eqz v1, :cond_13
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
goto :goto_3
:cond_13
new-instance v0, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 10
const/4 v3, 0x1
sparse-switch p1, :sswitch_data_e6
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v3
:goto_8
return v3
:sswitch_9
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_f
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_2a
sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
:goto_26
invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
goto :goto_8
:cond_2a
const/4 v2, 0x0
goto :goto_26
:sswitch_2c
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onSessionDestroyed()V
goto :goto_8
:sswitch_35
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_4c
sget-object v4, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/PlaybackStateCompat;
:goto_48
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
goto :goto_8
:cond_4c
const/4 v0, 0x0
goto :goto_48
:sswitch_4e
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_65
sget-object v4, Landroid/support/v4/media/MediaMetadataCompat;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/MediaMetadataCompat;
:goto_61
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onMetadataChanged(Landroid/support/v4/media/MediaMetadataCompat;)V
goto :goto_8
:cond_65
const/4 v0, 0x0
goto :goto_61
:sswitch_67
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
sget-object v4, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueChanged(Ljava/util/List;)V
goto :goto_8
:sswitch_76
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_8e
sget-object v4, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
:goto_89
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onQueueTitleChanged(Ljava/lang/CharSequence;)V
goto/16 :goto_8
:cond_8e
const/4 v0, 0x0
goto :goto_89
:sswitch_90
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_a8
sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_a3
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onExtrasChanged(Landroid/os/Bundle;)V
goto/16 :goto_8
:cond_a8
const/4 v0, 0x0
goto :goto_a3
:sswitch_aa
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_c2
sget-object v4, Landroid/support/v4/media/session/ParcelableVolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/ParcelableVolumeInfo;
:goto_bd
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onVolumeInfoChanged(Landroid/support/v4/media/session/ParcelableVolumeInfo;)V
goto/16 :goto_8
:cond_c2
const/4 v0, 0x0
goto :goto_bd
:sswitch_c4
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onRepeatModeChanged(I)V
goto/16 :goto_8
:sswitch_d2
const-string v4, "android.support.v4.media.session.IMediaControllerCallback"
invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_e3
move v0, v3
:goto_de
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/IMediaControllerCallback$Stub;->onShuffleModeChanged(Z)V
goto/16 :goto_8
:cond_e3
const/4 v0, 0x0
goto :goto_de
nop
:sswitch_data_e6
.sparse-switch
0x1 -> :sswitch_f
0x2 -> :sswitch_2c
0x3 -> :sswitch_35
0x4 -> :sswitch_4e
0x5 -> :sswitch_67
0x6 -> :sswitch_76
0x7 -> :sswitch_90
0x8 -> :sswitch_aa
0x9 -> :sswitch_c4
0xa -> :sswitch_d2
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method