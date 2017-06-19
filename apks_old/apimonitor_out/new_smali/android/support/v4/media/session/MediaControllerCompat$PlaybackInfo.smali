.class public final Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"
.field public static final PLAYBACK_TYPE_LOCAL:I = 0x1
.field public static final PLAYBACK_TYPE_REMOTE:I = 0x2
.field private final mAudioStream:I
.field private final mCurrentVolume:I
.field private final mMaxVolume:I
.field private final mPlaybackType:I
.field private final mVolumeControl:I
.method constructor <init>(IIIII)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mPlaybackType:I
iput p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mAudioStream:I
iput p3, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mVolumeControl:I
iput p4, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mMaxVolume:I
iput p5, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mCurrentVolume:I
return-void
.end method
.method public getAudioStream()I
.registers 2
iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mAudioStream:I
return v0
.end method
.method public getCurrentVolume()I
.registers 2
iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mCurrentVolume:I
return v0
.end method
.method public getMaxVolume()I
.registers 2
iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mMaxVolume:I
return v0
.end method
.method public getPlaybackType()I
.registers 2
iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mPlaybackType:I
return v0
.end method
.method public getVolumeControl()I
.registers 2
iget v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$PlaybackInfo;->mVolumeControl:I
return v0
.end method