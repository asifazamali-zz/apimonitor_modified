.class  Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"
.field  callbacks:Landroid/support/v4/media/MediaBrowserServiceCompat$ServiceCallbacks;
.field  pkg:Ljava/lang/String;
.field  root:Landroid/support/v4/media/MediaBrowserServiceCompat$BrowserRoot;
.field  rootHints:Landroid/os/Bundle;
.field  subscriptions:Ljava/util/HashMap;
.field final synthetic this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
.method constructor <init>(Landroid/support/v4/media/MediaBrowserServiceCompat;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->this$0:Landroid/support/v4/media/MediaBrowserServiceCompat;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompat$ConnectionRecord;->subscriptions:Ljava/util/HashMap;
return-void
.end method