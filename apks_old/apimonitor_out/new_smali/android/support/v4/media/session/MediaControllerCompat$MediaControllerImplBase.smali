.class  Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"
.implements Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;
.field private mBinder:Landroid/support/v4/media/session/IMediaSession;
.field private mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
.field private mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/IBinder;
invoke-static {v0}, Landroid/support/v4/media/session/IMediaSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/media/session/IMediaSession;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
return-void
.end method
.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.registers 10
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J
move-result-wide v2
const-wide/16 v4, 0x4
and-long/2addr v4, v2
const-wide/16 v6, 0x0
cmp-long v1, v4, v6
if-nez v1, :cond_20
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string v4, "This session doesn\'t support queue management operations"
invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
:catch_17
:try_end_17
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v4, "Dead object in addQueueItem."
invoke-static {v1, v4, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_1f
return-void
:cond_20
:try_start_20
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaSession;->addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
:try_end_25
.catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_17
goto :goto_1f
.end method
.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
.registers 11
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J
move-result-wide v2
const-wide/16 v4, 0x4
and-long/2addr v4, v2
const-wide/16 v6, 0x0
cmp-long v1, v4, v6
if-nez v1, :cond_20
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string v4, "This session doesn\'t support queue management operations"
invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
:catch_17
:try_end_17
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v4, "Dead object in addQueueItemAt."
invoke-static {v1, v4, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_1f
return-void
:cond_20
:try_start_20
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1, p1, p2}, Landroid/support/v4/media/session/IMediaSession;->addQueueItemAt(Landroid/support/v4/media/MediaDescriptionCompat;I)V
:try_end_25
.catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_17
goto :goto_1f
.end method
.method public adjustVolume(II)V
.registers 6
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
const/4 v2, 0x0
invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/IMediaSession;->adjustVolume(IILjava/lang/String;)V
:goto_6
:try_end_6
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
return-void
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in adjustVolume."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_6
.end method
.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
.registers 5
if-nez p1, :cond_a
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "event may not be null."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
:try_start_a
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaSession;->sendMediaButton(Landroid/view/KeyEvent;)Z
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11
const/4 v1, 0x0
return v1
:catch_11
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in dispatchMediaButtonEvent."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_f
.end method
.method public getExtras()Landroid/os/Bundle;
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getExtras()Landroid/os/Bundle;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v1
:goto_6
return-object v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getExtras."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public getFlags()J
.registers 5
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-wide v2
:goto_6
return-wide v2
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getFlags."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const-wide/16 v2, 0x0
goto :goto_6
.end method
.method public getMediaController()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v1
:goto_6
return-object v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getMetadata."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public getPackageName()Ljava/lang/String;
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getPackageName()Ljava/lang/String;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v1
:goto_6
return-object v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getPackageName."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.registers 9
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getVolumeAttributes()Landroid/support/v4/media/session/ParcelableVolumeInfo;
move-result-object v7
new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
iget v1, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->volumeType:I
iget v2, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->audioStream:I
iget v3, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->controlType:I
iget v4, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->maxVolume:I
iget v5, v7, Landroid/support/v4/media/session/ParcelableVolumeInfo;->currentVolume:I
invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V
:try_end_15
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_15} :catch_16
:goto_15
return-object v0
:catch_16
move-exception v6
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getPlaybackInfo."
invoke-static {v1, v2, v6}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v0, 0x0
goto :goto_15
.end method
.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v1
:goto_6
return-object v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getPlaybackState."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public getQueue()Ljava/util/List;
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getQueue()Ljava/util/List;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v1
:goto_6
return-object v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getQueue."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public getQueueTitle()Ljava/lang/CharSequence;
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getQueueTitle()Ljava/lang/CharSequence;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v1
:goto_6
return-object v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getQueueTitle."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public getRatingType()I
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getRatingType()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v1
:goto_6
return v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getRatingType."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public getRepeatMode()I
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getRepeatMode()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v1
:goto_6
return v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getRepeatMode."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public getSessionActivity()Landroid/app/PendingIntent;
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getLaunchPendingIntent()Landroid/app/PendingIntent;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v1
:goto_6
return-object v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in getSessionActivity."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
if-nez v0, :cond_d
new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsBase;-><init>(Landroid/support/v4/media/session/IMediaSession;)V
iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
:cond_d
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mTransportControls:Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
return-object v0
.end method
.method public isShuffleModeEnabled()Z
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->isShuffleModeEnabled()Z
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v1
:goto_6
return v1
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in isShuffleModeEnabled."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_6
.end method
.method public registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
.registers 6
if-nez p1, :cond_a
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "callback may not be null."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
:try_start_a
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
#getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$100(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;
invoke-interface {v2, v1}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
#calls: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->setHandler(Landroid/os/Handler;)V
invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$200(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
const/4 v1, 0x1
iput-boolean v1, p1, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z
:goto_25
:try_end_25
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_25} :catch_26
return-void
:catch_26
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in registerCallback."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onSessionDestroyed()V
goto :goto_25
.end method
.method public removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.registers 10
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J
move-result-wide v2
const-wide/16 v4, 0x4
and-long/2addr v4, v2
const-wide/16 v6, 0x0
cmp-long v1, v4, v6
if-nez v1, :cond_20
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string v4, "This session doesn\'t support queue management operations"
invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
:catch_17
:try_end_17
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v4, "Dead object in removeQueueItem."
invoke-static {v1, v4, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_1f
return-void
:cond_20
:try_start_20
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaSession;->removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
:try_end_25
.catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_17
goto :goto_1f
.end method
.method public removeQueueItemAt(I)V
.registers 10
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getFlags()J
move-result-wide v2
const-wide/16 v4, 0x4
and-long/2addr v4, v2
const-wide/16 v6, 0x0
cmp-long v1, v4, v6
if-nez v1, :cond_20
new-instance v1, Ljava/lang/UnsupportedOperationException;
const-string v4, "This session doesn\'t support queue management operations"
invoke-direct {v1, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v1
:catch_17
:try_end_17
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_17
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v4, "Dead object in removeQueueItemAt."
invoke-static {v1, v4, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_1f
return-void
:cond_20
:try_start_20
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1, p1}, Landroid/support/v4/media/session/IMediaSession;->removeQueueItemAt(I)V
:try_end_25
.catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_17
goto :goto_1f
.end method
.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.registers 7
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
new-instance v2, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;
invoke-direct {v2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;-><init>(Landroid/os/ResultReceiver;)V
invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/IMediaSession;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;)V
:try_end_a
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in sendCommand."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_a
.end method
.method public setVolumeTo(II)V
.registers 6
:try_start_0
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
const/4 v2, 0x0
invoke-interface {v1, p1, p2, v2}, Landroid/support/v4/media/session/IMediaSession;->setVolumeTo(IILjava/lang/String;)V
:goto_6
:try_end_6
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
return-void
:catch_7
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in setVolumeTo."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_6
.end method
.method public unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
.registers 5
if-nez p1, :cond_a
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "callback may not be null."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_a
:try_start_a
iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
#getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$100(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/media/session/IMediaControllerCallback;
invoke-interface {v2, v1}, Landroid/support/v4/media/session/IMediaSession;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplBase;->mBinder:Landroid/support/v4/media/session/IMediaSession;
invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->asBinder()Landroid/os/IBinder;
move-result-object v1
const/4 v2, 0x0
invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
const/4 v1, 0x0
iput-boolean v1, p1, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mRegistered:Z
:goto_22
:try_end_22
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_22} :catch_23
return-void
:catch_23
move-exception v0
const-string v1, "MediaControllerCompat"
const-string v2, "Dead object in unregisterCallback."
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_22
.end method