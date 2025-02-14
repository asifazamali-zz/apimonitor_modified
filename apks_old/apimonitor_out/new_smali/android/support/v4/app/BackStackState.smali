.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field final mAllowOptimization:Z
.field final mBreadCrumbShortTitleRes:I
.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
.field final mBreadCrumbTitleRes:I
.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;
.field final mIndex:I
.field final mName:Ljava/lang/String;
.field final mOps:[I
.field final mSharedElementSourceNames:Ljava/util/ArrayList;
.field final mSharedElementTargetNames:Ljava/util/ArrayList;
.field final mTransition:I
.field final mTransitionStyle:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/app/BackStackState$1;
invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V
sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I
sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I
sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_57
const/4 v0, 0x1
:goto_54
iput-boolean v0, p0, Landroid/support/v4/app/BackStackState;->mAllowOptimization:Z
return-void
:cond_57
const/4 v0, 0x0
goto :goto_54
.end method
.method public constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v5, p1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v0
mul-int/lit8 v5, v0, 0x6
new-array v5, v5, [I
iput-object v5, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
iget-boolean v5, p1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-nez v5, :cond_1b
new-instance v5, Ljava/lang/IllegalStateException;
const-string v6, "Not on back stack"
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v5
:cond_1b
const/4 v3, 0x0
const/4 v2, 0x0
move v4, v3
:goto_1e
if-ge v2, v0, :cond_63
iget-object v5, p1, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;
iget-object v5, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v3, v4, 0x1
iget v6, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
aput v6, v5, v4
iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v4, v3, 0x1
iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
if-eqz v5, :cond_61
iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I
:goto_3c
aput v5, v6, v3
iget-object v5, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v3, v4, 0x1
iget v6, v1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
aput v6, v5, v4
iget-object v5, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v4, v3, 0x1
iget v6, v1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
aput v6, v5, v3
iget-object v5, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v3, v4, 0x1
iget v6, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
aput v6, v5, v4
iget-object v5, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v4, v3, 0x1
iget v6, v1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
aput v6, v5, v3
add-int/lit8 v2, v2, 0x1
goto :goto_1e
:cond_61
const/4 v5, -0x1
goto :goto_3c
:cond_63
iget v5, p1, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iput v5, p0, Landroid/support/v4/app/BackStackState;->mTransition:I
iget v5, p1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
iput v5, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I
iget-object v5, p1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
iput-object v5, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;
iget v5, p1, Landroid/support/v4/app/BackStackRecord;->mIndex:I
iput v5, p0, Landroid/support/v4/app/BackStackState;->mIndex:I
iget v5, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
iput v5, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I
iget-object v5, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
iput-object v5, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
iget v5, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
iput v5, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I
iget-object v5, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
iput-object v5, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
iget-object v5, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
iput-object v5, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;
iget-object v5, p1, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
iput-object v5, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;
iget-boolean v5, p1, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
iput-boolean v5, p0, Landroid/support/v4/app/BackStackState;->mAllowOptimization:Z
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
.registers 13
const/4 v10, 0x1
new-instance v0, Landroid/support/v4/app/BackStackRecord;
invoke-direct {v0, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V
const/4 v5, 0x0
const/4 v3, 0x0
:goto_8
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
array-length v7, v7
if-ge v5, v7, :cond_9b
new-instance v4, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v4}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v6, v5, 0x1
aget v7, v7, v5
iput v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v7, :cond_4e
const-string v7, "FragmentManager"
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Instantiate "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " op #"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
const-string v9, " base fragment #"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
aget v9, v9, v6
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_4e
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v5, v6, 0x1
aget v2, v7, v6
if-ltz v2, :cond_97
iget-object v7, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
iput-object v1, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
:goto_60
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v6, v5, 0x1
aget v7, v7, v5
iput v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v5, v6, 0x1
aget v7, v7, v6
iput v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v6, v5, 0x1
aget v7, v7, v5
iput v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
add-int/lit8 v5, v6, 0x1
aget v7, v7, v6
iput v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
iget v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iput v7, v0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
iget v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iput v7, v0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
iget v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iput v7, v0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
iget v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
iput v7, v0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
invoke-virtual {v0, v4}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
add-int/lit8 v3, v3, 0x1
goto/16 :goto_8
:cond_97
const/4 v7, 0x0
iput-object v7, v4, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
goto :goto_60
:cond_9b
iget v7, p0, Landroid/support/v4/app/BackStackState;->mTransition:I
iput v7, v0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iget v7, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I
iput v7, v0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;
iput-object v7, v0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
iget v7, p0, Landroid/support/v4/app/BackStackState;->mIndex:I
iput v7, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
iput-boolean v10, v0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
iget v7, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I
iput v7, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
iput-object v7, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
iget v7, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I
iput v7, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
iput-object v7, v0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;
iput-object v7, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;
iput-object v7, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
iget-boolean v7, p0, Landroid/support/v4/app/BackStackState;->mAllowOptimization:Z
iput-boolean v7, v0, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
invoke-virtual {v0, v10}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mOps:[I
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V
iget v1, p0, Landroid/support/v4/app/BackStackState;->mTransition:I
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget v1, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v1, p0, Landroid/support/v4/app/BackStackState;->mIndex:I
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget v1, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
iget v1, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
iget-object v1, p0, Landroid/support/v4/app/BackStackState;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
iget-boolean v1, p0, Landroid/support/v4/app/BackStackState;->mAllowOptimization:Z
if-eqz v1, :cond_3d
const/4 v0, 0x1
:cond_3d
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method