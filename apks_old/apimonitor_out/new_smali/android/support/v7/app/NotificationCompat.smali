.class public Landroid/support/v7/app/NotificationCompat;
.super Landroid/support/v4/app/NotificationCompat;
.source "NotificationCompat.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat;-><init>()V
return-void
.end method
.method static synthetic access$000(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
.registers 2
invoke-static {p0}, Landroid/support/v7/app/NotificationCompat;->findLatestIncomingMessage(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
move-result-object v0
return-object v0
.end method
.method static synthetic access$100(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
.registers 4
invoke-static {p0, p1, p2}, Landroid/support/v7/app/NotificationCompat;->makeMessageLine(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method static synthetic access$300(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
.registers 3
invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
move-result-object v0
return-object v0
.end method
.method static synthetic access$400(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
.registers 3
invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
move-result-object v0
return-object v0
.end method
.method static synthetic access$500(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
return-void
.end method
.method static synthetic access$600(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
.registers 3
invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
move-result-object v0
return-object v0
.end method
.method static synthetic access$700(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addBigStyleToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
return-void
.end method
.method static synthetic access$800(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addHeadsUpToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
return-void
.end method
.method static synthetic access$900(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleToBuilderApi24(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
return-void
.end method
.method private static addBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 23
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$MediaStyle;
if-eqz v3, :cond_7c
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
move-object/from16 v20, v0
check-cast v20, Landroid/support/v7/app/NotificationCompat$MediaStyle;
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;
move-result-object v3
if-eqz v3, :cond_74
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;
move-result-object v2
:goto_1a
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;
if-eqz v3, :cond_79
if-eqz v2, :cond_79
const/16 v19, 0x1
:goto_26
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I
move-object/from16 v0, p1
iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
move-object/from16 v0, p1
iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J
move-result-wide v12
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I
move-result v14
const/4 v15, 0x0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;
move-object/from16 v16, v0
move-object/from16 v0, v20
iget-boolean v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z
move/from16 v17, v0
move-object/from16 v0, v20
iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;
move-object/from16 v18, v0
move-object/from16 v3, p0
invoke-static/range {v3 .. v19}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideMediaBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)V
if-eqz v19, :cond_73
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;
invoke-static {v3, v4, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
:goto_73
:cond_73
return-void
:cond_74
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v2
goto :goto_1a
:cond_79
const/16 v19, 0x0
goto :goto_26
:cond_7c
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;
if-eqz v3, :cond_73
invoke-static/range {p0 .. p1}, Landroid/support/v7/app/NotificationCompat;->addDecoratedBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
goto :goto_73
.end method
.method private static addBigStyleToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 22
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;
move-result-object v3
if-eqz v3, :cond_69
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;
move-result-object v2
:goto_a
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;
if-eqz v3, :cond_6e
if-eqz v2, :cond_6e
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I
move-object/from16 v0, p1
iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
move-object/from16 v0, p1
iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J
move-result-wide v12
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I
move-result v14
const/4 v15, 0x0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;
move-object/from16 v16, v0
const/16 v17, 0x0
const/16 v18, 0x0
const/16 v19, 0x1
move-object/from16 v3, p0
invoke-static/range {v3 .. v19}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideMediaBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)V
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;
invoke-static {v3, v4, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I
move-result v5
invoke-static {v3, v4, v5}, Landroid/support/v7/app/NotificationCompat;->setBackgroundColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
:goto_68
:cond_68
return-void
:cond_69
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v2
goto :goto_a
:cond_6e
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;
if-eqz v3, :cond_68
invoke-static/range {p0 .. p1}, Landroid/support/v7/app/NotificationCompat;->addDecoratedBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
goto :goto_68
.end method
.method private static addDecoratedBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 23
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;
move-result-object v2
if-eqz v2, :cond_b
move-object/from16 v19, v2
:goto_8
if-nez v19, :cond_10
:goto_a
return-void
:cond_b
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v19
goto :goto_8
:cond_10
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I
move-object/from16 v0, p0
iget v8, v0, Landroid/app/Notification;->icon:I
move-object/from16 v0, p1
iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
move-object/from16 v0, p1
iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J
move-result-wide v12
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I
move-result v14
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I
move-result v15
sget v16, Landroid/support/v7/appcompat/R$layout;->notification_template_custom_big:I
const/16 v17, 0x0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;
move-object/from16 v18, v0
invoke-static/range {v3 .. v18}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;
move-result-object v20
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, v20
move-object/from16 v1, v19
invoke-static {v3, v0, v1}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;
goto :goto_a
.end method
.method private static addDecoratedHeadsUpToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 23
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;
move-result-object v2
if-eqz v2, :cond_b
move-object/from16 v19, v2
:goto_8
if-nez v2, :cond_10
:goto_a
return-void
:cond_b
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v19
goto :goto_8
:cond_10
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I
move-object/from16 v0, p0
iget v8, v0, Landroid/app/Notification;->icon:I
move-object/from16 v0, p1
iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
move-object/from16 v0, p1
iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J
move-result-wide v12
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I
move-result v14
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I
move-result v15
sget v16, Landroid/support/v7/appcompat/R$layout;->notification_template_custom_big:I
const/16 v17, 0x0
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;
move-object/from16 v18, v0
invoke-static/range {v3 .. v18}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;
move-result-object v20
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, v20
move-object/from16 v1, v19
invoke-static {v3, v0, v1}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
move-object/from16 v0, v20
move-object/from16 v1, p0
iput-object v0, v1, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;
goto :goto_a
.end method
.method private static addHeadsUpToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 21
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;
move-result-object v2
if-eqz v2, :cond_6b
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getHeadsUpContentView()Landroid/widget/RemoteViews;
move-result-object v18
:goto_a
move-object/from16 v0, p1
iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v2, v2, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;
if-eqz v2, :cond_70
if-eqz v18, :cond_70
move-object/from16 v0, p1
iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I
move-object/from16 v0, p1
iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
move-object/from16 v0, p1
iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-boolean v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J
move-result-wide v10
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I
move-result v12
const/4 v13, 0x0
move-object/from16 v0, p1
iget-object v14, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;
const/4 v15, 0x0
const/16 v16, 0x0
const/16 v17, 0x1
invoke-static/range {v2 .. v17}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;
move-object/from16 v0, p1
iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;
move-object/from16 v0, v18
invoke-static {v2, v3, v0}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
move-object/from16 v0, p1
iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I
move-result v4
invoke-static {v2, v3, v4}, Landroid/support/v7/app/NotificationCompat;->setBackgroundColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
:goto_6a
:cond_6a
return-void
:cond_6b
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v18
goto :goto_a
:cond_70
move-object/from16 v0, p1
iget-object v2, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v2, v2, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;
if-eqz v2, :cond_6a
invoke-static/range {p0 .. p1}, Landroid/support/v7/app/NotificationCompat;->addDecoratedHeadsUpToBuilderLollipop(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
goto :goto_6a
.end method
.method private static addMessagingFallBackStyle(Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 11
const/4 v6, 0x0
new-instance v0, Landroid/text/SpannableStringBuilder;
invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getConversationTitle()Ljava/lang/CharSequence;
move-result-object v7
if-nez v7, :cond_1a
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;
move-result-object v7
invoke-static {v7}, Landroid/support/v7/app/NotificationCompat;->hasMessagesWithoutSender(Ljava/util/List;)Z
move-result v7
if-eqz v7, :cond_42
:cond_1a
const/4 v5, 0x1
:goto_1b
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v7
add-int/lit8 v1, v7, -0x1
:goto_21
if-ltz v1, :cond_49
invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
if-eqz v5, :cond_44
invoke-static {p2, p0, v3}, Landroid/support/v7/app/NotificationCompat;->makeMessageLine(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
move-result-object v2
:goto_2f
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v7
add-int/lit8 v7, v7, -0x1
if-eq v1, v7, :cond_3c
const-string v7, "\n"
invoke-virtual {v0, v6, v7}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_3c
invoke-virtual {v0, v6, v2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
add-int/lit8 v1, v1, -0x1
goto :goto_21
:cond_42
move v5, v6
goto :goto_1b
:cond_44
invoke-virtual {v3}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;
move-result-object v2
goto :goto_2f
:cond_49
invoke-static {p1, v0}, Landroid/support/v7/app/NotificationCompatImplJellybean;->addBigTextStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Ljava/lang/CharSequence;)V
return-void
.end method
.method private static addStyleGetContentViewIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
.registers 23
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$MediaStyle;
if-eqz v3, :cond_75
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
move-object/from16 v20, v0
check-cast v20, Landroid/support/v7/app/NotificationCompat$MediaStyle;
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;
if-eqz v3, :cond_72
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v3
if-eqz v3, :cond_72
const/16 v19, 0x1
:goto_20
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I
move-object/from16 v0, p1
iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
move-object/from16 v0, p1
iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J
move-result-wide v12
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I
move-result v14
move-object/from16 v0, p1
iget-object v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;
move-object/from16 v0, v20
iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I
move-object/from16 v16, v0
move-object/from16 v0, v20
iget-boolean v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z
move/from16 v17, v0
move-object/from16 v0, v20
iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;
move-object/from16 v18, v0
move-object/from16 v3, p0
invoke-static/range {v3 .. v19}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideContentViewMedia(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
move-result-object v2
if-eqz v19, :cond_82
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v4
invoke-static {v3, v2, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
:goto_71
return-object v2
:cond_72
const/16 v19, 0x0
goto :goto_20
:cond_75
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;
if-eqz v3, :cond_82
invoke-static/range {p1 .. p1}, Landroid/support/v7/app/NotificationCompat;->getDecoratedContentView(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
move-result-object v2
goto :goto_71
:cond_82
const/4 v2, 0x0
goto :goto_71
.end method
.method private static addStyleGetContentViewJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
.registers 3
iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v0, v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;
if-eqz v0, :cond_d
iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
check-cast v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;
invoke-static {v0, p0, p1}, Landroid/support/v7/app/NotificationCompat;->addMessagingFallBackStyle(Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
:cond_d
invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewIcs(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
move-result-object v0
return-object v0
.end method
.method private static addStyleGetContentViewLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
.registers 25
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$MediaStyle;
if-eqz v3, :cond_b6
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
move-object/from16 v22, v0
check-cast v22, Landroid/support/v7/app/NotificationCompat$MediaStyle;
move-object/from16 v0, v22
iget-object v4, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I
move-object/from16 v0, v22
iget-object v3, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
if-eqz v3, :cond_a8
move-object/from16 v0, v22
iget-object v3, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
invoke-virtual {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->getToken()Ljava/lang/Object;
move-result-object v3
:goto_22
move-object/from16 v0, p0
invoke-static {v0, v4, v3}, Landroid/support/v7/app/NotificationCompatImpl21;->addMediaStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;[ILjava/lang/Object;)V
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v3
if-eqz v3, :cond_ab
const/16 v19, 0x1
:goto_2f
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0x15
if-lt v3, v4, :cond_ae
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0x17
if-gt v3, v4, :cond_ae
const/16 v21, 0x1
:goto_3d
if-nez v19, :cond_47
if-eqz v21, :cond_b1
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getBigContentView()Landroid/widget/RemoteViews;
move-result-object v3
if-eqz v3, :cond_b1
:cond_47
const/16 v20, 0x1
:goto_49
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;
if-eqz v3, :cond_b4
if-eqz v20, :cond_b4
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-object v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I
move-object/from16 v0, p1
iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
move-object/from16 v0, p1
iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;
move-object/from16 v0, p1
iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J
move-result-wide v12
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I
move-result v14
move-object/from16 v0, p1
iget-object v15, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mActions:Ljava/util/ArrayList;
move-object/from16 v0, v22
iget-object v0, v0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I
move-object/from16 v16, v0
const/16 v17, 0x0
const/16 v18, 0x0
move-object/from16 v3, p0
invoke-static/range {v3 .. v19}, Landroid/support/v7/app/NotificationCompatImplBase;->overrideContentViewMedia(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
move-result-object v2
if-eqz v19, :cond_9c
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v4
invoke-static {v3, v2, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
:cond_9c
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I
move-result v4
invoke-static {v3, v2, v4}, Landroid/support/v7/app/NotificationCompat;->setBackgroundColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
:goto_a7
return-object v2
:cond_a8
const/4 v3, 0x0
goto/16 :goto_22
:cond_ab
const/16 v19, 0x0
goto :goto_2f
:cond_ae
const/16 v21, 0x0
goto :goto_3d
:cond_b1
const/16 v20, 0x0
goto :goto_49
:cond_b4
const/4 v2, 0x0
goto :goto_a7
:cond_b6
move-object/from16 v0, p1
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v3, v3, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;
if-eqz v3, :cond_c3
invoke-static/range {p1 .. p1}, Landroid/support/v7/app/NotificationCompat;->getDecoratedContentView(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
move-result-object v2
goto :goto_a7
:cond_c3
invoke-static/range {p0 .. p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
move-result-object v2
goto :goto_a7
.end method
.method private static addStyleToBuilderApi24(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 3
iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v0, v0, Landroid/support/v7/app/NotificationCompat$DecoratedCustomViewStyle;
if-eqz v0, :cond_a
invoke-static {p0}, Landroid/support/v7/app/NotificationCompatImpl24;->addDecoratedCustomViewStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
:cond_9
:goto_9
return-void
:cond_a
iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v0, v0, Landroid/support/v7/app/NotificationCompat$DecoratedMediaCustomViewStyle;
if-eqz v0, :cond_14
invoke-static {p0}, Landroid/support/v7/app/NotificationCompatImpl24;->addDecoratedMediaCustomViewStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)V
goto :goto_9
:cond_14
iget-object v0, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mStyle:Landroid/support/v4/app/NotificationCompat$Style;
instance-of v0, v0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;
if-nez v0, :cond_9
invoke-static {p0, p1}, Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewLollipop(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
goto :goto_9
.end method
.method private static findLatestIncomingMessage(Landroid/support/v4/app/NotificationCompat$MessagingStyle;)Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
.registers 5
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
add-int/lit8 v0, v3, -0x1
:goto_a
if-ltz v0, :cond_20
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_1d
:goto_1c
return-object v1
:cond_1d
add-int/lit8 v0, v0, -0x1
goto :goto_a
:cond_20
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
move-result v3
if-nez v3, :cond_34
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
move-object v1, v3
goto :goto_1c
:cond_34
const/4 v1, 0x0
goto :goto_1c
.end method
.method private static getDecoratedContentView(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
.registers 20
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v3
if-nez v3, :cond_8
const/4 v2, 0x0
:goto_7
return-object v2
:cond_8
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentTitle:Ljava/lang/CharSequence;
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentText:Ljava/lang/CharSequence;
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContentInfo:Ljava/lang/CharSequence;
move-object/from16 v0, p0
iget v7, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNumber:I
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mNotification:Landroid/app/Notification;
iget v8, v8, Landroid/app/Notification;->icon:I
move-object/from16 v0, p0
iget-object v9, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
move-object/from16 v0, p0
iget-object v10, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mSubText:Ljava/lang/CharSequence;
move-object/from16 v0, p0
iget-boolean v11, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mUseChronometer:Z
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getWhenIfShowing()J
move-result-wide v12
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getPriority()I
move-result v14
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I
move-result v15
sget v16, Landroid/support/v7/appcompat/R$layout;->notification_template_custom_big:I
const/16 v17, 0x0
const/16 v18, 0x0
invoke-static/range {v3 .. v18}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/app/NotificationCompat$Builder;->mContext:Landroid/content/Context;
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getContentView()Landroid/widget/RemoteViews;
move-result-object v4
invoke-static {v3, v2, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
goto :goto_7
.end method
.method public static getMediaSession(Landroid/app/Notification;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 7
invoke-static {p0}, Landroid/support/v7/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_38
sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0x15
if-lt v4, v5, :cond_19
const-string v4, "android.mediaSession"
invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v3
if-eqz v3, :cond_38
invoke-static {v3}, Landroid/support/v4/media/session/MediaSessionCompat$Token;->fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
move-result-object v2
:goto_18
return-object v2
:cond_19
const-string v4, "android.mediaSession"
invoke-static {v0, v4}, Landroid/support/v4/app/BundleCompat;->getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
move-result-object v3
if-eqz v3, :cond_38
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
const/4 v4, 0x0
invoke-virtual {v1, v4}, Landroid/os/Parcel;->setDataPosition(I)V
sget-object v4, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/media/session/MediaSessionCompat$Token;
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
goto :goto_18
:cond_38
const/4 v2, 0x0
goto :goto_18
.end method
.method private static hasMessagesWithoutSender(Ljava/util/List;)Z
.registers 4
invoke-interface {p0}, Ljava/util/List;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_6
if-ltz v0, :cond_19
invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;
move-result-object v2
if-nez v2, :cond_16
const/4 v2, 0x1
:goto_15
return v2
:cond_16
add-int/lit8 v0, v0, -0x1
goto :goto_6
:cond_19
const/4 v2, 0x0
goto :goto_15
.end method
.method private static makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
.registers 7
const/4 v1, 0x0
const/4 v2, 0x0
new-instance v0, Landroid/text/style/TextAppearanceSpan;
invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
move-result-object v4
move v3, v2
move-object v5, v1
invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
return-object v0
.end method
.method private static makeMessageLine(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationCompat$MessagingStyle;Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Ljava/lang/CharSequence;
.registers 14
invoke-static {}, Landroid/support/v4/text/BidiFormatter;->getInstance()Landroid/support/v4/text/BidiFormatter;
move-result-object v1
new-instance v4, Landroid/text/SpannableStringBuilder;
invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V
sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v8, 0x15
if-lt v7, v8, :cond_6f
const/4 v0, 0x1
:goto_10
if-nez v0, :cond_18
sget v7, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v8, 0xa
if-gt v7, v8, :cond_71
:cond_18
const/high16 v2, -0x100
:goto_1a
invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;
move-result-object v3
invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;
move-result-object v7
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-eqz v7, :cond_3c
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;
move-result-object v7
if-nez v7, :cond_73
const-string v3, ""
:goto_30
if-eqz v0, :cond_3c
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I
move-result v7
if-eqz v7, :cond_3c
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Builder;->getColor()I
move-result v2
:cond_3c
invoke-virtual {v1, v3}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
invoke-static {v2}, Landroid/support/v7/app/NotificationCompat;->makeFontColorSpan(I)Landroid/text/style/TextAppearanceSpan;
move-result-object v7
invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I
move-result v8
invoke-interface {v5}, Ljava/lang/CharSequence;->length()I
move-result v9
sub-int/2addr v8, v9
invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I
move-result v9
const/16 v10, 0x21
invoke-virtual {v4, v7, v8, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;
move-result-object v7
if-nez v7, :cond_78
const-string v6, ""
:goto_61
const-string v7, "  "
invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
move-result-object v7
invoke-virtual {v1, v6}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v8
invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
return-object v4
:cond_6f
const/4 v0, 0x0
goto :goto_10
:cond_71
const/4 v2, -0x1
goto :goto_1a
:cond_73
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;
move-result-object v3
goto :goto_30
:cond_78
invoke-virtual {p2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;
move-result-object v6
goto :goto_61
.end method
.method private static setBackgroundColor(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
.registers 5
if-nez p2, :cond_c
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Landroid/support/v7/appcompat/R$color;->notification_material_background_media_default_color:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result p2
:cond_c
sget v0, Landroid/support/v7/appcompat/R$id;->status_bar_latest_event_content:I
const-string v1, "setBackgroundColor"
invoke-virtual {p1, v0, v1, p2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V
return-void
.end method