.class  Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;
.super Landroid/support/v4/app/SupportActivity$ExtraData;
.source "MediaControllerCompat.java"
.field private final mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat;)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/SupportActivity$ExtraData;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
return-void
.end method
.method  getMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerExtraData;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;
return-object v0
.end method