.class  Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;
.super Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;
.source "NotificationCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplKitKat;-><init>()V
return-void
.end method
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$BuilderExtender;)Landroid/app/Notification;
.registers 32
new-instance v2, Landroid/support/v4/app/NotificationCompatApi20$Builder;
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->resolveTitle()Ljava/lang/CharSequence;
move-result-object v5
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->resolveText()Ljava/lang/CharSequence;
move-result-object v6
move-object/from16 v0, p1
iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mTickerView:Landroid/widget/RemoteViews;
move-object/from16 v0, p1
iget v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I
move-object/from16 v0, p1
iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentIntent:Landroid/app/PendingIntent;
move-object/from16 v0, p1
iget-object v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mFullScreenIntent:Landroid/app/PendingIntent;
move-object/from16 v0, p1
iget-object v12, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
move-object/from16 v0, p1
iget v13, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressMax:I
move-object/from16 v0, p1
iget v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgress:I
move-object/from16 v0, p1
iget-boolean v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mProgressIndeterminate:Z
move-object/from16 v0, p1
iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mShowWhen:Z
move/from16 v16, v0
move-object/from16 v0, p1
iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z
move/from16 v17, v0
move-object/from16 v0, p1
iget v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPriority:I
move/from16 v18, v0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;
move-object/from16 v19, v0
move-object/from16 v0, p1
iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLocalOnly:Z
move/from16 v20, v0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mPeople:Ljava/util/ArrayList;
move-object/from16 v21, v0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mExtras:Landroid/os/Bundle;
move-object/from16 v22, v0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupKey:Ljava/lang/String;
move-object/from16 v23, v0
move-object/from16 v0, p1
iget-boolean v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mGroupSummary:Z
move/from16 v24, v0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSortKey:Ljava/lang/String;
move-object/from16 v25, v0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;
move-object/from16 v26, v0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mBigContentView:Landroid/widget/RemoteViews;
move-object/from16 v27, v0
invoke-direct/range {v2 .. v27}, Landroid/support/v4/app/NotificationCompatApi20$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;
invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->addActionsToBuilder(Landroid/support/v4/app/NotificationBuilderWithActions;Ljava/util/ArrayList;)V
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
invoke-static {v2, v3}, Landroid/support/v4/app/NotificationCompat;->addStyleToBuilderJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Style;)V
move-object/from16 v0, p2
move-object/from16 v1, p1
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;->build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
move-result-object v28
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
if-eqz v3, :cond_ac
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
move-object/from16 v0, p0
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImplApi20;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V
:cond_ac
return-object v28
.end method
.method public getAction(Landroid/app/Notification;I)Landroid/support/v4/app/NotificationCompat$Action;
.registers 5
sget-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
sget-object v1, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
invoke-static {p1, p2, v0, v1}, Landroid/support/v4/app/NotificationCompatApi20;->getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
move-result-object v0
check-cast v0, Landroid/support/v4/app/NotificationCompat$Action;
return-object v0
.end method
.method public getActionsFromParcelableArrayList(Ljava/util/ArrayList;)[Landroid/support/v4/app/NotificationCompat$Action;
.registers 4
sget-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
sget-object v1, Landroid/support/v4/app/RemoteInput;->FACTORY:Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
invoke-static {p1, v0, v1}, Landroid/support/v4/app/NotificationCompatApi20;->getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/NotificationCompatBase$Action;
move-result-object v0
check-cast v0, [Landroid/support/v4/app/NotificationCompat$Action;
check-cast v0, [Landroid/support/v4/app/NotificationCompat$Action;
return-object v0
.end method
.method public getGroup(Landroid/app/Notification;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->getGroup(Landroid/app/Notification;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getLocalOnly(Landroid/app/Notification;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->getLocalOnly(Landroid/app/Notification;)Z
move-result v0
return v0
.end method
.method public getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method public getSortKey(Landroid/app/Notification;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->getSortKey(Landroid/app/Notification;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public isGroupSummary(Landroid/app/Notification;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/app/NotificationCompatApi20;->isGroupSummary(Landroid/app/Notification;)Z
move-result v0
return v0
.end method