.class  Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;
.field final synthetic val$options:Landroid/os/Bundle;
.field final synthetic val$parentId:Ljava/lang/String;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;Ljava/lang/String;Landroid/os/Bundle;)V
.registers 4
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 10
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;
iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_e
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_5c
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/IBinder;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;
iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v4, v4, Landroid/support/v4/media/MediaBrowserServiceCompat;->mConnections:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v4, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
iget-object v4, v3, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;
invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
if-eqz v2, :cond_e
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_36
:cond_36
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_e
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/util/Pair;
iget-object v7, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$options:Landroid/os/Bundle;
iget-object v4, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v4, Landroid/os/Bundle;
invoke-static {v7, v4}, Landroid/support/v4/media/MediaBrowserCompatUtils;->hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
move-result v4
if-eqz v4, :cond_36
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->this$1:Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;
iget-object v7, v4, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v8, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2;->val$parentId:Ljava/lang/String;
iget-object v4, v1, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v4, Landroid/os/Bundle;
invoke-virtual {v7, v8, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat;->performLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;Landroid/os/Bundle;)V
goto :goto_36
:cond_5c
return-void
.end method