.class  Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;
.super Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;
.source "MediaSessionCompatApi24.java"
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi23$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi23$Callback;)V
return-void
.end method
.method public onPrepare()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;
invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepare()V
return-void
.end method
.method public onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;
check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
return-void
.end method