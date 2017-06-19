.class Landroid/support/v7/app/NotificationCompatImplBase;
.super Ljava/lang/Object;
.source "NotificationCompatImplBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# static fields
.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field static final MAX_MEDIA_BUTTONS:I = 0x5

.field static final MAX_MEDIA_BUTTONS_IN_COMPACT:I = 0x3


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;
    .registers 40

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p13

    invoke-direct {v4, v5, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const/16 v17, 0x0

    const/16 v16, 0x0

    const/4 v5, -0x1

    move/from16 v0, p11

    if-ge v0, v5, :cond_131

    const/4 v14, 0x1

    :goto_19
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_39

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_39

    if-eqz v14, :cond_134

    sget v5, Landroid/support/v7/appcompat/R$id;->notification_background:I

    const-string v6, "setBackgroundResource"

    sget v7, Landroid/support/v7/appcompat/R$drawable;->notification_bg_low:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const-string v6, "setBackgroundResource"

    sget v7, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_low_bg:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :cond_39
    :goto_39
    if-eqz p6, :cond_161

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_148

    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v0, p6

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_4e
    if-eqz p5, :cond_7d

    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_right_icon_size:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_background_padding:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int v13, v10, v5

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_151

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p12

    invoke-static {v0, v1, v10, v13, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    sget v5, Landroid/support/v7/appcompat/R$id;->right_icon:I

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_77
    sget v5, Landroid/support/v7/appcompat/R$id;->right_icon:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :cond_7d
    :goto_7d
    if-eqz p1, :cond_86

    sget v5, Landroid/support/v7/appcompat/R$id;->title:I

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_86
    if-eqz p2, :cond_91

    sget v5, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/16 v17, 0x1

    :cond_91
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-ge v5, v6, :cond_1a6

    if-eqz p6, :cond_1a6

    const/4 v12, 0x1

    :goto_9a
    if-eqz p3, :cond_1a9

    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    move-object/from16 v0, p3

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v17, 0x1

    const/4 v12, 0x1

    :goto_ac
    if-eqz p7, :cond_cc

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_cc

    sget v5, Landroid/support/v7/appcompat/R$id;->text:I

    move-object/from16 v0, p7

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz p2, :cond_1e7

    sget v5, Landroid/support/v7/appcompat/R$id;->text2:I

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v5, Landroid/support/v7/appcompat/R$id;->text2:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v16, 0x1

    :cond_cc
    :goto_cc
    if-eqz v16, :cond_f0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_f0

    if-eqz p14, :cond_e7

    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_subtext_size:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v0, v5

    move/from16 v19, v0

    sget v5, Landroid/support/v7/appcompat/R$id;->text:I

    const/4 v6, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v5, v6, v0}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    :cond_e7
    sget v5, Landroid/support/v7/appcompat/R$id;->line1:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_f0
    const-wide/16 v6, 0x0

    cmp-long v5, p9, v6

    if-eqz v5, :cond_120

    if-eqz p8, :cond_1f0

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_1f0

    sget v5, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v5, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v6, "setBase"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v8, v8, v22

    add-long v8, v8, p9

    invoke-virtual {v4, v5, v6, v8, v9}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    sget v5, Landroid/support/v7/appcompat/R$id;->chronometer:I

    const-string v6, "setStarted"

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    :goto_11f
    const/4 v12, 0x1

    :cond_120
    sget v6, Landroid/support/v7/appcompat/R$id;->right_side:I

    if-eqz v12, :cond_201

    const/4 v5, 0x0

    :goto_125
    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v6, Landroid/support/v7/appcompat/R$id;->line3:I

    if-eqz v17, :cond_205

    const/4 v5, 0x0

    :goto_12d
    invoke-virtual {v4, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v4

    :cond_131
    const/4 v14, 0x0

    goto/16 :goto_19

    :cond_134
    sget v5, Landroid/support/v7/appcompat/R$id;->notification_background:I

    const-string v6, "setBackgroundResource"

    sget v7, Landroid/support/v7/appcompat/R$drawable;->notification_bg:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const-string v6, "setBackgroundResource"

    sget v7, Landroid/support/v7/appcompat/R$drawable;->notification_template_icon_bg:I

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_39

    :cond_148
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_4e

    :cond_151
    sget v5, Landroid/support/v7/appcompat/R$id;->right_icon:I

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {v0, v1, v6}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_77

    :cond_161
    if-eqz p5, :cond_7d

    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_196

    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_large_icon_width:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sget v6, Landroid/support/v7/appcompat/R$dimen;->notification_big_circle_margin:I

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v10, v5, v6

    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_small_icon_size_as_large:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p12

    invoke-static {v0, v1, v10, v13, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;

    move-result-object v18

    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    move-object/from16 v0, v18

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_7d

    :cond_196
    sget v5, Landroid/support/v7/appcompat/R$id;->icon:I

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {v0, v1, v6}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    goto/16 :goto_7d

    :cond_1a6
    const/4 v12, 0x0

    goto/16 :goto_9a

    :cond_1a9
    if-lez p4, :cond_1de

    sget v5, Landroid/support/v7/appcompat/R$integer;->status_bar_notification_info_maxnum:I

    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    move/from16 v0, p4

    move/from16 v1, v20

    if-le v0, v1, :cond_1cd

    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    sget v6, Landroid/support/v7/appcompat/R$string;->status_bar_notification_info_overflow:I

    invoke-virtual {v15, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_1c2
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const/16 v17, 0x1

    const/4 v12, 0x1

    goto/16 :goto_ac

    :cond_1cd
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v11

    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    move/from16 v0, p4

    int-to-long v6, v0

    invoke-virtual {v11, v6, v7}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1c2

    :cond_1de
    sget v5, Landroid/support/v7/appcompat/R$id;->info:I

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_ac

    :cond_1e7
    sget v5, Landroid/support/v7/appcompat/R$id;->text2:I

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_cc

    :cond_1f0
    sget v5, Landroid/support/v7/appcompat/R$id;->time:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v5, Landroid/support/v7/appcompat/R$id;->time:I

    const-string v6, "setTime"

    move-wide/from16 v0, p9

    invoke-virtual {v4, v5, v6, v0, v1}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    goto/16 :goto_11f

    :cond_201
    const/16 v5, 0x8

    goto/16 :goto_125

    :cond_205
    const/16 v5, 0x8

    goto/16 :goto_12d
.end method

.method public static applyStandardTemplateWithActions(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZLjava/util/ArrayList;)Landroid/widget/RemoteViews;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "II",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJIIIZ",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    invoke-static/range {p0 .. p14}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v6

    sget v7, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {v6, v7}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    const/4 v3, 0x0

    if-eqz p15, :cond_2e

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2e

    const/4 v3, 0x1

    const/4 v7, 0x3

    if-le v1, v7, :cond_17

    const/4 v1, 0x3

    :cond_17
    const/4 v5, 0x0

    :goto_18
    if-ge v5, v1, :cond_2e

    move-object/from16 v0, p15

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/NotificationCompat$Action;

    invoke-static {p0, v7}, Landroid/support/v7/app/NotificationCompatImplBase;->generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;

    move-result-object v4

    sget v7, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {v6, v7, v4}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2e
    if-eqz v3, :cond_3c

    const/4 v2, 0x0

    :goto_31
    sget v7, Landroid/support/v7/appcompat/R$id;->actions:I

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v7, Landroid/support/v7/appcompat/R$id;->action_divider:I

    invoke-virtual {v6, v7, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object v6

    :cond_3c
    const/16 v2, 0x8

    goto :goto_31
.end method

.method public static buildIntoRemoteViews(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 9

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/support/v7/app/NotificationCompatImplBase;->hideNormalContent(Landroid/widget/RemoteViews;)V

    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p2}, Landroid/widget/RemoteViews;->clone()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    sget v0, Landroid/support/v7/appcompat/R$id;->notification_main_column:I

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_29

    sget v1, Landroid/support/v7/appcompat/R$id;->notification_main_column_container:I

    invoke-static {p0}, Landroid/support/v7/app/NotificationCompatImplBase;->calculateTopPadding(Landroid/content/Context;)I

    move-result v3

    move-object v0, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    :cond_29
    return-void
.end method

.method public static calculateTopPadding(Landroid/content/Context;)I
    .registers 8

    const/high16 v6, 0x3f80

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$dimen;->notification_top_pad_large_text:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->fontScale:F

    const v4, 0x3fa66666

    invoke-static {v0, v6, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->constrain(FFF)F

    move-result v4

    sub-float/2addr v4, v6

    const v5, 0x3e999998

    div-float v1, v4, v5

    sub-float v4, v6, v1

    int-to-float v5, v3

    mul-float/2addr v4, v5

    int-to-float v5, v2

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    return v4
.end method

.method public static constrain(FFF)F
    .registers 4

    cmpg-float v0, p0, p1

    if-gez v0, :cond_5

    :goto_4
    return p1

    :cond_5
    cmpl-float v0, p0, p2

    if-lez v0, :cond_b

    move p1, p2

    goto :goto_4

    :cond_b
    move p1, p0

    goto :goto_4
.end method

.method private static createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .registers 12

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez p3, :cond_37

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_f
    if-nez p3, :cond_39

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_15
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v6, v6, v4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    if-eqz p2, :cond_2e

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, p2, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2e
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v3

    :cond_37
    move v4, p3

    goto :goto_f

    :cond_39
    move v2, p3

    goto :goto_15
.end method

.method public static createIconWithBackground(Landroid/content/Context;IIII)Landroid/graphics/Bitmap;
    .registers 12

    sget v4, Landroid/support/v7/appcompat/R$drawable;->notification_icon_background:I

    if-nez p4, :cond_5

    const/4 p4, 0x0

    :cond_5
    invoke-static {p0, v4, p4, p2}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    sub-int v4, p2, p3

    div-int/lit8 v3, v4, 0x2

    add-int v4, p3, v3

    add-int v5, p3, v3

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private static generateActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompat$Action;)Landroid/widget/RemoteViews;
    .registers 8

    iget-object v2, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v2, :cond_49

    const/4 v1, 0x1

    :goto_5
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_4b

    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionTombstoneLayoutResource()I

    move-result v2

    :goto_11
    invoke-direct {v0, v3, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v2, Landroid/support/v7/appcompat/R$id;->action_image:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Action;->getIcon()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Landroid/support/v7/appcompat/R$color;->notification_action_color_filter:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {p0, v3, v4}, Landroid/support/v7/app/NotificationCompatImplBase;->createColoredBitmap(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    sget v2, Landroid/support/v7/appcompat/R$id;->action_text:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-nez v1, :cond_3b

    sget v2, Landroid/support/v7/appcompat/R$id;->action_container:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_3b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_48

    sget v2, Landroid/support/v7/appcompat/R$id;->action_container:I

    iget-object v3, p1, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_48
    return-object v0

    :cond_49
    const/4 v1, 0x0

    goto :goto_5

    :cond_4b
    invoke-static {}, Landroid/support/v7/app/NotificationCompatImplBase;->getActionLayoutResource()I

    move-result v2

    goto :goto_11
.end method

.method private static generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .registers 40
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v15, 0x0

    if-eqz p15, :cond_5b

    sget v16, Landroid/support/v7/appcompat/R$layout;->notification_template_media_custom:I

    :goto_6
    const/16 v17, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    invoke-static/range {v3 .. v17}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v22

    invoke-interface/range {p11 .. p11}, Ljava/util/List;->size()I

    move-result v21

    if-nez p12, :cond_5e

    const/4 v2, 0x0

    :goto_27
    sget v3, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v2, :cond_85

    const/16 v20, 0x0

    :goto_32
    move/from16 v0, v20

    if-ge v0, v2, :cond_85

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_67

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "setShowActionsInCompactView: action %d out of bounds (max %d)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v21, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5b
    sget v16, Landroid/support/v7/appcompat/R$layout;->notification_template_media:I

    goto :goto_6

    :cond_5e
    move-object/from16 v0, p12

    array-length v3, v0

    const/4 v4, 0x3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_27

    :cond_67
    aget v3, p12, v20

    move-object/from16 v0, p11

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v19

    sget v3, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_32

    :cond_85
    if-eqz p13, :cond_b5

    sget v3, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v0, v22

    move-object/from16 v1, p14

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v4, "setAlpha"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    :goto_b4
    return-object v22

    :cond_b5
    sget v3, Landroid/support/v7/appcompat/R$id;->end_padder:I

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v4, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_b4
.end method

.method private static generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v2

    if-nez v2, :cond_36

    const/4 v1, 0x1

    :goto_7
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$layout;->notification_media_action:I

    invoke-direct {v0, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    if-nez v1, :cond_26

    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_26
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-lt v2, v3, :cond_35

    sget v2, Landroid/support/v7/appcompat/R$id;->action0:I

    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    :cond_35
    return-object v0

    :cond_36
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public static generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .registers 38
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    invoke-interface/range {p12 .. p12}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v8, 0x0

    move/from16 v0, p15

    invoke-static {v0, v2}, Landroid/support/v7/app/NotificationCompatImplBase;->getBigMediaLayoutResource(ZI)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move/from16 v15, p11

    invoke-static/range {v3 .. v17}, Landroid/support/v7/app/NotificationCompatImplBase;->applyStandardTemplate(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIIIZ)Landroid/widget/RemoteViews;

    move-result-object v18

    sget v3, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    if-lez v2, :cond_57

    const/16 v20, 0x0

    :goto_37
    move/from16 v0, v20

    if-ge v0, v2, :cond_57

    move-object/from16 v0, p12

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/NotificationCompatBase$Action;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaActionButton(Landroid/content/Context;Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/widget/RemoteViews;

    move-result-object v19

    sget v3, Landroid/support/v7/appcompat/R$id;->media_actions:I

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    add-int/lit8 v20, v20, 0x1

    goto :goto_37

    :cond_57
    if-eqz p13, :cond_7e

    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const-string v4, "setAlpha"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroid/support/v7/appcompat/R$integer;->cancel_button_image_alpha:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    move-object/from16 v0, v18

    move-object/from16 v1, p14

    invoke-virtual {v0, v3, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :goto_7d
    return-object v18

    :cond_7e
    sget v3, Landroid/support/v7/appcompat/R$id;->cancel_action:I

    const/16 v4, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_7d
.end method

.method private static getActionLayoutResource()I
    .registers 1

    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action:I

    return v0
.end method

.method private static getActionTombstoneLayoutResource()I
    .registers 1

    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_action_tombstone:I

    return v0
.end method

.method private static getBigMediaLayoutResource(ZI)I
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x3

    if-gt p1, v0, :cond_b

    if-eqz p0, :cond_8

    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow_custom:I

    :goto_7
    return v0

    :cond_8
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_narrow:I

    goto :goto_7

    :cond_b
    if-eqz p0, :cond_10

    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media_custom:I

    goto :goto_7

    :cond_10
    sget v0, Landroid/support/v7/appcompat/R$layout;->notification_template_big_media:I

    goto :goto_7
.end method

.method private static hideNormalContent(Landroid/widget/RemoteViews;)V
    .registers 3

    const/16 v1, 0x8

    sget v0, Landroid/support/v7/appcompat/R$id;->title:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroid/support/v7/appcompat/R$id;->text2:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v0, Landroid/support/v7/appcompat/R$id;->text:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-void
.end method

.method public static overrideContentViewMedia(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;
    .registers 20
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJI",
            "Ljava/util/List",
            "<TT;>;[IZ",
            "Landroid/app/PendingIntent;",
            "Z)",
            "Landroid/widget/RemoteViews;"
        }
    .end annotation

    invoke-static/range {p1 .. p16}, Landroid/support/v7/app/NotificationCompatImplBase;->generateContentViewMedia(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJILjava/util/List;[IZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    if-eqz p14, :cond_15

    invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    :cond_15
    return-object v0
.end method

.method public static overrideMediaBigContentView(Landroid/app/Notification;Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)V
    .registers 18
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/support/v4/app/NotificationCompatBase$Action;",
            ">(",
            "Landroid/app/Notification;",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/CharSequence;",
            "ZJII",
            "Ljava/util/List",
            "<TT;>;Z",
            "Landroid/app/PendingIntent;",
            "Z)V"
        }
    .end annotation

    invoke-static/range {p1 .. p16}, Landroid/support/v7/app/NotificationCompatImplBase;->generateMediaBigView(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/graphics/Bitmap;Ljava/lang/CharSequence;ZJIILjava/util/List;ZLandroid/app/PendingIntent;Z)Landroid/widget/RemoteViews;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz p14, :cond_e

    iget v0, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/app/Notification;->flags:I

    :cond_e
    return-void
.end method
