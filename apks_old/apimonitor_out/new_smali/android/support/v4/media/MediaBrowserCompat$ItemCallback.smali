.class public abstract Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"
.field final mItemCallbackObj:Ljava/lang/Object;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-lt v0, v1, :cond_15
new-instance v0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;
invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback$StubApi23;-><init>(Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
invoke-static {v0}, Landroid/support/v4/media/MediaBrowserCompatApi23;->createItemCallback(Landroid/support/v4/media/MediaBrowserCompatApi23$ItemCallback;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->mItemCallbackObj:Ljava/lang/Object;
:goto_14
return-void
:cond_15
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->mItemCallbackObj:Ljava/lang/Object;
goto :goto_14
.end method
.method public onError(Ljava/lang/String;)V
.registers 2
.parameter
.end parameter
return-void
.end method
.method public onItemLoaded(Landroid/support/v4/media/MediaBrowserCompat$MediaItem;)V
.registers 2
return-void
.end method