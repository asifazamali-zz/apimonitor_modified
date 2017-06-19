.class  Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"
.implements Landroid/support/v4/media/session/MediaSessionCompatApi19$Callback;
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onSeekTo(J)V
.registers 6
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
const/16 v1, 0x12
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;)V
return-void
.end method
.method public onSetRating(Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$2;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
const/16 v1, 0x13
invoke-static {p1}, Landroid/support/v4/media/RatingCompat;->fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->postToHandler(ILjava/lang/Object;)V
return-void
.end method