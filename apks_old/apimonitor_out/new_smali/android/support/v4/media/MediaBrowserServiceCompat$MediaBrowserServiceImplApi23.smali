.class  Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
.source "MediaBrowserServiceCompat.java"
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-direct {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
return-void
.end method
.method public onCreate()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi23;->createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi23$ServiceCompatProxy;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->mServiceObj:Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->mServiceObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V
return-void
.end method
.method public onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
.registers 5
new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;
invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadItem(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
return-void
.end method