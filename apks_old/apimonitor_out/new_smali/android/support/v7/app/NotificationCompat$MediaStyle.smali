.class public Landroid/support/v7/app/NotificationCompat$MediaStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"
.field  mActionsToShowInCompact:[I
.field  mCancelButtonIntent:Landroid/app/PendingIntent;
.field  mShowCancelButton:Z
.field  mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/NotificationCompat$Builder;)V
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I
invoke-virtual {p0, p1}, Landroid/support/v7/app/NotificationCompat$MediaStyle;->setBuilder(Landroid/support/v4/app/NotificationCompat$Builder;)V
return-void
.end method
.method public setCancelButtonIntent(Landroid/app/PendingIntent;)Landroid/support/v7/app/NotificationCompat$MediaStyle;
.registers 2
iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mCancelButtonIntent:Landroid/app/PendingIntent;
return-object p0
.end method
.method public setMediaSession(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Landroid/support/v7/app/NotificationCompat$MediaStyle;
.registers 2
iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-object p0
.end method
.method public varargs setShowActionsInCompactView([I)Landroid/support/v7/app/NotificationCompat$MediaStyle;
.registers 2
iput-object p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mActionsToShowInCompact:[I
return-object p0
.end method
.method public setShowCancelButton(Z)Landroid/support/v7/app/NotificationCompat$MediaStyle;
.registers 2
iput-boolean p1, p0, Landroid/support/v7/app/NotificationCompat$MediaStyle;->mShowCancelButton:Z
return-object p0
.end method