.class  Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;
.super Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;
.source "ActivityCompat.java"
.field private mCallback:Landroid/support/v4/app/SharedElementCallback;
.method public constructor <init>(Landroid/support/v4/app/SharedElementCallback;)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;-><init>()V
iput-object p1, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;
return-void
.end method
.method public onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onCaptureSharedElementSnapshot(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;)Landroid/os/Parcelable;
move-result-object v0
return-object v0
.end method
.method public onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/SharedElementCallback;->onCreateSnapshotView(Landroid/content/Context;Landroid/os/Parcelable;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
return-void
.end method
.method public onRejectSharedElements(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;
invoke-virtual {v0, p1}, Landroid/support/v4/app/SharedElementCallback;->onRejectSharedElements(Ljava/util/List;)V
return-void
.end method
.method public onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
return-void
.end method
.method public onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
return-void
.end method