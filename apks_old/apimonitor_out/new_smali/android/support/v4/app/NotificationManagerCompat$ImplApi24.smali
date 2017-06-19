.class  Landroid/support/v4/app/NotificationManagerCompat$ImplApi24;
.super Landroid/support/v4/app/NotificationManagerCompat$ImplKitKat;
.source "NotificationManagerCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$ImplKitKat;-><init>()V
return-void
.end method
.method public areNotificationsEnabled(Landroid/content/Context;Landroid/app/NotificationManager;)Z
.registers 4
invoke-static {p2}, Landroid/support/v4/app/NotificationManagerCompatApi24;->areNotificationsEnabled(Landroid/app/NotificationManager;)Z
move-result v0
return v0
.end method
.method public getImportance(Landroid/app/NotificationManager;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/app/NotificationManagerCompatApi24;->getImportance(Landroid/app/NotificationManager;)I
move-result v0
return v0
.end method