.class  Landroid/support/v4/app/ServiceCompat$BaseServiceCompatImpl;
.super Ljava/lang/Object;
.source "ServiceCompat.java"
.implements Landroid/support/v4/app/ServiceCompat$ServiceCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public stopForeground(Landroid/app/Service;I)V
.registers 4
and-int/lit8 v0, p2, 0x1
if-eqz v0, :cond_9
const/4 v0, 0x1
:goto_5
invoke-virtual {p1, v0}, Landroid/app/Service;->stopForeground(Z)V
return-void
:cond_9
const/4 v0, 0x0
goto :goto_5
.end method