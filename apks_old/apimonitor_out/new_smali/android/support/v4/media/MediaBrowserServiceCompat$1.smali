.class  Landroid/support/v4/media/MediaBrowserServiceCompat$1;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
.field final synthetic val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
.field final synthetic val$options:Landroid/os/Bundle;
.field final synthetic val$parentId:Ljava/lang/String;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 6
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
iput-object p4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;
iput-object p5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$options:Landroid/os/Bundle;
invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->onResultSent(Ljava/util/List;I)V
return-void
.end method
.method  onResultSent(Ljava/util/List;I)V
.registers 8
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;
invoke-interface {v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->asBinder()Landroid/os/IBinder;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
if-eq v2, v3, :cond_41
sget-boolean v2, Landroid/support/v4/media/MediaBrowserServiceCompat;->DEBUG:Z
if-eqz v2, :cond_40
const-string v2, "MBServiceCompat"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Not sending onLoadChildren result for connection that has been disconnected. pkg="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:goto_40
:cond_40
return-void
:cond_41
and-int/lit8 v2, p2, 0x1
if-eqz v2, :cond_83
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$options:Landroid/os/Bundle;
invoke-virtual {v2, p1, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->applyOptions(Ljava/util/List;Landroid/os/Bundle;)Ljava/util/List;
move-result-object v1
:goto_4d
:try_start_4d
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
iget-object v2, v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$options:Landroid/os/Bundle;
invoke-interface {v2, v3, v1, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;->onLoadChildren(Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V
:try_end_58
.catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_58} :catch_59
goto :goto_40
:catch_59
move-exception v0
const-string v2, "MBServiceCompat"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Calling onLoadChildren() failed for id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$parentId:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " package="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$1;->val$connection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->pkg:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_40
:cond_83
move-object v1, p1
goto :goto_4d
.end method