.class  Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"
.implements Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
.field private mDestroyed:Z
.field private final mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
.field private mExtraSessionBinder:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
.field private mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;
.field  mRatingType:I
.field  mRepeatMode:I
.field private final mSessionObj:Ljava/lang/Object;
.field  mShuffleModeEnabled:Z
.field private final mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z
new-instance v0, Landroid/os/RemoteCallbackList;
invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createSession(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-void
.end method
.method public constructor <init>(Ljava/lang/Object;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z
new-instance v0, Landroid/os/RemoteCallbackList;
invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->verifySession(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->getSessionToken(Ljava/lang/Object;)Landroid/os/Parcelable;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-void
.end method
.method static synthetic access$100(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z
return v0
.end method
.method static synthetic access$200(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/os/RemoteCallbackList;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
return-object v0
.end method
.method static synthetic access$300(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)Landroid/support/v4/media/session/PlaybackStateCompat;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;
return-object v0
.end method
.method public getCallingPackage()Ljava/lang/String;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x18
if-ge v0, v1, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24;->getCallingPackage(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method  getExtraSessionBinder()Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraSessionBinder:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;)V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraSessionBinder:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
:cond_b
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraSessionBinder:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
return-object v0
.end method
.method public getMediaSession()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
return-object v0
.end method
.method public getRemoteControlClient()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-object v0
.end method
.method public isActive()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->isActive(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public release()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mDestroyed:Z
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->release(Ljava/lang/Object;)V
return-void
.end method
.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 8
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0x17
if-ge v3, v4, :cond_23
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_e
if-ltz v1, :cond_1e
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_18
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/IMediaControllerCallback;->onEvent(Ljava/lang/String;Landroid/os/Bundle;)V
:goto_1b
:try_end_1b
.catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_29
add-int/lit8 v1, v1, -0x1
goto :goto_e
:cond_1e
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
:cond_23
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v3, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->sendSessionEvent(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
:catch_29
move-exception v3
goto :goto_1b
.end method
.method public setActive(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setActive(Ljava/lang/Object;Z)V
return-void
.end method
.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
.registers 5
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
if-nez p1, :cond_12
const/4 v0, 0x0
:goto_5
invoke-static {v1, v0, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V
if-eqz p1, :cond_11
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mSessionImpl:Ljava/lang/ref/WeakReference;
:cond_11
return-void
:cond_12
iget-object v0, p1, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;
goto :goto_5
.end method
.method public setExtras(Landroid/os/Bundle;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setExtras(Ljava/lang/Object;Landroid/os/Bundle;)V
return-void
.end method
.method public setFlags(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setFlags(Ljava/lang/Object;I)V
return-void
.end method
.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setMediaButtonReceiver(Ljava/lang/Object;Landroid/app/PendingIntent;)V
return-void
.end method
.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
.registers 4
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
if-nez p1, :cond_9
const/4 v0, 0x0
:goto_5
invoke-static {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setMetadata(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
:cond_9
invoke-virtual {p1}, Landroid/support/v4/media/MediaMetadataCompat;->getMediaMetadata()Ljava/lang/Object;
move-result-object v0
goto :goto_5
.end method
.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.registers 7
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mPlaybackState:Landroid/support/v4/media/session/PlaybackStateCompat;
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_a
if-ltz v1, :cond_1a
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_14
invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onPlaybackStateChanged(Landroid/support/v4/media/session/PlaybackStateCompat;)V
:try_end_17
.catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_2d
:goto_17
add-int/lit8 v1, v1, -0x1
goto :goto_a
:cond_1a
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
if-nez p1, :cond_28
const/4 v3, 0x0
:goto_24
invoke-static {v4, v3}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackState(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
:cond_28
invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getPlaybackState()Ljava/lang/Object;
move-result-object v3
goto :goto_24
:catch_2d
move-exception v3
goto :goto_17
.end method
.method public setPlaybackToLocal(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToLocal(Ljava/lang/Object;I)V
return-void
.end method
.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-virtual {p1}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;
move-result-object v1
invoke-static {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setPlaybackToRemote(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public setQueue(Ljava/util/List;)V
.registers 6
const/4 v1, 0x0
if-eqz p1, :cond_20
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_20
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->getQueueItem()Ljava/lang/Object;
move-result-object v3
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_c
:cond_20
iget-object v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v2, v1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setQueue(Ljava/lang/Object;Ljava/util/List;)V
return-void
.end method
.method public setQueueTitle(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setQueueTitle(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public setRatingType(I)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x16
if-ge v0, v1, :cond_9
iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRatingType:I
:goto_8
return-void
:cond_9
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi22;->setRatingType(Ljava/lang/Object;I)V
goto :goto_8
.end method
.method public setRepeatMode(I)V
.registers 6
iget v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRepeatMode:I
if-eq v3, p1, :cond_23
iput p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mRepeatMode:I
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_e
if-ltz v1, :cond_1e
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_18
invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onRepeatModeChanged(I)V
:goto_1b
:try_end_1b
.catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_24
add-int/lit8 v1, v1, -0x1
goto :goto_e
:cond_1e
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
:cond_23
return-void
:catch_24
move-exception v3
goto :goto_1b
.end method
.method public setSessionActivity(Landroid/app/PendingIntent;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mSessionObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->setSessionActivity(Ljava/lang/Object;Landroid/app/PendingIntent;)V
return-void
.end method
.method public setShuffleModeEnabled(Z)V
.registers 6
iget-boolean v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleModeEnabled:Z
if-eq v3, p1, :cond_23
iput-boolean p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mShuffleModeEnabled:Z
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_e
if-ltz v1, :cond_1e
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/IMediaControllerCallback;
:try_start_18
invoke-interface {v0, p1}, Landroid/support/v4/media/session/IMediaControllerCallback;->onShuffleModeChanged(Z)V
:goto_1b
:try_end_1b
.catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_24
add-int/lit8 v1, v1, -0x1
goto :goto_e
:cond_1e
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;->mExtraControllerCallbacks:Landroid/os/RemoteCallbackList;
invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
:cond_23
return-void
:catch_24
move-exception v3
goto :goto_1b
.end method