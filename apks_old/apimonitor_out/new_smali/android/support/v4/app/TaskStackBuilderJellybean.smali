.class  Landroid/support/v4/app/TaskStackBuilderJellybean;
.super Ljava/lang/Object;
.source "TaskStackBuilderJellybean.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getActivitiesPendingIntent(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
.registers 6
invoke-static {p0, p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method