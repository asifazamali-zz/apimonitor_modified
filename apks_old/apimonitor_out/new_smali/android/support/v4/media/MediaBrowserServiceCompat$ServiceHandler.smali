.class final Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaBrowserServiceCompat.java"
.field private final mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
.registers 4
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
new-instance v0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-direct {v0, v1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 10
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
iget v1, p1, Landroid/os/Message;->what:I
packed-switch v1, :pswitch_data_10e
const-string v1, "MBServiceCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Unhandled message: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\n  Service version: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\n  Client version: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p1, Landroid/os/Message;->arg1:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_38
return-void
:pswitch_39
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
const-string v2, "data_package_name"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "data_calling_uid"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v3
const-string v4, "data_root_hints"
invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v4
new-instance v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->connect(Ljava/lang/String;ILandroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
goto :goto_38
:pswitch_5a
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->disconnect(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
goto :goto_38
:pswitch_69
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
const-string v2, "data_media_item_id"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "data_callback_token"
invoke-static {v0, v3}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
move-result-object v3
const-string v4, "data_options"
invoke-virtual {v0, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v4
new-instance v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
goto :goto_38
:pswitch_8a
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
const-string v2, "data_media_item_id"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v3, "data_callback_token"
invoke-static {v0, v3}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
move-result-object v3
new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
goto :goto_38
:pswitch_a5
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
const-string v1, "data_media_item_id"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v1, "data_result_receiver"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/support/v4/os/ResultReceiver;
new-instance v4, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
iget-object v5, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v6, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {v4, v5, v6}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
invoke-virtual {v2, v3, v1, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
goto/16 :goto_38
:pswitch_c3
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
const-string v3, "data_root_hints"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->registerCallbacks(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;Landroid/os/Bundle;)V
goto/16 :goto_38
:pswitch_d9
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
new-instance v2, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {v2, v3, v4}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
invoke-virtual {v1, v2}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->unregisterCallbacks(Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
goto/16 :goto_38
:pswitch_e9
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->mServiceBinderImpl:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;
const-string v1, "data_search_query"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v1, "data_search_extras"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v4
const-string v1, "data_result_receiver"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/support/v4/os/ResultReceiver;
new-instance v5, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;
iget-object v6, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
invoke-direct {v5, v6, v7}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacksCompat;-><init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Landroid/os/Messenger;)V
invoke-virtual {v2, v3, v4, v1, v5}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceBinderImpl;->search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;)V
goto/16 :goto_38
nop
:pswitch_data_10e
.packed-switch 0x1
:pswitch_39
:pswitch_5a
:pswitch_69
:pswitch_8a
:pswitch_a5
:pswitch_c3
:pswitch_d9
:pswitch_e9
.end packed-switch
.end method
.method public postOrRun(Ljava/lang/Runnable;)V
.registers 4
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v1
if-ne v0, v1, :cond_12
invoke-interface {p1}, Ljava/lang/Runnable;->run()V
:goto_11
return-void
:cond_12
invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceHandler;->post(Ljava/lang/Runnable;)Z
goto :goto_11
.end method
.method public sendMessageAtTime(Landroid/os/Message;J)Z
.registers 8
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v0
const-class v1, Landroid/support/v4/media/MediaBrowserCompat;
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
const-string v1, "data_calling_uid"
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z
move-result v1
return v1
.end method