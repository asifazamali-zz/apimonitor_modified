.class  Landroid/support/v4/media/TransportMediator$1;
.super Ljava/lang/Object;
.source "TransportMediator.java"
.implements Landroid/support/v4/media/TransportMediatorCallback;
.field final synthetic this$0:Landroid/support/v4/media/TransportMediator;
.method constructor <init>(Landroid/support/v4/media/TransportMediator;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getPlaybackPosition()J
.registers 3
iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;
iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;
invoke-virtual {v0}, Landroid/support/v4/media/TransportPerformer;->onGetCurrentPosition()J
move-result-wide v0
return-wide v0
.end method
.method public handleAudioFocusChange(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;
iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;
invoke-virtual {v0, p1}, Landroid/support/v4/media/TransportPerformer;->onAudioFocusChange(I)V
return-void
.end method
.method public handleKey(Landroid/view/KeyEvent;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;
iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mKeyEventCallback:Landroid/view/KeyEvent$Callback;
invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z
return-void
.end method
.method public playbackPositionUpdate(J)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/TransportMediator$1;->this$0:Landroid/support/v4/media/TransportMediator;
iget-object v0, v0, Landroid/support/v4/media/TransportMediator;->mCallbacks:Landroid/support/v4/media/TransportPerformer;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/TransportPerformer;->onSeekTo(J)V
return-void
.end method