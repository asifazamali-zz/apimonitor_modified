.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"
.field static final ACTION_ARGUMENT_EXTRAS:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_EXTRAS"
.field static final ACTION_ARGUMENT_MEDIA_ID:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"
.field static final ACTION_ARGUMENT_QUERY:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_QUERY"
.field static final ACTION_ARGUMENT_REPEAT_MODE:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"
.field static final ACTION_ARGUMENT_SHUFFLE_MODE_ENABLED:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE_ENABLED"
.field static final ACTION_ARGUMENT_URI:Ljava/lang/String; = "android.support.v4.media.session.action.ARGUMENT_URI"
.field static final ACTION_PLAY_FROM_URI:Ljava/lang/String; = "android.support.v4.media.session.action.PLAY_FROM_URI"
.field static final ACTION_PREPARE:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE"
.field static final ACTION_PREPARE_FROM_MEDIA_ID:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"
.field static final ACTION_PREPARE_FROM_SEARCH:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"
.field static final ACTION_PREPARE_FROM_URI:Ljava/lang/String; = "android.support.v4.media.session.action.PREPARE_FROM_URI"
.field static final ACTION_SET_REPEAT_MODE:Ljava/lang/String; = "android.support.v4.media.session.action.SET_REPEAT_MODE"
.field static final ACTION_SET_SHUFFLE_MODE_ENABLED:Ljava/lang/String; = "android.support.v4.media.session.action.SET_SHUFFLE_MODE_ENABLED"
.field static final EXTRA_BINDER:Ljava/lang/String; = "android.support.v4.media.session.EXTRA_BINDER"
.field public static final FLAG_HANDLES_MEDIA_BUTTONS:I = 0x1
.field public static final FLAG_HANDLES_QUEUE_COMMANDS:I = 0x4
.field public static final FLAG_HANDLES_TRANSPORT_CONTROLS:I = 0x2
.field private static final MAX_BITMAP_SIZE_IN_DP:I = 0x140
.field static final TAG:Ljava/lang/String; = "MediaSessionCompat"
.field static sMaxBitmapSize:I
.field private final mActiveListeners:Ljava/util/ArrayList;
.field private final mController:Landroid/support/v4/media/session/MediaControllerCompat;
.field private final mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;
iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_1a
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$2;
invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompat$2;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
invoke-virtual {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
:cond_1a
new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat;
invoke-direct {v0, p1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mController:Landroid/support/v4/media/session/MediaControllerCompat;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
.registers 9
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;
if-nez p1, :cond_15
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "context must not be null"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_15
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_23
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "tag must not be null or empty"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_23
if-nez p3, :cond_32
invoke-static {p1}, Landroid/support/v4/media/session/MediaButtonReceiver;->getMediaButtonReceiverComponent(Landroid/content/Context;)Landroid/content/ComponentName;
move-result-object p3
if-nez p3, :cond_32
const-string v1, "MediaSessionCompat"
const-string v2, "Couldn\'t find a unique registered media button receiver in the given context."
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_32
if-eqz p3, :cond_44
if-nez p4, :cond_44
new-instance v0, Landroid/content/Intent;
const-string v1, "android.intent.action.MEDIA_BUTTON"
invoke-static {v1}, Ldroidbox/android/content/Intent;->droidbox_cons(Ljava/lang/String;)V
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
invoke-static {p1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object p4
:cond_44
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x15
if-lt v1, v2, :cond_7c
new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
invoke-direct {v1, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v1, p4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$1;
invoke-direct {v1, p0}, Landroid/support/v4/media/session/MediaSessionCompat$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V
invoke-virtual {p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
:goto_5e
new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat;
invoke-direct {v1, p1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mController:Landroid/support/v4/media/session/MediaControllerCompat;
sget v1, Landroid/support/v4/media/session/MediaSessionCompat;->sMaxBitmapSize:I
if-nez v1, :cond_7b
const/4 v1, 0x1
const/high16 v2, 0x43a0
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v1
float-to-int v1, v1
sput v1, Landroid/support/v4/media/session/MediaSessionCompat;->sMaxBitmapSize:I
:cond_7b
return-void
:cond_7c
new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
invoke-direct {v1, p1, p2, p3, p4}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;)V
iput-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
goto :goto_5e
.end method
.method public static fromMediaSession(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat;
.registers 4
if-eqz p0, :cond_a
if-eqz p1, :cond_a
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-ge v0, v1, :cond_c
:cond_a
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;
new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;
invoke-direct {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi21;-><init>(Ljava/lang/Object;)V
invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;)V
goto :goto_b
.end method
.method public static obtain(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat;
.registers 3
invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->fromMediaSession(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat;
move-result-object v0
return-object v0
.end method
.method public addOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Listener may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public getCallingPackage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getCallingPackage()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getController()Landroid/support/v4/media/session/MediaControllerCompat;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mController:Landroid/support/v4/media/session/MediaControllerCompat;
return-object v0
.end method
.method public getMediaSession()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getMediaSession()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getRemoteControlClient()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getRemoteControlClient()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
move-result-object v0
return-object v0
.end method
.method public isActive()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->isActive()Z
move-result v0
return v0
.end method
.method public release()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->release()V
return-void
.end method
.method public removeOnActiveChangeListener(Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Listener may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "event cannot be null or empty"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public setActive(Z)V
.registers 5
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setActive(Z)V
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mActiveListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;
invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$OnActiveChangeListener;->onActiveChanged()V
goto :goto_b
:cond_1b
return-void
.end method
.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
return-void
.end method
.method public setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
if-eqz p2, :cond_8
:goto_4
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;Landroid/os/Handler;)V
return-void
:cond_8
new-instance p2, Landroid/os/Handler;
invoke-direct {p2}, Landroid/os/Handler;-><init>()V
goto :goto_4
.end method
.method public setExtras(Landroid/os/Bundle;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setExtras(Landroid/os/Bundle;)V
return-void
.end method
.method public setFlags(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setFlags(I)V
return-void
.end method
.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V
return-void
.end method
.method public setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V
return-void
.end method
.method public setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setPlaybackState(Landroid/support/v4/media/session/PlaybackStateCompat;)V
return-void
.end method
.method public setPlaybackToLocal(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setPlaybackToLocal(I)V
return-void
.end method
.method public setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "volumeProvider may not be null!"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setPlaybackToRemote(Landroid/support/v4/media/VolumeProviderCompat;)V
return-void
.end method
.method public setQueue(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setQueue(Ljava/util/List;)V
return-void
.end method
.method public setQueueTitle(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setQueueTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public setRatingType(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setRatingType(I)V
return-void
.end method
.method public setRepeatMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setRepeatMode(I)V
return-void
.end method
.method public setSessionActivity(Landroid/app/PendingIntent;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setSessionActivity(Landroid/app/PendingIntent;)V
return-void
.end method
.method public setShuffleModeEnabled(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->mImpl:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;
invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImpl;->setShuffleModeEnabled(Z)V
return-void
.end method