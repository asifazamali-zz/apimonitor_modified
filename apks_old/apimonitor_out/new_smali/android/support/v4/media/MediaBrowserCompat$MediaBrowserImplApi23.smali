.class  Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;
.super Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;
.source "MediaBrowserCompat.java"
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/support/v4/media/MediaBrowserCompat$ConnectionCallback;Landroid/os/Bundle;)V
return-void
.end method
.method public getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;->mServiceBinderWrapper:Landroid/support/v4/media/MediaBrowserCompat$ServiceBinderWrapper;
if-nez v0, :cond_c
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi23;->mBrowserObj:Ljava/lang/Object;
iget-object v1, p2, Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;->mItemCallbackObj:Ljava/lang/Object;
invoke-static {v0, p1, v1}, Landroid/support/v4/media/MediaBrowserCompatApi23;->getItem(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
:goto_b
return-void
:cond_c
invoke-super {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplApi21;->getItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserCompat$ItemCallback;)V
goto :goto_b
.end method