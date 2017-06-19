.class  Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;
.super Ljava/lang/Object;
.source "TransportMediatorJellybeanMR2.java"
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
.field final synthetic this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
.method constructor <init>(Landroid/support/v4/media/TransportMediatorJellybeanMR2;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPlaybackPositionUpdate(J)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/TransportMediatorJellybeanMR2$6;->this$0:Landroid/support/v4/media/TransportMediatorJellybeanMR2;
iget-object v0, v0, Landroid/support/v4/media/TransportMediatorJellybeanMR2;->mTransportCallback:Landroid/support/v4/media/TransportMediatorCallback;
invoke-interface {v0, p1, p2}, Landroid/support/v4/media/TransportMediatorCallback;->playbackPositionUpdate(J)V
return-void
.end method