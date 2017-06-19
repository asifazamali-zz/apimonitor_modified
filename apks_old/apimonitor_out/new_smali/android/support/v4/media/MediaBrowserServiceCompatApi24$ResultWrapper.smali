.class  Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompatApi24.java"
.field  mResultObj:Landroid/service/media/MediaBrowserService$Result;
.method constructor <init>(Landroid/service/media/MediaBrowserService$Result;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;
return-void
.end method
.method public detach()V
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;
invoke-virtual {v0}, Landroid/service/media/MediaBrowserService$Result;->detach()V
return-void
.end method
.method  parcelListToItemList(Ljava/util/List;)Ljava/util/List;
.registers 6
if-nez p1, :cond_4
const/4 v0, 0x0
:cond_3
return-object v0
:cond_4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_3
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/Parcel;
const/4 v3, 0x0
invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V
sget-object v3, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
goto :goto_d
.end method
.method public sendResult(Ljava/util/List;I)V
.registers 6
:try_start_0
invoke-static {}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24;->access$000()Ljava/lang/reflect/Field;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;
invoke-virtual {v1, v2, p2}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
:try_end_9
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_9} :catch_13
:goto_9
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->mResultObj:Landroid/service/media/MediaBrowserService$Result;
invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaBrowserServiceCompatApi24$ResultWrapper;->parcelListToItemList(Ljava/util/List;)Ljava/util/List;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/service/media/MediaBrowserService$Result;->sendResult(Ljava/lang/Object;)V
return-void
:catch_13
move-exception v0
const-string v1, "MBSCompatApi24"
invoke-static {v1, v0}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_9
.end method