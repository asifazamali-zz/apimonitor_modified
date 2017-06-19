.class  Landroid/support/v4/net/ConnectivityManagerCompat$JellyBeanConnectivityManagerCompatImpl;
.super Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;
.source "ConnectivityManagerCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;-><init>()V
return-void
.end method
.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/net/ConnectivityManagerCompatJellyBean;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
move-result v0
return v0
.end method