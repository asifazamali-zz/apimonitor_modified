.class  Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManager23;
.super Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;
.source "AppOpsManagerCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/AppOpsManagerCompat$AppOpsManagerImpl;-><init>()V
return-void
.end method
.method public noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
.registers 6
invoke-static {p1, p2, p3, p4}, Landroid/support/v4/app/AppOpsManagerCompat23;->noteOp(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I
move-result v0
return v0
.end method
.method public noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
.registers 5
invoke-static {p1, p2, p3}, Landroid/support/v4/app/AppOpsManagerCompat23;->noteProxyOp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public permissionToOp(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p1}, Landroid/support/v4/app/AppOpsManagerCompat23;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method