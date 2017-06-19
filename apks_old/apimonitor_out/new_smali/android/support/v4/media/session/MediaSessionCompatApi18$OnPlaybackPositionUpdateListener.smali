.class  Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi18.java"
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
.field protected final mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;
return-void
.end method
.method public onPlaybackPositionUpdate(J)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi18$OnPlaybackPositionUpdateListener;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi18$Callback;->onSeekTo(J)V
return-void
.end method