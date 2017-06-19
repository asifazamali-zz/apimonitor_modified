.class public Landroid/support/v4/app/NotificationCompat$BuilderExtender;
.super Ljava/lang/Object;
.source "NotificationCompat.java"
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public build(Landroid/support/v4/app/NotificationCompat$Builder;Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;)Landroid/app/Notification;
.registers 5
invoke-interface {p2}, Landroid/support/v4/app/NotificationBuilderWithBuilderAccessor;->build()Landroid/app/Notification;
move-result-object v0
iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;
if-eqz v1, :cond_c
iget-object v1, p1, Landroid/support/v4/app/NotificationCompat$Builder;->mContentView:Landroid/widget/RemoteViews;
iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
:cond_c
return-object v0
.end method