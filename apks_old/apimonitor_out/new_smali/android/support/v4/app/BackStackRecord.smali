.class final Landroid/support/v4/app/BackStackRecord;
.super Landroid/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"
.implements Landroid/support/v4/app/FragmentManager$BackStackEntry;
.implements Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
.field static final OP_ADD:I = 0x1
.field static final OP_ATTACH:I = 0x7
.field static final OP_DETACH:I = 0x6
.field static final OP_HIDE:I = 0x4
.field static final OP_NULL:I = 0x0
.field static final OP_REMOVE:I = 0x3
.field static final OP_REPLACE:I = 0x2
.field static final OP_SHOW:I = 0x5
.field static final SUPPORTS_TRANSITIONS:Z = false
.field static final TAG:Ljava/lang/String; = "FragmentManager"
.field  mAddToBackStack:Z
.field  mAllowAddToBackStack:Z
.field  mAllowOptimization:Z
.field  mBreadCrumbShortTitleRes:I
.field  mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
.field  mBreadCrumbTitleRes:I
.field  mBreadCrumbTitleText:Ljava/lang/CharSequence;
.field  mCommitted:Z
.field  mEnterAnim:I
.field  mExitAnim:I
.field  mIndex:I
.field final mManager:Landroid/support/v4/app/FragmentManagerImpl;
.field  mName:Ljava/lang/String;
.field  mOps:Ljava/util/ArrayList;
.field  mPopEnterAnim:I
.field  mPopExitAnim:I
.field  mSharedElementSourceNames:Ljava/util/ArrayList;
.field  mSharedElementTargetNames:Ljava/util/ArrayList;
.field  mTransition:I
.field  mTransitionStyle:I
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_a
const/4 v0, 0x1
:goto_7
sput-boolean v0, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z
return-void
:cond_a
const/4 v0, 0x0
goto :goto_7
.end method
.method public constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;)V
.registers 3
invoke-direct {p0}, Landroid/support/v4/app/FragmentTransaction;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
return-void
.end method
.method private doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
.registers 11
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v1
invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z
move-result v3
if-nez v3, :cond_20
invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z
move-result v3
if-eqz v3, :cond_20
invoke-virtual {v0}, Ljava/lang/Class;->isMemberClass()Z
move-result v3
if-eqz v3, :cond_49
invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v3
if-nez v3, :cond_49
:cond_20
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Fragment "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " must be a public static class to be  properly recreated from"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " instance state."
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_49
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iput-object v3, p2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
if-eqz p3, :cond_8c
iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
if-eqz v3, :cond_8a
iget-object v3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_8a
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Can\'t change tag of fragment "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ": was "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " now "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_8a
iput-object p3, p2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
:cond_8c
if-eqz p1, :cond_f5
const/4 v3, -0x1
if-ne p1, v3, :cond_ba
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Can\'t add fragment "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " with tag "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " to container view with no id"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_ba
iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-eqz v3, :cond_f1
iget v3, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-eq v3, p1, :cond_f1
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Can\'t change container ID of fragment "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ": was "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " now "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_f1
iput p1, p2, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput p1, p2, Landroid/support/v4/app/Fragment;->mContainerId:I
:cond_f5
new-instance v2, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v2}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
iput p4, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p2, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v2}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-void
.end method
.method private static isFragmentPostponed(Landroid/support/v4/app/BackStackRecord$Op;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v1, :cond_1a
iget-object v1, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v1, :cond_1a
iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mDetached:Z
if-nez v1, :cond_1a
iget-boolean v1, v0, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v1, :cond_1a
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isPostponed()Z
move-result v1
if-eqz v1, :cond_1a
const/4 v1, 0x1
:goto_19
return v1
:cond_1a
const/4 v1, 0x0
goto :goto_19
.end method
.method public add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method  addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
iput v0, p1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
return-void
.end method
.method public addSharedElement(Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 7
sget-boolean v1, Landroid/support/v4/app/BackStackRecord;->SUPPORTS_TRANSITIONS:Z
if-eqz v1, :cond_2e
invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_12
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Unique transitionNames are required for all sharedElements"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_12
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
if-nez v1, :cond_2f
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
:cond_24
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2e
return-object p0
:cond_2f
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_56
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "A shared element with the target name \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' has already been added to the transaction."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_56
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_24
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "A shared element with the source name \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " has already been added to the transaction."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This FragmentTransaction is not allowed to be added to the back stack."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
return-object p0
.end method
.method public attach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x7
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method  bumpBackStackNesting(I)V
.registers 8
iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-nez v3, :cond_5
:cond_4
return-void
:cond_5
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_2b
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Bump nesting in "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " by "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2b
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v2, 0x0
:goto_32
if-ge v2, v0, :cond_4
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
if-eqz v3, :cond_73
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
add-int/2addr v4, p1
iput v4, v3, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_73
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Bump nesting of "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " to "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v5, v5, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_73
add-int/lit8 v2, v2, 0x1
goto :goto_32
.end method
.method public commit()I
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I
move-result v0
return v0
.end method
.method public commitAllowingStateLoss()I
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->commitInternal(Z)I
move-result v0
return v0
.end method
.method  commitInternal(Z)I
.registers 8
const/4 v5, 0x0
iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z
if-eqz v2, :cond_d
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "commit already called"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:cond_d
sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v2, :cond_3d
const-string v2, "FragmentManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Commit: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Landroid/support/v4/util/LogWriter;
const-string v2, "FragmentManager"
invoke-direct {v0, v2}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v2, "  "
invoke-virtual {p0, v2, v5, v1, v5}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
:cond_3d
const/4 v2, 0x1
iput-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z
iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v2, :cond_54
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2, p0}, Landroid/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
move-result v2
iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
:goto_4c
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
iget v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
return v2
:cond_54
const/4 v2, -0x1
iput v2, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
goto :goto_4c
.end method
.method public commitNow()V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v1, 0x0
invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->execSingleAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
return-void
.end method
.method public commitNowAllowingStateLoss()V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/app/BackStackRecord;->disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v1, 0x1
invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->execSingleAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
return-void
.end method
.method public detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x6
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public disallowAddToBackStack()Landroid/support/v4/app/FragmentTransaction;
.registers 3
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This transaction is already being added to the back stack"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
return-object p0
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, p1, p3, v0}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
return-void
.end method
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
.registers 11
if-eqz p3, :cond_da
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mName="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mIndex="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v5, " mCommitted="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v5, p0, Landroid/support/v4/app/BackStackRecord;->mCommitted:Z
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
if-eqz v5, :cond_46
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mTransition=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mTransitionStyle=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_46
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
if-nez v5, :cond_4e
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
if-eqz v5, :cond_6d
:cond_4e
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mEnterAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mExitAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_6d
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
if-nez v5, :cond_75
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
if-eqz v5, :cond_94
:cond_75
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mPopEnterAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mPopExitAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_94
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
if-nez v5, :cond_9c
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
if-eqz v5, :cond_b7
:cond_9c
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mBreadCrumbTitleRes=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mBreadCrumbTitleText="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
:cond_b7
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
if-nez v5, :cond_bf
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
if-eqz v5, :cond_da
:cond_bf
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "mBreadCrumbShortTitleRes=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " mBreadCrumbShortTitleText="
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
:cond_da
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z
move-result v5
if-nez v5, :cond_1b4
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "Operations:"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "    "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v2
const/4 v4, 0x0
:goto_104
if-ge v4, v2, :cond_1b4
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/app/BackStackRecord$Op;
iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v5, :pswitch_data_1b6
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "cmd="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, v3, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_128
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "  Op #"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p2, v4}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v5, ": "
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p2, v0}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " "
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
if-eqz p3, :cond_195
iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
if-nez v5, :cond_14f
iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
if-eqz v5, :cond_16e
:cond_14f
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "enterAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " exitAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_16e
iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
if-nez v5, :cond_176
iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
if-eqz v5, :cond_195
:cond_176
invoke-static {p2, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, "popEnterAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v5, " popExitAnim=#"
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v5, v3, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-static {p2, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_195
add-int/lit8 v4, v4, 0x1
goto/16 :goto_104
:pswitch_199
const-string v0, "NULL"
goto :goto_128
:pswitch_19c
const-string v0, "ADD"
goto :goto_128
:pswitch_19f
const-string v0, "REPLACE"
goto :goto_128
:pswitch_1a2
const-string v0, "REMOVE"
goto :goto_128
:pswitch_1a5
const-string v0, "HIDE"
goto :goto_128
:pswitch_1a8
const-string v0, "SHOW"
goto/16 :goto_128
:pswitch_1ac
const-string v0, "DETACH"
goto/16 :goto_128
:pswitch_1b0
const-string v0, "ATTACH"
goto/16 :goto_128
:cond_1b4
return-void
nop
:pswitch_data_1b6
.packed-switch 0x0
:pswitch_199
:pswitch_19c
:pswitch_19f
:pswitch_1a2
:pswitch_1a5
:pswitch_1a8
:pswitch_1ac
:pswitch_1b0
.end packed-switch
.end method
.method  executeOps()V
.registers 8
const/4 v6, 0x1
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v3, 0x0
:goto_8
if-ge v3, v1, :cond_8d
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/BackStackRecord$Op;
iget-object v0, v2, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
iget v5, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/Fragment;->setNextTransition(II)V
iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v4, :pswitch_data_9c
:pswitch_20
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Unknown cmd: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:pswitch_3b
iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v5, 0x0
invoke-virtual {v4, v0, v5}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
:goto_46
iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
if-nez v4, :cond_53
iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
if-eq v4, v6, :cond_53
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V
:cond_53
add-int/lit8 v3, v3, 0x1
goto :goto_8
:pswitch_56
iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_46
:pswitch_61
iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_46
:pswitch_6c
iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_46
:pswitch_77
iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_46
:pswitch_82
iget v4, v2, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_46
:cond_8d
iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
if-nez v4, :cond_9a
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v5, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v5, v5, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
:cond_9a
return-void
nop
:pswitch_data_9c
.packed-switch 0x1
:pswitch_3b
:pswitch_20
:pswitch_56
:pswitch_61
:pswitch_6c
:pswitch_77
:pswitch_82
.end packed-switch
.end method
.method  executePopOps(Z)V
.registers 8
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v2, v3, -0x1
:goto_8
if-ltz v2, :cond_92
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;
iget-object v0, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v3, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
invoke-static {v3}, Landroid/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I
move-result v3
iget v4, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/Fragment;->setNextTransition(II)V
iget v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v3, :pswitch_data_a4
:pswitch_24
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Unknown cmd: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:pswitch_3f
iget v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManagerImpl;->removeFragment(Landroid/support/v4/app/Fragment;)V
:goto_49
iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
if-nez v3, :cond_57
iget v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
const/4 v4, 0x3
if-eq v3, v4, :cond_57
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V
:cond_57
add-int/lit8 v2, v2, -0x1
goto :goto_8
:pswitch_5a
iget v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
const/4 v4, 0x0
invoke-virtual {v3, v0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
goto :goto_49
:pswitch_66
iget v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManagerImpl;->showFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_49
:pswitch_71
iget v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManagerImpl;->hideFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_49
:pswitch_7c
iget v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManagerImpl;->attachFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_49
:pswitch_87
iget v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
invoke-virtual {v0, v3}, Landroid/support/v4/app/Fragment;->setNextAnim(I)V
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentManagerImpl;->detachFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_49
:cond_92
iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
if-nez v3, :cond_a2
if-eqz p1, :cond_a2
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v4, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v4, v4, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
const/4 v5, 0x1
invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
:cond_a2
return-void
nop
:pswitch_data_a4
.packed-switch 0x1
:pswitch_3f
:pswitch_24
:pswitch_5a
:pswitch_66
:pswitch_71
:pswitch_7c
:pswitch_87
.end packed-switch
.end method
.method  expandReplaceOps(Ljava/util/ArrayList;)V
.registers 11
const/4 v6, 0x0
:goto_1
iget-object v8, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v8
if-ge v6, v8, :cond_78
iget-object v8, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/support/v4/app/BackStackRecord$Op;
iget v8, v5, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v8, :pswitch_data_7a
:pswitch_16
:goto_16
add-int/lit8 v6, v6, 0x1
goto :goto_1
:pswitch_19
iget-object v8, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_16
:pswitch_1f
iget-object v8, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_16
:pswitch_25
iget-object v2, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v1, v2, Landroid/support/v4/app/Fragment;->mContainerId:I
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v8
add-int/lit8 v3, v8, -0x1
:goto_30
if-ltz v3, :cond_67
invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/app/Fragment;
iget v8, v4, Landroid/support/v4/app/Fragment;->mContainerId:I
if-ne v8, v1, :cond_3f
if-ne v4, v2, :cond_42
const/4 v0, 0x1
:goto_3f
:cond_3f
add-int/lit8 v3, v3, -0x1
goto :goto_30
:cond_42
new-instance v7, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v7}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v8, 0x3
iput v8, v7, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object v4, v7, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v8, v5, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iput v8, v7, Landroid/support/v4/app/BackStackRecord$Op;->enterAnim:I
iget v8, v5, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iput v8, v7, Landroid/support/v4/app/BackStackRecord$Op;->popEnterAnim:I
iget v8, v5, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iput v8, v7, Landroid/support/v4/app/BackStackRecord$Op;->exitAnim:I
iget v8, v5, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
iput v8, v7, Landroid/support/v4/app/BackStackRecord$Op;->popExitAnim:I
iget-object v8, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v8, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
add-int/lit8 v6, v6, 0x1
goto :goto_3f
:cond_67
if-eqz v0, :cond_71
iget-object v8, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v6, v6, -0x1
goto :goto_16
:cond_71
const/4 v8, 0x1
iput v8, v5, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_16
:cond_78
return-void
nop
:pswitch_data_7a
.packed-switch 0x1
:pswitch_19
:pswitch_25
:pswitch_1f
:pswitch_16
:pswitch_16
:pswitch_1f
:pswitch_19
.end packed-switch
.end method
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
.registers 6
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1c
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Run: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1c
invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v0, 0x0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v0, :cond_30
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl;->addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
:cond_30
const/4 v0, 0x1
return v0
.end method
.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
.registers 3
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
goto :goto_12
.end method
.method public getBreadCrumbShortTitleRes()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
return v0
.end method
.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
.registers 3
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
goto :goto_12
.end method
.method public getBreadCrumbTitleRes()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
return v0
.end method
.method public getId()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
return-object v0
.end method
.method public getTransition()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
return v0
.end method
.method public getTransitionStyle()I
.registers 2
iget v0, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
return v0
.end method
.method public hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x4
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method  interactsWith(I)Z
.registers 6
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v2, 0x0
:goto_7
if-ge v2, v0, :cond_1c
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;
iget-object v3, v1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v3, v3, Landroid/support/v4/app/Fragment;->mContainerId:I
if-ne v3, p1, :cond_19
const/4 v3, 0x1
:goto_18
return v3
:cond_19
add-int/lit8 v2, v2, 0x1
goto :goto_7
:cond_1c
const/4 v3, 0x0
goto :goto_18
.end method
.method  interactsWith(Ljava/util/ArrayList;II)Z
.registers 16
const/4 v10, 0x0
if-ne p3, p2, :cond_4
:goto_3
:cond_3
return v10
:cond_4
iget-object v11, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v2, -0x1
const/4 v6, 0x0
:goto_c
if-ge v6, v3, :cond_3
iget-object v11, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/support/v4/app/BackStackRecord$Op;
iget-object v11, v5, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v0, v11, Landroid/support/v4/app/Fragment;->mContainerId:I
if-eqz v0, :cond_47
if-eq v0, v2, :cond_47
move v2, v0
move v1, p2
:goto_20
if-ge v1, p3, :cond_47
invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/support/v4/app/BackStackRecord;
iget-object v11, v7, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v4
const/4 v9, 0x0
:goto_2f
if-ge v9, v4, :cond_44
iget-object v11, v7, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Landroid/support/v4/app/BackStackRecord$Op;
iget-object v11, v8, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v11, v11, Landroid/support/v4/app/Fragment;->mContainerId:I
if-ne v11, v0, :cond_41
const/4 v10, 0x1
goto :goto_3
:cond_41
add-int/lit8 v9, v9, 0x1
goto :goto_2f
:cond_44
add-int/lit8 v1, v1, 0x1
goto :goto_20
:cond_47
add-int/lit8 v6, v6, 0x1
goto :goto_c
.end method
.method public isAddToBackStackAllowed()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z
return v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
return v0
.end method
.method  isPostponed()Z
.registers 4
const/4 v1, 0x0
:goto_1
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_1c
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-static {v0}, Landroid/support/v4/app/BackStackRecord;->isFragmentPostponed(Landroid/support/v4/app/BackStackRecord$Op;)Z
move-result v2
if-eqz v2, :cond_19
const/4 v2, 0x1
:goto_18
return v2
:cond_19
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_1c
const/4 v2, 0x0
goto :goto_18
.end method
.method public remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x3
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/BackStackRecord;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
return-object v0
.end method
.method public replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Must use non-zero containerViewId"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
const/4 v0, 0x2
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v4/app/BackStackRecord;->doAddOp(ILandroid/support/v4/app/Fragment;Ljava/lang/String;I)V
return-object p0
.end method
.method public setAllowOptimization(Z)Landroid/support/v4/app/FragmentTransaction;
.registers 2
iput-boolean p1, p0, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
return-object p0
.end method
.method public setBreadCrumbShortTitle(I)Landroid/support/v4/app/FragmentTransaction;
.registers 3
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
.registers 3
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setBreadCrumbTitle(I)Landroid/support/v4/app/FragmentTransaction;
.registers 3
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/FragmentTransaction;
.registers 3
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I
iput-object p1, p0, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;
return-object p0
.end method
.method public setCustomAnimations(II)Landroid/support/v4/app/FragmentTransaction;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
move-result-object v0
return-object v0
.end method
.method public setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;
.registers 5
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mEnterAnim:I
iput p2, p0, Landroid/support/v4/app/BackStackRecord;->mExitAnim:I
iput p3, p0, Landroid/support/v4/app/BackStackRecord;->mPopEnterAnim:I
iput p4, p0, Landroid/support/v4/app/BackStackRecord;->mPopExitAnim:I
return-object p0
.end method
.method  setOnStartPostponedListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
.registers 5
const/4 v1, 0x0
:goto_1
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_1f
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-static {v0}, Landroid/support/v4/app/BackStackRecord;->isFragmentPostponed(Landroid/support/v4/app/BackStackRecord$Op;)Z
move-result v2
if-eqz v2, :cond_1c
iget-object v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v2, p1}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
:cond_1c
add-int/lit8 v1, v1, 0x1
goto :goto_1
:cond_1f
return-void
.end method
.method public setTransition(I)Landroid/support/v4/app/FragmentTransaction;
.registers 2
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransition:I
return-object p0
.end method
.method public setTransitionStyle(I)Landroid/support/v4/app/FragmentTransaction;
.registers 2
iput p1, p0, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I
return-object p0
.end method
.method public show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
.registers 4
new-instance v0, Landroid/support/v4/app/BackStackRecord$Op;
invoke-direct {v0}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V
const/4 v1, 0x5
iput v1, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
iput-object p1, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/BackStackRecord;->addOp(Landroid/support/v4/app/BackStackRecord$Op;)V
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "BackStackEntry{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ltz v1, :cond_25
const-string v1, " #"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v1, p0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
:cond_25
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
if-eqz v1, :cond_33
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_33
const-string v1, "}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method  trackAddedFragmentsInPop(Ljava/util/ArrayList;)V
.registers 5
const/4 v1, 0x0
:goto_1
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_25
iget-object v2, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/BackStackRecord$Op;
iget v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
packed-switch v2, :pswitch_data_26
:pswitch_16
:goto_16
add-int/lit8 v1, v1, 0x1
goto :goto_1
:pswitch_19
iget-object v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_16
:pswitch_1f
iget-object v2, v0, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_16
:cond_25
return-void
:pswitch_data_26
.packed-switch 0x1
:pswitch_19
:pswitch_16
:pswitch_1f
:pswitch_16
:pswitch_16
:pswitch_1f
:pswitch_19
.end packed-switch
.end method