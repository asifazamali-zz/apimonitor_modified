.class  Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"
.implements Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImpl;
.implements Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;
.field  mMessenger:Landroid/os/Messenger;
.field  mServiceObj:Ljava/lang/Object;
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getBrowserRootHints()Landroid/os/Bundle;
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;
if-nez v1, :cond_6
:goto_5
:cond_5
return-object v0
:cond_6
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
if-nez v1, :cond_14
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This should be called inside of onLoadChildren or onLoadItem methods"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;
if-eqz v1, :cond_5
new-instance v0, Landroid/os/Bundle;
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat;->mCurConnection:Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
iget-object v1, v1, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->rootHints:Landroid/os/Bundle;
invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
goto :goto_5
.end method
.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;
if-nez v0, :cond_a
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->notifyChildrenChanged(Ljava/lang/Object;Ljava/lang/String;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v0, v0, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;
new-instance v1, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;
invoke-direct {v1, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/String;Landroid/os/Bundle;)V
invoke-virtual {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z
goto :goto_9
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;
invoke-static {v0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->onBind(Ljava/lang/Object;Landroid/content/Intent;)Landroid/os/IBinder;
move-result-object v0
return-object v0
.end method
.method public onCreate()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-static {v0, p0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->createService(Landroid/content/Context;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ServiceCompatProxy;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;
invoke-static {v0}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->onCreate(Ljava/lang/Object;)V
return-void
.end method
.method public onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;
.registers 8
const/4 v1, 0x0
if-eqz p3, :cond_32
const-string v2, "extra_client_version"
const/4 v3, 0x0
invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
if-eqz v2, :cond_32
const-string v2, "extra_client_version"
invoke-virtual {p3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
new-instance v2, Landroid/os/Messenger;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v3, v3, Landroid/support/v4/media/MediaBrowserServiceCompat;->mHandler:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;
invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "extra_service_version"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "extra_messenger"
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mMessenger:Landroid/os/Messenger;
invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;
move-result-object v3
invoke-static {v1, v2, v3}, Landroid/support/v4/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
:cond_32
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-virtual {v2, p1, p2, p3}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
move-result-object v0
if-nez v0, :cond_3c
const/4 v2, 0x0
:goto_3b
return-object v2
:cond_3c
if-nez v1, :cond_4c
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;
move-result-object v1
:goto_42
:cond_42
new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getRootId()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V
goto :goto_3b
:cond_4c
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;
move-result-object v2
if-eqz v2, :cond_42
invoke-virtual {v0}, Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;->getExtras()Landroid/os/Bundle;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
goto :goto_42
.end method
.method public onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
.registers 5
new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;
invoke-direct {v0, p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;Ljava/lang/Object;Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper;)V
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-virtual {v1, p1, v0}, Landroid/support/v4/media/MediaBrowserServiceCompat;->onLoadChildren(Ljava/lang/String;Landroid/support/v4/media/MediaBrowserServiceCompat$Result;)V
return-void
.end method
.method public setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi21;->mServiceObj:Ljava/lang/Object;
invoke-virtual {p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;
move-result-object v1
invoke-static {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi21;->setSessionToken(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method