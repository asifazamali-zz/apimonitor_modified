.class  Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
.field final synthetic val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;
.field final synthetic val$id:Ljava/lang/String;
.field final synthetic val$token:Landroid/os/IBinder;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Ljava/lang/String;Landroid/os/IBinder;)V
.registers 5
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->val$id:Ljava/lang/String;
iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->val$token:Landroid/os/IBinder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->val$callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;
invoke-interface {v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v0
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
if-nez v1, :cond_2f
const-string v2, "MBServiceCompat"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "removeSubscription for callback that isn\'t registered id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->val$id:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_2e
:cond_2e
return-void
:cond_2f
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->val$id:Ljava/lang/String;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->val$token:Landroid/os/IBinder;
invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->removeSubscription(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/IBinder;)Z
move-result v2
if-nez v2, :cond_2e
const-string v2, "MBServiceCompat"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "removeSubscription called for "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl$4;->val$id:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " which is not subscribed"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_2e
.end method