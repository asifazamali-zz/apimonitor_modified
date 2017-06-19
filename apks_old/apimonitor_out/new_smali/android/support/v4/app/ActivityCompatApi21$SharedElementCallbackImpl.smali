.class  Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;
.super Landroid/app/SharedElementCallback;
.source "ActivityCompatApi21.java"
.field private mCallback:Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
.method public constructor <init>(Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)V
.registers 2
invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V
iput-object p1, p0, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
return-void
.end method
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
move-result-object v0
return-object v0
.end method
.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
return-void
.end method
.method public onRejectSharedElements(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
invoke-virtual {v0, p1}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;->onRejectSharedElements(Ljava/util/List;)V
return-void
.end method
.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
return-void
.end method
.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
return-void
.end method