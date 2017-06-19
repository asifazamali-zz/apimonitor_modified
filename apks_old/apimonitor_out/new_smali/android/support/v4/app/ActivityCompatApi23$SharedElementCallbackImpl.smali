.class  Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;
.super Landroid/app/SharedElementCallback;
.source "ActivityCompatApi23.java"
.field private mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
.method public constructor <init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;)V
.registers 2
invoke-direct {p0}, Landroid/app/SharedElementCallback;-><init>()V
iput-object p1, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
return-void
.end method
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
move-result-object v0
return-object v0
.end method
.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
return-void
.end method
.method public onRejectSharedElements(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
invoke-virtual {v0, p1}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onRejectSharedElements(Ljava/util/List;)V
return-void
.end method
.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
return-void
.end method
.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
return-void
.end method
.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;->mCallback:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;
new-instance v1, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;
invoke-direct {v1, p0, p3}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;-><init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallback23;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;)V
return-void
.end method