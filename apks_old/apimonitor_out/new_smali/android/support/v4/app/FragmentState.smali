.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "Fragment.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final mArguments:Landroid/os/Bundle;
.field final mClassName:Ljava/lang/String;
.field final mContainerId:I
.field final mDetached:Z
.field final mFragmentId:I
.field final mFromLayout:Z
.field final mHidden:Z
.field final mIndex:I
.field  mInstance:Landroid/support/v4/app/Fragment;
.field final mRetainInstance:Z
.field  mSavedFragmentState:Landroid/os/Bundle;
.field final mTag:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/app/FragmentState$1;
invoke-direct {v0}, Landroid/support/v4/app/FragmentState$1;-><init>()V
sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/FragmentState;->mIndex:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_53
move v0, v1
:goto_18
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_55
move v0, v1
:goto_33
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_57
move v0, v1
:goto_3c
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_59
:goto_4a
iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->mHidden:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
return-void
:cond_53
move v0, v2
goto :goto_18
:cond_55
move v0, v2
goto :goto_33
:cond_57
move v0, v2
goto :goto_3c
:cond_59
move v1, v2
goto :goto_4a
.end method
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->mIndex:I
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z
iget v0, p1, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I
iget v0, p1, Landroid/support/v4/app/Fragment;->mContainerId:I
iput v0, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
iput-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mHidden:Z
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerNonConfig;)Landroid/support/v4/app/Fragment;
.registers 8
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
if-nez v1, :cond_8c
invoke-virtual {p1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;
if-eqz v1, :cond_15
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
:cond_15
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;
iget-object v2, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;
invoke-static {v0, v1, v2}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
move-result-object v1
iput-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
if-eqz v1, :cond_32
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget-object v2, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
:cond_32
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget v2, p0, Landroid/support/v4/app/FragmentState;->mIndex:I
invoke-virtual {v1, v2, p2}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget-boolean v2, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
const/4 v2, 0x1
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRestored:Z
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget v2, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I
iput v2, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget v2, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I
iput v2, v1, Landroid/support/v4/app/Fragment;->mContainerId:I
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget-object v2, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;
iput-object v2, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget-boolean v2, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget-boolean v2, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mDetached:Z
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget-boolean v2, p0, Landroid/support/v4/app/FragmentState;->mHidden:Z
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mHidden:Z
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iget-object v2, p1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
iput-object v2, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_8c
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Instantiated fragment "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_8c
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
iput-object p3, v1, Landroid/support/v4/app/Fragment;->mChildNonConfig:Landroid/support/v4/app/FragmentManagerNonConfig;
iget-object v1, p0, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
return-object v1
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mClassName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Landroid/support/v4/app/FragmentState;->mIndex:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mFromLayout:Z
if-eqz v0, :cond_45
move v0, v1
:goto_11
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Landroid/support/v4/app/FragmentState;->mFragmentId:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Landroid/support/v4/app/FragmentState;->mContainerId:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mTag:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mRetainInstance:Z
if-eqz v0, :cond_47
move v0, v1
:goto_28
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mDetached:Z
if-eqz v0, :cond_49
move v0, v1
:goto_30
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mArguments:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->mHidden:Z
if-eqz v0, :cond_4b
:goto_3c
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V
return-void
:cond_45
move v0, v2
goto :goto_11
:cond_47
move v0, v2
goto :goto_28
:cond_49
move v0, v2
goto :goto_30
:cond_4b
move v1, v2
goto :goto_3c
.end method