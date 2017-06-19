.class  Landroid/support/v4/net/TrafficStatsCompat$Api24TrafficStatsCompatImpl;
.super Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.source "TrafficStatsCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;-><init>()V
return-void
.end method
.method public tagDatagramSocket(Ljava/net/DatagramSocket;)V
.registers 2
invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatApi24;->tagDatagramSocket(Ljava/net/DatagramSocket;)V
return-void
.end method
.method public untagDatagramSocket(Ljava/net/DatagramSocket;)V
.registers 2
invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatApi24;->untagDatagramSocket(Ljava/net/DatagramSocket;)V
return-void
.end method