.class public Landroid/support/v4/media/session/MediaControllerCompatApi24$TransportControls;
.super Landroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;
.source "MediaControllerCompatApi24.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;-><init>()V
return-void
.end method
.method public static prepare(Ljava/lang/Object;)V
.registers 1
check-cast p0, Landroid/media/session/MediaController$TransportControls;
invoke-virtual {p0}, Landroid/media/session/MediaController$TransportControls;->prepare()V
return-void
.end method
.method public static prepareFromMediaId(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 3
check-cast p0, Landroid/media/session/MediaController$TransportControls;
invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public static prepareFromSearch(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 3
check-cast p0, Landroid/media/session/MediaController$TransportControls;
invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public static prepareFromUri(Ljava/lang/Object;Landroid/net/Uri;Landroid/os/Bundle;)V
.registers 3
check-cast p0, Landroid/media/session/MediaController$TransportControls;
invoke-virtual {p0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
return-void
.end method