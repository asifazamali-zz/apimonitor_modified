.class Landroid/support/v4/media/session/MediaSessionCompatApi18;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;,
        Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final ACTION_SEEK_TO:J = 0x100L

.field private static final TAG:Ljava/lang/String; = "MediaSessionCompatApi18"

.field private static sIsMbrPendingIntentSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlaybackPositionUpdateListener(Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;)Ljava/lang/Object;
    .registers 2

    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;)V

    return-object v0
.end method

.method static getRccTransportControlFlagsFromActions(J)I
    .registers 8

    invoke-static {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    const-wide/16 v2, 0x100

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_f

    or-int/lit16 v0, v0, 0x100

    :cond_f
    return v0
.end method

.method public static registerMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 7

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget-boolean v2, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v2, :cond_f

    :try_start_c
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/app/PendingIntent;)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_f} :catch_17

    :cond_f
    :goto_f
    sget-boolean v2, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-nez v2, :cond_16

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    :cond_16
    return-void

    :catch_17
    move-exception v1

    const-string v2, "MediaSessionCompatApi18"

    const-string v3, "Unable to register media button event receiver with PendingIntent, falling back to ComponentName."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-boolean v2, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    goto :goto_f
.end method

.method public static setOnPlaybackPositionUpdateListener(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 2

    check-cast p0, Landroid/media/RemoteControlClient;

    check-cast p1, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-virtual {p0, p1}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    return-void
.end method

.method public static setState(Ljava/lang/Object;IJFJ)V
    .registers 15

    const-wide/16 v6, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v4, 0x3

    if-ne p1, v4, :cond_24

    cmp-long v4, p2, v6

    if-lez v4, :cond_24

    const-wide/16 v2, 0x0

    cmp-long v4, p5, v6

    if-lez v4, :cond_23

    sub-long v2, v0, p5

    const/4 v4, 0x0

    cmpl-float v4, p4, v4

    if-lez v4, :cond_23

    const/high16 v4, 0x3f80

    cmpl-float v4, p4, v4

    if-eqz v4, :cond_23

    long-to-float v4, v2

    mul-float/2addr v4, p4

    float-to-long v2, v4

    :cond_23
    add-long/2addr p2, v2

    :cond_24
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompatApi14;->getRccStateFromState(I)I

    move-result p1

    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    return-void
.end method

.method public static setTransportControlFlags(Ljava/lang/Object;J)V
    .registers 4

    check-cast p0, Landroid/media/RemoteControlClient;

    invoke-static {p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi18;->getRccTransportControlFlagsFromActions(J)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    return-void
.end method

.method public static unregisterMediaButtonEventReceiver(Landroid/content/Context;Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .registers 5

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sget-boolean v1, Landroid/support/v4/media/session/MediaSessionCompatApi18;->sIsMbrPendingIntentSupported:Z

    if-eqz v1, :cond_10

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/app/PendingIntent;)V

    :goto_f
    return-void

    :cond_10
    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    goto :goto_f
.end method
