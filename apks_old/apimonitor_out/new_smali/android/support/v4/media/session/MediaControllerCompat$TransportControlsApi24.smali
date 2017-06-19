.class  Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;
.source "MediaControllerCompat.java"
.method public constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi23;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method public prepare()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepare(Ljava/lang/Object;)V
return-void
.end method
.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;
invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;
invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;->mControlsObj:Ljava/lang/Object;
invoke-static {v0, p1, p2}, Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;->prepareFromUri(Ljava/lang/Object;Landroid/net/Uri;Landroid/os/Bundle;)V
return-void
.end method