.class  Landroid/support/v4/app/NotificationCompatHoneycomb;
.super Ljava/lang/Object;
.source "NotificationCompatHoneycomb.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static add(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;)Landroid/app/Notification;
.registers 15
new-instance v1, Landroid/app/Notification$Builder;
invoke-direct {v1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V
iget-wide v2, p1, Landroid/app/Notification;->when:J
invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;
move-result-object v1
iget v2, p1, Landroid/app/Notification;->icon:I
iget v3, p1, Landroid/app/Notification;->iconLevel:I
invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;
move-result-object v1
iget-object v2, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
move-result-object v1
iget-object v2, p1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;
invoke-virtual {v1, v2, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
move-result-object v1
iget-object v2, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;
iget v3, p1, Landroid/app/Notification;->audioStreamType:I
invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
move-result-object v1
iget-object v2, p1, Landroid/app/Notification;->vibrate:[J
invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;
move-result-object v1
iget v2, p1, Landroid/app/Notification;->ledARGB:I
iget v3, p1, Landroid/app/Notification;->ledOnMS:I
iget v4, p1, Landroid/app/Notification;->ledOffMS:I
invoke-virtual {v1, v2, v3, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;
move-result-object v2
iget v1, p1, Landroid/app/Notification;->flags:I
and-int/lit8 v1, v1, 0x2
if-eqz v1, :cond_8c
const/4 v1, 0x1
:goto_3e
invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;
move-result-object v2
iget v1, p1, Landroid/app/Notification;->flags:I
and-int/lit8 v1, v1, 0x8
if-eqz v1, :cond_8e
const/4 v1, 0x1
:goto_49
invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
move-result-object v2
iget v1, p1, Landroid/app/Notification;->flags:I
and-int/lit8 v1, v1, 0x10
if-eqz v1, :cond_90
const/4 v1, 0x1
:goto_54
invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;
move-result-object v1
iget v2, p1, Landroid/app/Notification;->defaults:I
invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, p4}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, p7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
move-result-object v1
iget-object v2, p1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;
invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
move-result-object v2
iget v1, p1, Landroid/app/Notification;->flags:I
and-int/lit16 v1, v1, 0x80
if-eqz v1, :cond_92
const/4 v1, 0x1
:goto_7b
invoke-virtual {v2, p8, v1}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, p9}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
move-result-object v1
invoke-virtual {v1, p6}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;
move-result-object v1
return-object v1
:cond_8c
const/4 v1, 0x0
goto :goto_3e
:cond_8e
const/4 v1, 0x0
goto :goto_49
:cond_90
const/4 v1, 0x0
goto :goto_54
:cond_92
const/4 v1, 0x0
goto :goto_7b
.end method