.class  Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;
.super Landroid/support/v4/os/ResultReceiver;
.source "MediaBrowserCompat.java"
.field private final mCallback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
.field private final mExtras:Landroid/os/Bundle;
.field private final mQuery:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;Landroid/os/Handler;)V
.registers 5
invoke-direct {p0, p4}, Landroid/support/v4/os/ResultReceiver;-><init>(Landroid/os/Handler;)V
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;
iput-object p2, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;
iput-object p3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
return-void
.end method
.method protected onReceiveResult(ILandroid/os/Bundle;)V
.registers 9
if-nez p1, :cond_c
if-eqz p2, :cond_c
const-string v3, "search_results"
invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_16
:cond_c
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;
iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;
invoke-virtual {v3, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V
:goto_15
return-void
:cond_16
const-string v3, "search_results"
invoke-virtual {p2, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
move-result-object v1
const/4 v2, 0x0
if-eqz v1, :cond_32
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
array-length v4, v1
const/4 v3, 0x0
:goto_26
if-ge v3, v4, :cond_32
aget-object v0, v1, v3
check-cast v0, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v3, v3, 0x1
goto :goto_26
:cond_32
iget-object v3, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mCallback:Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;
iget-object v4, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mQuery:Ljava/lang/String;
iget-object v5, p0, Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;->mExtras:Landroid/os/Bundle;
invoke-virtual {v3, v4, v5, v2}, Landroid/support/v4/media/MediaBrowserCompat$SearchCallback;->onSearchResult(Ljava/lang/String;Landroid/os/Bundle;Ljava/util/List;)V
goto :goto_15
.end method