.class  Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  featureId:I
.field  isOpen:Z
.field  menuState:Landroid/os/Bundle;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;
invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState$1;-><init>()V
invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
move-result-object v0
sput-object v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static readFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
.registers 5
const/4 v1, 0x1
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
invoke-direct {v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;-><init>()V
invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I
invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I
move-result v2
if-ne v2, v1, :cond_1f
:goto_12
iput-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z
iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z
if-eqz v1, :cond_1e
invoke-virtual {p0, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
move-result-object v1
iput-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;
:cond_1e
return-object v0
:cond_1f
const/4 v1, 0x0
goto :goto_12
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->featureId:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z
if-eqz v0, :cond_17
const/4 v0, 0x1
:goto_a
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->isOpen:Z
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
:cond_16
return-void
:cond_17
const/4 v0, 0x0
goto :goto_a
.end method