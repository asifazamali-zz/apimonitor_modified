.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaControllerImplApi21"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;,
        Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
    }
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/support/v4/media/session/MediaControllerCompat$Callback;",
            "Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mControllerObj:Ljava/lang/Object;

.field private mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

.field private mPendingCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaControllerCompat$Callback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->fromToken(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    if-nez v0, :cond_25

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    :cond_25
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->requestExtraBinder()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->fromToken(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->requestExtraBinder()V

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)Landroid/support/v4/media/session/IMediaSession;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    return-object v0
.end method

.method static synthetic access$002(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/support/v4/media/session/IMediaSession;)Landroid/support/v4/media/session/IMediaSession;
    .registers 2

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->processPendingCallbacks()V

    return-void
.end method

.method private processPendingCallbacks()V
    .registers 7

    iget-object v3, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-nez v3, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v4, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    monitor-enter v4

    :try_start_8
    iget-object v3, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-direct {v2, p0, v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iget-object v5, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    iput-boolean v5, v0, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHasExtraCallback:Z
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3c

    :try_start_27
    iget-object v5, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v5, v2}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_3c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_2d

    goto :goto_e

    :catch_2d
    move-exception v1

    :try_start_2e
    const-string v3, "MediaControllerCompat"

    const-string v5, "Dead object in registerCallback."

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_35
    iget-object v3, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    monitor-exit v4

    goto :goto_4

    :catchall_3c
    move-exception v3

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_2e .. :try_end_3e} :catchall_3c

    throw v3
.end method

.method private requestExtraBinder()V
    .registers 5

    const-string v0, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    const/4 v1, 0x0

    new-instance v2, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/os/Handler;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method


# virtual methods
.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .registers 10

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public addQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
    .registers 11

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public adjustVolume(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->adjustVolume(Ljava/lang/Object;II)V

    return-void
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->dispatchMediaButtonEvent(Ljava/lang/Object;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()J
    .registers 3

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getFlags(Ljava/lang/Object;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaController()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    return-object v0
.end method

.method public getMetadata()Landroid/support/v4/media/MediaMetadataCompat;
    .registers 3

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getMetadata(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Landroid/support/v4/media/MediaMetadataCompat;->fromMediaMetadata(Ljava/lang/Object;)Landroid/support/v4/media/MediaMetadataCompat;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getPackageName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackInfo()Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
    .registers 8

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getPlaybackInfo(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_22

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;

    invoke-static {v6}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getPlaybackType(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v6}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getLegacyAudioStream(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v6}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getVolumeControl(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v6}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getMaxVolume(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v6}, Landroid/support/v4/media/session/MediaControllerCompatApi21$PlaybackInfo;->getCurrentVolume(Ljava/lang/Object;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;-><init>(IIIII)V

    :goto_21
    return-object v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    .registers 5

    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v2, :cond_13

    :try_start_4
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2}, Landroid/support/v4/media/session/IMediaSession;->getPlaybackState()Landroid/support/v4/media/session/PlaybackStateCompat;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result-object v2

    :goto_a
    return-object v2

    :catch_b
    move-exception v0

    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in getPlaybackState."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getPlaybackState(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-static {v1}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object v2

    goto :goto_a

    :cond_20
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getQueue()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getQueue(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->fromQueueItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getQueueTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .registers 4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-ge v1, v2, :cond_19

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v1, :cond_19

    :try_start_a
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getRatingType()I
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_11

    move-result v1

    :goto_10
    return v1

    :catch_11
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRatingType."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_19
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getRatingType(Ljava/lang/Object;)I

    move-result v1

    goto :goto_10
.end method

.method public getRepeatMode()I
    .registers 4

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v1, :cond_13

    :try_start_4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->getRepeatMode()I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    :goto_a
    return v1

    :catch_b
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in getRepeatMode."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getSessionActivity(Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
    .registers 3

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi21;-><init>(Ljava/lang/Object;)V

    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isShuffleModeEnabled()Z
    .registers 4

    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v1, :cond_13

    :try_start_4
    iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v1}, Landroid/support/v4/media/session/IMediaSession;->isShuffleModeEnabled()Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    :goto_a
    return v1

    :catch_b
    move-exception v0

    const-string v1, "MediaControllerCompat"

    const-string v2, "Dead object in isShuffleModeEnabled."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public final registerCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V
    .registers 7

    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    #getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$100(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->registerCallback(Ljava/lang/Object;Ljava/lang/Object;Landroid/os/Handler;)V

    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v2, :cond_2c

    #calls: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->setHandler(Landroid/os/Handler;)V
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$200(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;-><init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V

    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mHasExtraCallback:Z

    :try_start_1d
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2, v1}, Landroid/support/v4/media/session/IMediaSession;->registerCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_23

    :goto_22
    return-void

    :catch_23
    move-exception v0

    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in registerCallback."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22

    :cond_2c
    #calls: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->setHandler(Landroid/os/Handler;)V
    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$200(Landroid/support/v4/media/session/MediaControllerCompat$Callback;Landroid/os/Handler;)V

    iget-object v3, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    monitor-enter v3

    :try_start_32
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_22

    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_39

    throw v2
.end method

.method public removeQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
    .registers 10

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public removeQueueItemAt(I)V
    .registers 10

    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getFlags()J

    move-result-wide v0

    const-wide/16 v4, 0x4

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_15

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "This session doesn\'t support queue management operations"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_15
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .registers 5

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->sendCommand(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public setVolumeTo(II)V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->setVolumeTo(Ljava/lang/Object;II)V

    return-void
.end method

.method public final unregisterCallback(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)V
    .registers 6

    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mControllerObj:Ljava/lang/Object;

    #getter for: Landroid/support/v4/media/session/MediaControllerCompat$Callback;->mCallbackObj:Ljava/lang/Object;
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->access$100(Landroid/support/v4/media/session/MediaControllerCompat$Callback;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->unregisterCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    if-eqz v2, :cond_26

    :try_start_d
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    if-eqz v1, :cond_1c

    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    invoke-interface {v2, v1}, Landroid/support/v4/media/session/IMediaSession;->unregisterCallbackListener(Landroid/support/v4/media/session/IMediaControllerCallback;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    :cond_1c
    :goto_1c
    return-void

    :catch_1d
    move-exception v0

    const-string v2, "MediaControllerCompat"

    const-string v3, "Dead object in unregisterCallback."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c

    :cond_26
    iget-object v3, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    monitor-enter v3

    :try_start_29
    iget-object v2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mPendingCallbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_1c

    :catchall_30
    move-exception v2

    monitor-exit v3
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_30

    throw v2
.end method
