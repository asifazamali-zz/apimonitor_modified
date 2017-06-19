.class  Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi19.java"
.implements Landroid/media/RemoteControlClient$OnMetadataUpdateListener;
.field protected final mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;
return-void
.end method
.method public onMetadataUpdate(ILjava/lang/Object;)V
.registers 4
const v0, 0x10000001
if-ne p1, v0, :cond_e
instance-of v0, p2, Landroid/media/Rating;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi19$OnMetadataUpdateListener;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;
invoke-interface {v0, p2}, Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;->onSetRating(Ljava/lang/Object;)V
:cond_e
return-void
.end method