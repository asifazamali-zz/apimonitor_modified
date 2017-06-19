.class  Landroid/support/v4/media/MediaBrowserCompat$Subscription;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"
.field private final mCallbacks:Ljava/util/List;
.field private final mOptionsList:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;
return-void
.end method
.method public getCallback(Landroid/os/Bundle;)Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
.registers 4
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_23
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/Bundle;
invoke-static {v1, p1}, Landroid/support/v4/media/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
move-result v1
if-eqz v1, :cond_20
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;
:goto_1f
return-object v1
:cond_20
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_23
const/4 v1, 0x0
goto :goto_1f
.end method
.method public getCallbacks()Ljava/util/List;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;
return-object v0
.end method
.method public getOptionsList()Ljava/util/List;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;
return-object v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
return v0
.end method
.method public putCallback(Landroid/os/Bundle;Landroid/support/v4/media/MediaBrowserCompat$SubscriptionCallback;)V
.registers 5
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v0, v1, :cond_20
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/Bundle;
invoke-static {v1, p1}, Landroid/support/v4/media/MediaBrowserCompatUtils;->areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
move-result v1
if-eqz v1, :cond_1d
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;
invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_1c
return-void
:cond_1d
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_20
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mCallbacks:Ljava/util/List;
invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v4/media/MediaBrowserCompat$Subscription;->mOptionsList:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_1c
.end method