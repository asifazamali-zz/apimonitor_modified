.class  Landroid/support/v4/net/ConnectivityManagerCompat$HoneycombMR2ConnectivityManagerCompatImpl;
.super Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;
.source "ConnectivityManagerCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/net/ConnectivityManagerCompat$BaseConnectivityManagerCompatImpl;-><init>()V
return-void
.end method
.method public isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/net/ConnectivityManagerCompatHoneycombMR2;->isActiveNetworkMetered(Landroid/net/ConnectivityManager;)Z
move-result v0
return v0
.end method