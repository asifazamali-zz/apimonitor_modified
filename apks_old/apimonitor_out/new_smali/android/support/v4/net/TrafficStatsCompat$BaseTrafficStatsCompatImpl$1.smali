.class  Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;
.super Ljava/lang/ThreadLocal;
.source "TrafficStatsCompat.java"
.field final synthetic this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.method constructor <init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
.registers 2
new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
invoke-direct {v0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;-><init>()V
return-object v0
.end method
.method protected bridge synthetic initialValue()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
move-result-object v0
return-object v0
.end method