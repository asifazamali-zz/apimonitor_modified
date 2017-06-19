.class final Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
.registers 4
invoke-static {p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
.registers 3
new-array v0, p1, [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;->newArray(I)[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
move-result-object v0
return-object v0
.end method