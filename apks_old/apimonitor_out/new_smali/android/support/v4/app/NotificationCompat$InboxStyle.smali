.class public Landroid/support/v4/app/NotificationCompat$InboxStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"
.field  mTexts:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;
invoke-virtual {p0, p1}, Landroid/support/v4/app/NotificationCompat$InboxStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
return-void
.end method
.method public addLine(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mTexts:Ljava/util/ArrayList;
invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object p0
.end method
.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mBigContentTitle:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$InboxStyle;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mSummaryText:Ljava/lang/CharSequence;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$InboxStyle;->mSummaryTextSet:Z
return-object p0
.end method