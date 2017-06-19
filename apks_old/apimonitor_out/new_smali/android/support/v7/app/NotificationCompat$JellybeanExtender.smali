.class  Landroid/support/v7/app/NotificationCompat$JellybeanExtender;
.super Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.source "NotificationCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$BuilderExtender;-><init>()V
return-void
.end method
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
.registers 5
#calls: Landroid/support/v7/app/NotificationCompat;->addStyleGetContentViewJellybean(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
invoke-static {p2, p1}, Landroid/support/v7/app/NotificationCompat;->access$400(Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/widget/RemoteViews;
move-result-object v0
invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;
move-result-object v1
if-eqz v0, :cond_c
iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
:cond_c
#calls: Landroid/support/v7/app/NotificationCompat;->addBigStyleToBuilderJellybean(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
invoke-static {v1, p1}, Landroid/support/v7/app/NotificationCompat;->access$500(Landroid/app/Notification;Landroid/support/v4/app/NotificationCompat$Builder;)V
return-object v1
.end method