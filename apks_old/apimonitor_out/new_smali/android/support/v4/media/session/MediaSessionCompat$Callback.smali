.class public abstract Landroid/support/v4/media/session/MediaSessionCompat$Callback;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"
.field final mCallbackObj:Ljava/lang/Object;
.field  mSessionImpl:Ljava/lang/ref/WeakReference;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x18
if-lt v0, v1, :cond_15
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi24;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;
:goto_14
return-void
:cond_15
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-lt v0, v1, :cond_27
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi23;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi23;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;
goto :goto_14
:cond_27
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_39
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback$StubApi21;-><init>(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;
goto :goto_14
:cond_39
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->mCallbackObj:Ljava/lang/Object;
goto :goto_14
.end method
.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.registers 2
return-void
.end method
.method public onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
.registers 3
return-void
.end method
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
.registers 4
return-void
.end method
.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onFastForward()V
.registers 1
return-void
.end method
.method public onMediaButtonEvent(Landroid/content/Intent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public onPause()V
.registers 1
return-void
.end method
.method public onPlay()V
.registers 1
return-void
.end method
.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onPrepare()V
.registers 1
return-void
.end method
.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 3
return-void
.end method
.method public onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
.registers 2
return-void
.end method
.method public onRemoveQueueItemAt(I)V
.registers 2
return-void
.end method
.method public onRewind()V
.registers 1
return-void
.end method
.method public onSeekTo(J)V
.registers 3
return-void
.end method
.method public onSetRating(Landroid/support/v4/media/RatingCompat;)V
.registers 2
return-void
.end method
.method public onSetRepeatMode(I)V
.registers 2
return-void
.end method
.method public onSetShuffleModeEnabled(Z)V
.registers 2
return-void
.end method
.method public onSkipToNext()V
.registers 1
return-void
.end method
.method public onSkipToPrevious()V
.registers 1
return-void
.end method
.method public onSkipToQueueItem(J)V
.registers 3
return-void
.end method
.method public onStop()V
.registers 1
return-void
.end method