.class  Landroid/support/v4/media/MediaBrowserServiceCompat$3;
.super Landroid/support/v4/media/MediaBrowserServiceCompat$Result;
.source "MediaBrowserServiceCompat.java"
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
.field final synthetic val$receiver:Landroid/support/v4/os/ResultReceiver;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;Ljava/lang/Object;Landroid/support/v4/os/ResultReceiver;)V
.registers 4
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$receiver:Landroid/support/v4/os/ResultReceiver;
invoke-direct {p0, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$Result;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method bridge synthetic onResultSent(Ljava/lang/Object;I)V
.registers 3
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1, p2}, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->onResultSent(Ljava/util/List;I)V
return-void
.end method
.method  onResultSent(Ljava/util/List;I)V
.registers 7
const/4 v3, 0x0
and-int/lit8 v1, p2, 0x4
if-nez v1, :cond_7
if-nez p1, :cond_f
:cond_7
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$receiver:Landroid/support/v4/os/ResultReceiver;
const/4 v2, -0x1
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
:goto_e
return-void
:cond_f
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v2, "search_results"
new-array v1, v3, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v1
check-cast v1, [Landroid/os/Parcelable;
invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$3;->val$receiver:Landroid/support/v4/os/ResultReceiver;
invoke-virtual {v1, v3, v0}, Landroid/support/v4/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
goto :goto_e
.end method