.class public Landroid/support/v7/widget/Toolbar$SavedState;
.super Landroid/support/v4/view/AbsSavedState;
.source "Toolbar.java"
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field  expandedMenuItemId:I
.field  isOverflowOpen:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState$1;
invoke-direct {v0}, Landroid/support/v7/widget/Toolbar$SavedState$1;-><init>()V
invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
move-result-object v0
sput-object v0, Landroid/support/v7/widget/Toolbar$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_13
const/4 v0, 0x1
:goto_10
iput-boolean v0, p0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z
return-void
:cond_13
const/4 v0, 0x0
goto :goto_10
.end method
.method public constructor <init>(Landroid/os/Parcelable;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V
iget v0, p0, Landroid/support/v7/widget/Toolbar$SavedState;->expandedMenuItemId:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Landroid/support/v7/widget/Toolbar$SavedState;->isOverflowOpen:Z
if-eqz v0, :cond_11
const/4 v0, 0x1
:goto_d
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
:cond_11
const/4 v0, 0x0
goto :goto_d
.end method