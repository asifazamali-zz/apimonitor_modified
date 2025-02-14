.class public Landroid/support/v4/app/NotificationCompatApi24$Builder;
.super Ljava/lang/Object;
.source "NotificationCompatApi24.java"
.implements Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;
.implements Landroid/support/v4/app/NotificationBuilderWithActions;
.field private b:Landroid/app/Notification$Builder;
.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/lang/String;Ljava/util/ArrayList;Landroid/os/Bundle;IILandroid/app/Notification;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/CharSequence;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
.registers 41
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v5, Landroid/app/Notification$Builder;
invoke-direct {v5, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V
iget-wide v6, p2, Landroid/app/Notification;->when:J
invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
move-result-object v5
move/from16 v0, p14
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;
move-result-object v5
iget v6, p2, Landroid/app/Notification;->icon:I
iget v7, p2, Landroid/app/Notification;->iconLevel:I
invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;
move-result-object v5
iget-object v6, p2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
move-result-object v5
iget-object v6, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
invoke-virtual {v5, v6, p6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
move-result-object v5
iget-object v6, p2, Landroid/app/Notification;->sound:Landroid/net/Uri;
iget v7, p2, Landroid/app/Notification;->audioStreamType:I
invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
move-result-object v5
iget-object v6, p2, Landroid/app/Notification;->vibrate:[J
invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;
move-result-object v5
iget v6, p2, Landroid/app/Notification;->ledARGB:I
iget v7, p2, Landroid/app/Notification;->ledOnMS:I
iget v8, p2, Landroid/app/Notification;->ledOffMS:I
invoke-virtual {v5, v6, v7, v8}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;
move-result-object v6
iget v5, p2, Landroid/app/Notification;->flags:I
and-int/lit8 v5, v5, 0x2
if-eqz v5, :cond_123
const/4 v5, 0x1
:goto_47
invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
move-result-object v6
iget v5, p2, Landroid/app/Notification;->flags:I
and-int/lit8 v5, v5, 0x8
if-eqz v5, :cond_126
const/4 v5, 0x1
:goto_52
invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
move-result-object v6
iget v5, p2, Landroid/app/Notification;->flags:I
and-int/lit8 v5, v5, 0x10
if-eqz v5, :cond_129
const/4 v5, 0x1
:goto_5d
invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
move-result-object v5
iget v6, p2, Landroid/app/Notification;->defaults:I
invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
move-result-object v5
invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v5
invoke-virtual {v5, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v5
move-object/from16 v0, p17
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v5
invoke-virtual {v5, p5}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v5
move-object/from16 v0, p8
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
move-result-object v5
iget-object v6, p2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
move-result-object v6
iget v5, p2, Landroid/app/Notification;->flags:I
and-int/lit16 v5, v5, 0x80
if-eqz v5, :cond_12c
const/4 v5, 0x1
:goto_8c
move-object/from16 v0, p9
invoke-virtual {v6, v0, v5}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
move-result-object v5
move-object/from16 v0, p10
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
move-result-object v5
move/from16 v0, p7
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;
move-result-object v5
move/from16 v0, p15
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;
move-result-object v5
move/from16 v0, p16
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
move-result-object v5
move/from16 v0, p11
move/from16 v1, p12
move/from16 v2, p13
invoke-virtual {v5, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;
move-result-object v5
move/from16 v0, p18
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;
move-result-object v5
move-object/from16 v0, p21
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
move-result-object v5
move-object/from16 v0, p25
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
move-result-object v5
move/from16 v0, p26
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;
move-result-object v5
move-object/from16 v0, p27
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
move-result-object v5
move-object/from16 v0, p19
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
move-result-object v5
move/from16 v0, p22
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;
move-result-object v5
move/from16 v0, p23
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;
move-result-object v5
move-object/from16 v0, p24
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
move-result-object v5
move-object/from16 v0, p28
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v5
iput-object v5, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;
if-eqz p29, :cond_fb
iget-object v5, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;
move-object/from16 v0, p29
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
:cond_fb
if-eqz p30, :cond_104
iget-object v5, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;
move-object/from16 v0, p30
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
:cond_104
if-eqz p31, :cond_10d
iget-object v5, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;
move-object/from16 v0, p31
invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
:cond_10d
invoke-virtual/range {p20 .. p20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_111
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_12f
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
iget-object v6, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;
invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
goto :goto_111
:cond_123
const/4 v5, 0x0
goto/16 :goto_47
:cond_126
const/4 v5, 0x0
goto/16 :goto_52
:cond_129
const/4 v5, 0x0
goto/16 :goto_5d
:cond_12c
const/4 v5, 0x0
goto/16 :goto_8c
:cond_12f
return-void
.end method
.method public addAction(Landroid/support/v4/app/NotificationCompatBase$Action;)V
.registers 8
new-instance v0, Landroid/app/Notification$Action$Builder;
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I
move-result v3
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;
move-result-object v5
invoke-direct {v0, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
move-result-object v3
if-eqz v3, :cond_2b
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
move-result-object v3
invoke-static {v3}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;
move-result-object v4
array-length v5, v4
const/4 v3, 0x0
:goto_21
if-ge v3, v5, :cond_2b
aget-object v2, v4, v3
invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
add-int/lit8 v3, v3, 0x1
goto :goto_21
:cond_2b
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
move-result-object v3
if-eqz v3, :cond_57
new-instance v1, Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
move-result-object v3
invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
:goto_3a
const-string v3, "android.support.allowGeneratedReplies"
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z
move-result v4
invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z
move-result v3
invoke-virtual {v0, v3}, Landroid/app/Notification$Action$Builder;->setAllowGeneratedReplies(Z)Landroid/app/Notification$Action$Builder;
iget-object v3, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;
invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
return-void
:cond_57
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
goto :goto_3a
.end method
.method public build()Landroid/app/Notification;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;
invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;
move-result-object v0
return-object v0
.end method
.method public getBuilder()Landroid/app/Notification$Builder;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompatApi24$Builder;->b:Landroid/app/Notification$Builder;
return-object v0
.end method