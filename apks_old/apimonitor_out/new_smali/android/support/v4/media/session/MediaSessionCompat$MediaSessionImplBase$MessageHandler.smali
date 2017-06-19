.class  Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionCompat.java"
.field private static final KEYCODE_MEDIA_PAUSE:I = 0x7f
.field private static final KEYCODE_MEDIA_PLAY:I = 0x7e
.field private static final MSG_ADD_QUEUE_ITEM:I = 0x19
.field private static final MSG_ADD_QUEUE_ITEM_AT:I = 0x1a
.field private static final MSG_ADJUST_VOLUME:I = 0x2
.field private static final MSG_COMMAND:I = 0x1
.field private static final MSG_CUSTOM_ACTION:I = 0x14
.field private static final MSG_FAST_FORWARD:I = 0x10
.field private static final MSG_MEDIA_BUTTON:I = 0x15
.field private static final MSG_NEXT:I = 0xe
.field private static final MSG_PAUSE:I = 0xc
.field private static final MSG_PLAY:I = 0x7
.field private static final MSG_PLAY_MEDIA_ID:I = 0x8
.field private static final MSG_PLAY_SEARCH:I = 0x9
.field private static final MSG_PLAY_URI:I = 0xa
.field private static final MSG_PREPARE:I = 0x3
.field private static final MSG_PREPARE_MEDIA_ID:I = 0x4
.field private static final MSG_PREPARE_SEARCH:I = 0x5
.field private static final MSG_PREPARE_URI:I = 0x6
.field private static final MSG_PREVIOUS:I = 0xf
.field private static final MSG_RATE:I = 0x13
.field private static final MSG_REMOVE_QUEUE_ITEM:I = 0x1b
.field private static final MSG_REMOVE_QUEUE_ITEM_AT:I = 0x1c
.field private static final MSG_REWIND:I = 0x11
.field private static final MSG_SEEK_TO:I = 0x12
.field private static final MSG_SET_REPEAT_MODE:I = 0x17
.field private static final MSG_SET_SHUFFLE_MODE_ENABLED:I = 0x18
.field private static final MSG_SET_VOLUME:I = 0x16
.field private static final MSG_SKIP_TO_ITEM:I = 0xb
.field private static final MSG_STOP:I = 0xd
.field final synthetic this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
.method public constructor <init>(Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;Landroid/os/Looper;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
return-void
.end method
.method private onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
.registers 13
const/4 v0, 0x1
const/4 v3, 0x0
const-wide/16 v6, 0x0
if-eqz p1, :cond_c
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v8
if-eqz v8, :cond_d
:goto_c
:cond_c
return-void
:cond_d
iget-object v8, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
if-nez v8, :cond_45
move-wide v4, v6
:goto_14
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v8
sparse-switch v8, :sswitch_data_ac
goto :goto_c
:sswitch_1c
iget-object v8, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
if-eqz v8, :cond_9d
iget-object v8, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
invoke-virtual {v8}, Landroid/support/v4/media/session/PlaybackStateCompat;->getState()I
move-result v8
const/4 v9, 0x3
if-ne v8, v9, :cond_9d
move v2, v0
:goto_2e
const-wide/16 v8, 0x204
and-long/2addr v8, v4
cmp-long v8, v8, v6
if-eqz v8, :cond_9f
move v1, v0
:goto_36
const-wide/16 v8, 0x202
and-long/2addr v8, v4
cmp-long v6, v8, v6
if-eqz v6, :cond_a1
:goto_3d
if-eqz v2, :cond_a3
if-eqz v0, :cond_a3
invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V
goto :goto_c
:cond_45
iget-object v8, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
iget-object v8, v8, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;
invoke-virtual {v8}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J
move-result-wide v4
goto :goto_14
:sswitch_4e
const-wide/16 v8, 0x4
and-long/2addr v8, v4
cmp-long v3, v8, v6
if-eqz v3, :cond_c
invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V
goto :goto_c
:sswitch_59
const-wide/16 v8, 0x2
and-long/2addr v8, v4
cmp-long v3, v8, v6
if-eqz v3, :cond_c
invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V
goto :goto_c
:sswitch_64
const-wide/16 v8, 0x20
and-long/2addr v8, v4
cmp-long v3, v8, v6
if-eqz v3, :cond_c
invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V
goto :goto_c
:sswitch_6f
const-wide/16 v8, 0x10
and-long/2addr v8, v4
cmp-long v3, v8, v6
if-eqz v3, :cond_c
invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V
goto :goto_c
:sswitch_7a
const-wide/16 v8, 0x1
and-long/2addr v8, v4
cmp-long v3, v8, v6
if-eqz v3, :cond_c
invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V
goto :goto_c
:sswitch_85
const-wide/16 v8, 0x40
and-long/2addr v8, v4
cmp-long v3, v8, v6
if-eqz v3, :cond_c
invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V
goto/16 :goto_c
:sswitch_91
const-wide/16 v8, 0x8
and-long/2addr v8, v4
cmp-long v3, v8, v6
if-eqz v3, :cond_c
invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V
goto/16 :goto_c
:cond_9d
move v2, v3
goto :goto_2e
:cond_9f
move v1, v3
goto :goto_36
:cond_a1
move v0, v3
goto :goto_3d
:cond_a3
if-nez v2, :cond_c
if-eqz v1, :cond_c
invoke-virtual {p2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V
goto/16 :goto_c
:sswitch_data_ac
.sparse-switch
0x4f -> :sswitch_1c
0x55 -> :sswitch_1c
0x56 -> :sswitch_7a
0x57 -> :sswitch_64
0x58 -> :sswitch_6f
0x59 -> :sswitch_91
0x5a -> :sswitch_85
0x7e -> :sswitch_4e
0x7f -> :sswitch_59
.end sparse-switch
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 9
const/4 v6, 0x0
iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
iget-object v0, v4, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->mCallback:Landroid/support/v4/media/session/MediaSessionCompat$Callback;
if-nez v0, :cond_8
:goto_7
:cond_7
return-void
:cond_8
iget v4, p1, Landroid/os/Message;->what:I
packed-switch v4, :pswitch_data_11e
goto :goto_7
:pswitch_e
iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;
iget-object v4, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->command:Ljava/lang/String;
iget-object v5, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->extras:Landroid/os/Bundle;
iget-object v6, v1, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$Command;->stub:Landroid/os/ResultReceiver;
invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
goto :goto_7
:pswitch_1c
iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v3, Landroid/view/KeyEvent;
new-instance v2, Landroid/content/Intent;
const-string v4, "android.intent.action.MEDIA_BUTTON"
invoke-static {v4}, Ldroidbox/android/content/Intent;->droidbox_cons(Ljava/lang/String;)V
invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v4, "android.intent.extra.KEY_EVENT"
invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z
move-result v4
if-nez v4, :cond_7
invoke-direct {p0, v3, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onMediaButtonEvent(Landroid/view/KeyEvent;Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V
goto :goto_7
:pswitch_36
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepare()V
goto :goto_7
:pswitch_3a
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
goto :goto_7
:pswitch_46
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
goto :goto_7
:pswitch_52
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Landroid/net/Uri;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
goto :goto_7
:pswitch_5e
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlay()V
goto :goto_7
:pswitch_62
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
goto :goto_7
:pswitch_6e
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
goto :goto_7
:pswitch_7a
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Landroid/net/Uri;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
goto :goto_7
:pswitch_86
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Ljava/lang/Long;
invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
move-result-wide v4
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToQueueItem(J)V
goto/16 :goto_7
:pswitch_93
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onPause()V
goto/16 :goto_7
:pswitch_98
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onStop()V
goto/16 :goto_7
:pswitch_9d
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToNext()V
goto/16 :goto_7
:pswitch_a2
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSkipToPrevious()V
goto/16 :goto_7
:pswitch_a7
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onFastForward()V
goto/16 :goto_7
:pswitch_ac
invoke-virtual {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRewind()V
goto/16 :goto_7
:pswitch_b1
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Ljava/lang/Long;
invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
move-result-wide v4
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSeekTo(J)V
goto/16 :goto_7
:pswitch_be
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Landroid/support/v4/media/RatingCompat;
invoke-virtual {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRating(Landroid/support/v4/media/RatingCompat;)V
goto/16 :goto_7
:pswitch_c7
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v5
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
goto/16 :goto_7
:pswitch_d4
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Landroid/support/v4/media/MediaDescriptionCompat;
invoke-virtual {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
goto/16 :goto_7
:pswitch_dd
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Landroid/support/v4/media/MediaDescriptionCompat;
iget v5, p1, Landroid/os/Message;->arg1:I
invoke-virtual {v0, v4, v5}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onAddQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;I)V
goto/16 :goto_7
:pswitch_e8
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Landroid/support/v4/media/MediaDescriptionCompat;
invoke-virtual {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItem(Landroid/support/v4/media/MediaDescriptionCompat;)V
goto/16 :goto_7
:pswitch_f1
iget v4, p1, Landroid/os/Message;->arg1:I
invoke-virtual {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onRemoveQueueItemAt(I)V
goto/16 :goto_7
:pswitch_f8
iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
iget v5, p1, Landroid/os/Message;->arg1:I
invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->adjustVolume(II)V
goto/16 :goto_7
:pswitch_101
iget-object v4, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->this$0:Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;
iget v5, p1, Landroid/os/Message;->arg1:I
invoke-virtual {v4, v5, v6}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase;->setVolumeTo(II)V
goto/16 :goto_7
:pswitch_10a
iget v4, p1, Landroid/os/Message;->arg1:I
invoke-virtual {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetRepeatMode(I)V
goto/16 :goto_7
:pswitch_111
iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v4, Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
invoke-virtual {v0, v4}, Landroid/support/v4/media/session/MediaSessionCompat$Callback;->onSetShuffleModeEnabled(Z)V
goto/16 :goto_7
:pswitch_data_11e
.packed-switch 0x1
:pswitch_e
:pswitch_f8
:pswitch_36
:pswitch_3a
:pswitch_46
:pswitch_52
:pswitch_5e
:pswitch_62
:pswitch_6e
:pswitch_7a
:pswitch_86
:pswitch_93
:pswitch_98
:pswitch_9d
:pswitch_a2
:pswitch_a7
:pswitch_ac
:pswitch_b1
:pswitch_be
:pswitch_c7
:pswitch_1c
:pswitch_101
:pswitch_10a
:pswitch_111
:pswitch_d4
:pswitch_dd
:pswitch_e8
:pswitch_f1
.end packed-switch
.end method
.method public post(I)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->post(ILjava/lang/Object;)V
return-void
.end method
.method public post(ILjava/lang/Object;)V
.registers 4
invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method
.method public post(ILjava/lang/Object;I)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p3, v0, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method
.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
.registers 5
invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method