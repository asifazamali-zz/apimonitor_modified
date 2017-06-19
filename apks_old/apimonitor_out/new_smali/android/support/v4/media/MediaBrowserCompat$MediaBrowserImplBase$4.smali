.class  Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
.field final synthetic val$callback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
.field final synthetic val$extras:Landroid/os/Bundle;
.field final synthetic val$query:Ljava/lang/String;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;->this$0:Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;->val$callback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;->val$query:Ljava/lang/String;
iput-object p4, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;->val$extras:Landroid/os/Bundle;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;->val$callback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;->val$query:Ljava/lang/String;
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$4;->val$extras:Landroid/os/Bundle;
invoke-virtual {v0, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method