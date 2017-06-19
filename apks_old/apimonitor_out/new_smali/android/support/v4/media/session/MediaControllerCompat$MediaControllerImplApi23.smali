.class  Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;
.super Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;
.source "MediaControllerCompat.java"
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V
return-void
.end method
.method public getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;
.registers 3
iget-object v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi23;->mControllerObj:Ljava/lang/Object;
invoke-static {v1}, Landroid/support/v4/media/session/MediaControllerCompatApi21;->getTransportControls(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_e
new-instance v1, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;
invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;-><init>(Ljava/lang/Object;)V
:goto_d
return-object v1
:cond_e
const/4 v1, 0x0
goto :goto_d
.end method