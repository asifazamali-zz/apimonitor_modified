.class  Landroid/support/v7/app/NotificationCompatImpl21;
.super Ljava/lang/Object;
.source "NotificationCompatImpl21.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static addMediaStyle(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;[ILjava/lang/Object;)V
.registers 5
new-instance v0, Landroid/app/Notification$MediaStyle;
invoke-interface {p0}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->getBuilder()Landroid/app/Notification$Builder;
move-result-object v1
invoke-direct {v0, v1}, Landroid/app/Notification$MediaStyle;-><init>(Landroid/app/Notification$Builder;)V
if-eqz p1, :cond_e
invoke-virtual {v0, p1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;
:cond_e
if-eqz p2, :cond_15
check-cast p2, Landroid/media/session/MediaSession$Token;
invoke-virtual {v0, p2}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;
:cond_15
return-void
.end method