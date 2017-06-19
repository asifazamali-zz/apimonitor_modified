.class  Landroid/support/v4/net/ConnectivityManagerCompat$Api24ConnectivityManagerCompatImpl;
.super Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;
.source "ConnectivityManagerCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;-><init>()V
return-void
.end method
.method public getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/net/ConnectivityManagerCompatApi24;->getRestrictBackgroundStatus(Landroid/net/ConnectivityManager;)I
move-result v0
return v0
.end method