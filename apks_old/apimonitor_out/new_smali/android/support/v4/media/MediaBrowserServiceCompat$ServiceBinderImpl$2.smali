.class  Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
.field final synthetic val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;
invoke-interface {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
if-eqz v1, :cond_14
:cond_14
return-void
.end method