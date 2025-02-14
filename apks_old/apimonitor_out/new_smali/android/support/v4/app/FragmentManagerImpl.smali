.class final Landroid/support/v4/app/FragmentManagerImpl;
.super Landroid/support/v4/app/FragmentManager;
.source "FragmentManager.java"
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator; = null
.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator; = null
.field static final ANIM_DUR:I = 0xdc
.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3
.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4
.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5
.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6
.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1
.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2
.field static DEBUG:Z = false
.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator; = null
.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator; = null
.field static final HONEYCOMB:Z = false
.field static final TAG:Ljava/lang/String; = "FragmentManager"
.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"
.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"
.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"
.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"
.field static sAnimationListenerField:Ljava/lang/reflect/Field;
.field  mActive:Ljava/util/ArrayList;
.field  mAdded:Ljava/util/ArrayList;
.field  mAvailBackStackIndices:Ljava/util/ArrayList;
.field  mAvailIndices:Ljava/util/ArrayList;
.field  mBackStack:Ljava/util/ArrayList;
.field  mBackStackChangeListeners:Ljava/util/ArrayList;
.field  mBackStackIndices:Ljava/util/ArrayList;
.field  mContainer:Landroid/support/v4/app/FragmentContainer;
.field  mCreatedMenus:Ljava/util/ArrayList;
.field  mCurState:I
.field  mDestroyed:Z
.field  mExecCommit:Ljava/lang/Runnable;
.field  mExecutingActions:Z
.field  mHavePendingDeferredStart:Z
.field  mHost:Landroid/support/v4/app/FragmentHostCallback;
.field private mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
.field  mNeedMenuInvalidate:Z
.field  mNoTransactionsBecause:Ljava/lang/String;
.field  mParent:Landroid/support/v4/app/Fragment;
.field  mPendingActions:Ljava/util/ArrayList;
.field  mPostponedTransactions:Ljava/util/ArrayList;
.field  mStateArray:Landroid/util/SparseArray;
.field  mStateBundle:Landroid/os/Bundle;
.field  mStateSaved:Z
.field  mTmpActions:[Ljava/lang/Runnable;
.field  mTmpAddedFragments:Ljava/util/ArrayList;
.field  mTmpIsPop:Ljava/util/ArrayList;
.field  mTmpRecords:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 5
const/4 v0, 0x0
const/high16 v4, 0x4020
const/high16 v3, 0x3fc0
sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_e
const/4 v0, 0x1
:cond_e
sput-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z
const/4 v0, 0x0
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v0, v4}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v0, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V
sput-object v0, Landroid/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;
return-void
.end method
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/app/FragmentManager;-><init>()V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$1;
invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentManagerImpl$1;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic access$200(Landroid/support/v4/app/FragmentManagerImpl;)V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->scheduleCommit()V
return-void
.end method
.method static synthetic access$300(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;ZZZ)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->completeExecute(Landroid/support/v4/app/BackStackRecord;ZZZ)V
return-void
.end method
.method private addAddedFragments(Landroid/support/v4/util/ArraySet;)V
.registers 10
const/4 v5, 0x0
iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
const/4 v3, 0x1
if-ge v0, v3, :cond_7
:cond_6
return-void
:cond_7
iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
const/4 v3, 0x4
invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I
move-result v2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-nez v0, :cond_40
move v7, v5
:goto_13
const/4 v6, 0x0
:goto_14
if-ge v6, v7, :cond_6
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
iget v0, v1, Landroid/support/v4/app/Fragment;->mState:I
if-ge v0, v2, :cond_3d
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getNextAnim()I
move-result v3
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getNextTransition()I
move-result v4
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_3d
iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v0, :cond_3d
iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z
if-eqz v0, :cond_3d
invoke-virtual {p1, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z
:cond_3d
add-int/lit8 v6, v6, 0x1
goto :goto_14
:cond_40
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v7
goto :goto_13
.end method
.method private checkStateLoss()V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can not perform this action after onSaveInstanceState"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
if-eqz v0, :cond_2b
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Can not perform this action inside of "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
return-void
.end method
.method private cleanupExec()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method private completeExecute(Landroid/support/v4/app/BackStackRecord;ZZZ)V
.registers 15
const/4 v9, 0x0
const/4 v3, 0x0
const/4 v4, 0x1
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
if-eqz p3, :cond_21
move-object v0, p0
move v5, v4
invoke-static/range {v0 .. v5}, Landroid/support/v4/app/FragmentTransition;->startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
:cond_21
if-eqz p4, :cond_28
iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
invoke-virtual {p0, v0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
:cond_28
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v0, :cond_70
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v8
const/4 v7, 0x0
:goto_33
if-ge v7, v8, :cond_70
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/support/v4/app/Fragment;
if-eqz v6, :cond_66
iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_66
iget-boolean v0, v6, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z
if-eqz v0, :cond_66
iget v0, v6, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-virtual {p1, v0}, Landroid/support/v4/app/BackStackRecord;->interactsWith(I)Z
move-result v0
if-eqz v0, :cond_66
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0xb
if-lt v0, v4, :cond_62
iget v0, v6, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
cmpl-float v0, v0, v9
if-lez v0, :cond_62
iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget v4, v6, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V
:cond_62
if-eqz p4, :cond_69
iput v9, v6, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
:cond_66
:goto_66
add-int/lit8 v7, v7, 0x1
goto :goto_33
:cond_69
const/high16 v0, -0x4080
iput v0, v6, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
iput-boolean v3, v6, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z
goto :goto_66
:cond_70
return-void
.end method
.method private endAnimatingAwayFragments()V
.registers 11
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-nez v0, :cond_37
move v9, v3
:goto_6
const/4 v8, 0x0
:goto_7
if-ge v8, v9, :cond_3e
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_34
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_34
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I
move-result v2
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;
move-result-object v6
const/4 v0, 0x0
invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V
invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;
move-result-object v7
if-eqz v7, :cond_2e
invoke-virtual {v7}, Landroid/view/animation/Animation;->cancel()V
:cond_2e
move-object v0, p0
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_34
add-int/lit8 v8, v8, 0x1
goto :goto_7
:cond_37
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v9
goto :goto_6
:cond_3e
return-void
.end method
.method private ensureExecReady(Z)V
.registers 5
const/4 v2, 0x0
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "FragmentManager is already executing transactions"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;
move-result-object v1
if-eq v0, v1, :cond_25
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Must be called from main thread of fragment host"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
if-nez p1, :cond_2a
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V
:cond_2a
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;
if-nez v0, :cond_3c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;
:cond_3c
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
const/4 v0, 0x0
const/4 v1, 0x0
:try_start_41
invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
:try_end_44
.catchall {:try_start_41 .. :try_end_44} :catchall_47
iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
return-void
:catchall_47
move-exception v0
iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
throw v0
.end method
.method private static executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
.registers 10
const/4 v5, 0x1
move v0, p2
:goto_2
if-ge v0, p3, :cond_2e
invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/app/BackStackRecord;
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-eqz v1, :cond_27
const/4 v4, -0x1
invoke-virtual {v3, v4}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V
add-int/lit8 v4, p3, -0x1
if-ne v0, v4, :cond_25
move v2, v5
:goto_1f
invoke-virtual {v3, v2}, Landroid/support/v4/app/BackStackRecord;->executePopOps(Z)V
:goto_22
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_25
const/4 v2, 0x0
goto :goto_1f
:cond_27
invoke-virtual {v3, v5}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V
invoke-virtual {v3}, Landroid/support/v4/app/BackStackRecord;->executeOps()V
goto :goto_22
:cond_2e
return-void
.end method
.method private executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
.registers 24
move-object/from16 v0, p1
move/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/BackStackRecord;
iget-boolean v15, v2, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
const/4 v14, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;
if-nez v2, :cond_64
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;
:goto_1c
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_2d
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:cond_2d
move/from16 v18, p3
:goto_2f
move/from16 v0, v18
move/from16 v1, p4
if-ge v0, v1, :cond_78
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Landroid/support/v4/app/BackStackRecord;
move-object/from16 v0, p2
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v16
if-nez v16, :cond_6c
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;
move-object/from16 v0, v17
invoke-virtual {v0, v2}, Landroid/support/v4/app/BackStackRecord;->expandReplaceOps(Ljava/util/ArrayList;)V
:goto_58
if-nez v14, :cond_60
move-object/from16 v0, v17
iget-boolean v2, v0, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z
if-eqz v2, :cond_76
:cond_60
const/4 v14, 0x1
:goto_61
add-int/lit8 v18, v18, 0x1
goto :goto_2f
:cond_64
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
goto :goto_1c
:cond_6c
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;
move-object/from16 v0, v17
invoke-virtual {v0, v2}, Landroid/support/v4/app/BackStackRecord;->trackAddedFragmentsInPop(Ljava/util/ArrayList;)V
goto :goto_58
:cond_76
const/4 v14, 0x0
goto :goto_61
:cond_78
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpAddedFragments:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
if-nez v15, :cond_8f
const/4 v7, 0x0
move-object/from16 v2, p0
move-object/from16 v3, p1
move-object/from16 v4, p2
move/from16 v5, p3
move/from16 v6, p4
invoke-static/range {v2 .. v7}, Landroid/support/v4/app/FragmentTransition;->startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
:cond_8f
invoke-static/range {p1 .. p4}, Landroid/support/v4/app/FragmentManagerImpl;->executeOps(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
move/from16 v12, p4
if-eqz v15, :cond_b3
new-instance v7, Landroid/support/v4/util/ArraySet;
invoke-direct {v7}, Landroid/support/v4/util/ArraySet;-><init>()V
move-object/from16 v0, p0
invoke-direct {v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->addAddedFragments(Landroid/support/v4/util/ArraySet;)V
move-object/from16 v2, p0
move-object/from16 v3, p1
move-object/from16 v4, p2
move/from16 v5, p3
move/from16 v6, p4
invoke-direct/range {v2 .. v7}, Landroid/support/v4/app/FragmentManagerImpl;->postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/util/ArraySet;)I
move-result v12
move-object/from16 v0, p0
invoke-direct {v0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeRemovedFragmentsInvisible(Landroid/support/v4/util/ArraySet;)V
:cond_b3
move/from16 v0, p3
if-eq v12, v0, :cond_cf
if-eqz v15, :cond_cf
const/4 v13, 0x1
move-object/from16 v8, p0
move-object/from16 v9, p1
move-object/from16 v10, p2
move/from16 v11, p3
invoke-static/range {v8 .. v13}, Landroid/support/v4/app/FragmentTransition;->startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
const/4 v3, 0x1
move-object/from16 v0, p0
invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
:cond_cf
move/from16 v18, p3
:goto_d1
move/from16 v0, v18
move/from16 v1, p4
if-ge v0, v1, :cond_108
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v17
check-cast v17, Landroid/support/v4/app/BackStackRecord;
move-object/from16 v0, p2
move/from16 v1, v18
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v16
if-eqz v16, :cond_105
move-object/from16 v0, v17
iget v2, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ltz v2, :cond_105
move-object/from16 v0, v17
iget v2, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V
const/4 v2, -0x1
move-object/from16 v0, v17
iput v2, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
:cond_105
add-int/lit8 v18, v18, 0x1
goto :goto_d1
:cond_108
if-eqz v14, :cond_10d
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V
:cond_10d
return-void
.end method
.method private executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.registers 11
const/4 v5, 0x0
const/4 v7, -0x1
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
if-nez v4, :cond_36
move v3, v5
:goto_7
const/4 v0, 0x0
:goto_8
if-ge v0, v3, :cond_82
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
if-eqz p1, :cond_3d
#getter for: Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z
invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$000(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
move-result v4
if-nez v4, :cond_3d
#getter for: Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;
invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/support/v4/app/BackStackRecord;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v1
if-eq v1, v7, :cond_3d
invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
if-eqz v4, :cond_3d
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V
:goto_33
:cond_33
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_36
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v3
goto :goto_7
:cond_3d
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->isReady()Z
move-result v4
if-nez v4, :cond_53
if-eqz p1, :cond_33
#getter for: Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;
invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/support/v4/app/BackStackRecord;
move-result-object v4
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v6
invoke-virtual {v4, p1, v5, v6}, Landroid/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z
move-result v4
if-eqz v4, :cond_33
:cond_53
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
add-int/lit8 v0, v0, -0x1
add-int/lit8 v3, v3, -0x1
if-eqz p1, :cond_7e
#getter for: Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mIsBack:Z
invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$000(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
move-result v4
if-nez v4, :cond_7e
#getter for: Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->mRecord:Landroid/support/v4/app/BackStackRecord;
invoke-static {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->access$100(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/support/v4/app/BackStackRecord;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v1
if-eq v1, v7, :cond_7e
invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
if-eqz v4, :cond_7e
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->cancelTransaction()V
goto :goto_33
:cond_7e
invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V
goto :goto_33
:cond_82
return-void
.end method
.method private findFragmentUnder(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
.registers 9
const/4 v5, 0x0
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_9
if-nez v4, :cond_b
:cond_9
move-object v3, v5
:cond_a
:goto_a
return-object v3
:cond_b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I
move-result v1
add-int/lit8 v2, v1, -0x1
:goto_13
if-ltz v2, :cond_28
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/app/Fragment;
iget-object v6, v3, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
if-ne v6, v0, :cond_25
iget-object v6, v3, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-nez v6, :cond_a
:cond_25
add-int/lit8 v2, v2, -0x1
goto :goto_13
:cond_28
move-object v3, v5
goto :goto_a
.end method
.method private forcePostponedTransactions()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
if-eqz v0, :cond_19
:goto_4
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;->completeTransaction()V
goto :goto_4
:cond_19
return-void
.end method
.method private generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
.registers 8
const/4 v3, 0x0
monitor-enter p0
:try_start_2
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
if-eqz v2, :cond_e
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-nez v2, :cond_11
:cond_e
monitor-exit p0
move v2, v3
:goto_10
return v2
:cond_11
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v0, 0x0
:goto_18
if-ge v0, v1, :cond_28
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
invoke-interface {v2, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_18
:cond_28
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v2
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;
invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
monitor-exit p0
if-lez v1, :cond_40
const/4 v2, 0x1
goto :goto_10
:catchall_3d
move-exception v2
monitor-exit p0
:try_end_3f
.catchall {:try_start_2 .. :try_end_3f} :catchall_3d
throw v2
:cond_40
move v2, v3
goto :goto_10
.end method
.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
.registers 7
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v2, 0xdc
invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
return-object v0
.end method
.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
.registers 16
new-instance v10, Landroid/view/animation/AnimationSet;
const/4 v1, 0x0
invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V
new-instance v0, Landroid/view/animation/ScaleAnimation;
const/4 v5, 0x1
const/high16 v6, 0x3f00
const/4 v7, 0x1
const/high16 v8, 0x3f00
move v1, p1
move v2, p2
move v3, p1
move v4, p2
invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V
sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v2, 0xdc
invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V
invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
new-instance v9, Landroid/view/animation/AlphaAnimation;
invoke-direct {v9, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
sget-object v1, Landroid/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;
invoke-virtual {v9, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v2, 0xdc
invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
return-object v10
.end method
.method private makeRemovedFragmentsInvisible(Landroid/support/v4/util/ArraySet;)V
.registers 8
invoke-virtual {p1}, Landroid/support/v4/util/ArraySet;->size()I
move-result v2
const/4 v1, 0x0
:goto_5
if-ge v1, v2, :cond_31
invoke-virtual {p1, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mAdded:Z
if-nez v4, :cond_23
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v3
sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0xb
if-ge v4, v5, :cond_26
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v4
const/4 v5, 0x4
invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
:cond_23
:goto_23
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_26
invoke-virtual {v3}, Landroid/view/View;->getAlpha()F
move-result v4
iput v4, v0, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
const/4 v4, 0x0
invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V
goto :goto_23
:cond_31
return-void
.end method
.method static modifiesAlpha(Landroid/view/animation/Animation;)Z
.registers 5
const/4 v2, 0x1
instance-of v3, p0, Landroid/view/animation/AlphaAnimation;
if-eqz v3, :cond_6
:cond_5
:goto_5
return v2
:cond_6
instance-of v3, p0, Landroid/view/animation/AnimationSet;
if-eqz v3, :cond_22
check-cast p0, Landroid/view/animation/AnimationSet;
invoke-virtual {p0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;
move-result-object v0
const/4 v1, 0x0
:goto_11
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
if-ge v1, v3, :cond_22
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
instance-of v3, v3, Landroid/view/animation/AlphaAnimation;
if-nez v3, :cond_5
add-int/lit8 v1, v1, 0x1
goto :goto_11
:cond_22
const/4 v2, 0x0
goto :goto_5
.end method
.method private optimizeAndExecuteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.registers 10
if-eqz p1, :cond_8
invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v5
if-eqz v5, :cond_9
:goto_8
:cond_8
return-void
:cond_9
if-eqz p2, :cond_15
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v5
invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
move-result v6
if-eq v5, v6, :cond_1d
:cond_15
new-instance v5, Ljava/lang/IllegalStateException;
const-string v6, "Internal error with the back stack records"
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v5
:cond_1d
invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->executePostponedTransaction(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v1
const/4 v4, 0x0
const/4 v3, 0x0
:goto_26
if-ge v3, v1, :cond_69
invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/support/v4/app/BackStackRecord;
iget-boolean v0, v5, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
if-nez v0, :cond_66
if-eq v4, v3, :cond_37
invoke-direct {p0, p1, p2, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
:cond_37
add-int/lit8 v2, v3, 0x1
invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Boolean;
invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
move-result v5
if-eqz v5, :cond_60
:goto_45
if-ge v2, v1, :cond_60
invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/Boolean;
invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
move-result v5
if-eqz v5, :cond_60
invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/support/v4/app/BackStackRecord;
iget-boolean v5, v5, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
if-nez v5, :cond_60
add-int/lit8 v2, v2, 0x1
goto :goto_45
:cond_60
invoke-direct {p0, p1, p2, v3, v2}, Landroid/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
move v4, v2
add-int/lit8 v3, v2, -0x1
:cond_66
add-int/lit8 v3, v3, 0x1
goto :goto_26
:cond_69
if-eq v4, v1, :cond_8
invoke-direct {p0, p1, p2, v4, v1}, Landroid/support/v4/app/FragmentManagerImpl;->executeOpsTogether(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
goto :goto_8
.end method
.method private popBackStackImmediate(Ljava/lang/String;II)Z
.registers 12
const/4 v7, 0x1
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
invoke-direct {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;
move-object v0, p0
move-object v3, p1
move v4, p2
move v5, p3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
move-result v6
if-eqz v6, :cond_21
iput-boolean v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
:try_start_17
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;
invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->optimizeAndExecuteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
:try_end_1e
.catchall {:try_start_17 .. :try_end_1e} :catchall_25
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V
:cond_21
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V
return v6
:catchall_25
move-exception v0
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V
throw v0
.end method
.method private postponePostponableTransactions(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/util/ArraySet;)I
.registers 14
const/4 v7, 0x0
move v4, p4
add-int/lit8 v0, p4, -0x1
:goto_4
if-lt v0, p3, :cond_5a
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/support/v4/app/BackStackRecord;
invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/Boolean;
invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
invoke-virtual {v5}, Landroid/support/v4/app/BackStackRecord;->isPostponed()Z
move-result v6
if-eqz v6, :cond_54
add-int/lit8 v6, v0, 0x1
invoke-virtual {v5, p1, v6, p4}, Landroid/support/v4/app/BackStackRecord;->interactsWith(Ljava/util/ArrayList;II)Z
move-result v6
if-nez v6, :cond_54
const/4 v2, 0x1
:goto_25
if-eqz v2, :cond_51
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
if-nez v6, :cond_32
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iput-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
:cond_32
new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
invoke-direct {v3, v5, v1}, Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;-><init>(Landroid/support/v4/app/BackStackRecord;Z)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v5, v3}, Landroid/support/v4/app/BackStackRecord;->setOnStartPostponedListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V
if-eqz v1, :cond_56
invoke-virtual {v5}, Landroid/support/v4/app/BackStackRecord;->executeOps()V
:goto_44
add-int/lit8 v4, v4, -0x1
if-eq v0, v4, :cond_4e
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
invoke-virtual {p1, v4, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
:cond_4e
invoke-direct {p0, p5}, Landroid/support/v4/app/FragmentManagerImpl;->addAddedFragments(Landroid/support/v4/util/ArraySet;)V
:cond_51
add-int/lit8 v0, v0, -0x1
goto :goto_4
:cond_54
move v2, v7
goto :goto_25
:cond_56
invoke-virtual {v5, v7}, Landroid/support/v4/app/BackStackRecord;->executePopOps(Z)V
goto :goto_44
:cond_5a
return v4
.end method
.method public static reverseTransit(I)I
.registers 2
const/4 v0, 0x0
sparse-switch p0, :sswitch_data_e
:goto_4
return v0
:sswitch_5
const/16 v0, 0x2002
goto :goto_4
:sswitch_8
const/16 v0, 0x1001
goto :goto_4
:sswitch_b
const/16 v0, 0x1003
goto :goto_4
:sswitch_data_e
.sparse-switch
0x1001 -> :sswitch_5
0x1003 -> :sswitch_b
0x2002 -> :sswitch_8
.end sparse-switch
.end method
.method private scheduleCommit()V
.registers 5
const/4 v2, 0x0
const/4 v0, 0x1
monitor-enter p0
:try_start_3
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
if-eqz v3, :cond_38
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPostponedTransactions:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
move-result v3
if-nez v3, :cond_38
move v1, v0
:goto_10
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
if-eqz v3, :cond_3a
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ne v3, v0, :cond_3a
:goto_1c
if-nez v1, :cond_20
if-eqz v0, :cond_36
:cond_20
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;
invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_36
monitor-exit p0
return-void
:cond_38
move v1, v2
goto :goto_10
:cond_3a
move v0, v2
goto :goto_1c
:catchall_3c
move-exception v2
monitor-exit p0
:try_end_3e
.catchall {:try_start_3 .. :try_end_3e} :catchall_3c
throw v2
.end method
.method private setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
.registers 8
if-eqz p1, :cond_4
if-nez p2, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-static {p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
move-result v3
if-eqz v3, :cond_4
const/4 v2, 0x0
:try_start_c
sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
if-nez v3, :cond_20
const-class v3, Landroid/view/animation/Animation;
const-string v4, "mListener"
invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v3
sput-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:cond_20
sget-object v3, Landroid/support/v4/app/FragmentManagerImpl;->sAnimationListenerField:Ljava/lang/reflect/Field;
invoke-virtual {v3, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
move-object v0, v3
check-cast v0, Landroid/view/animation/Animation$AnimationListener;
move-object v2, v0
:try_end_2a
.catch Ljava/lang/NoSuchFieldException; {:try_start_c .. :try_end_2a} :catch_38
.catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_2a} :catch_41
:goto_2a
const/4 v3, 0x2
const/4 v4, 0x0
invoke-static {p1, v3, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
new-instance v3, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
invoke-direct {v3, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {p2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
goto :goto_4
:catch_38
move-exception v1
const-string v3, "FragmentManager"
const-string v4, "No field with the name mListener is found in Animation class"
invoke-static {v3, v4, v1}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2a
:catch_41
move-exception v1
const-string v3, "FragmentManager"
const-string v4, "Cannot access Animation\'s mListener field"
invoke-static {v3, v4, v1}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2a
.end method
.method static shouldRunOnHWLayer(Landroid/view/View;Landroid/view/animation/Animation;)Z
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_1a
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayerType(Landroid/view/View;)I
move-result v0
if-nez v0, :cond_1a
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->hasOverlappingRendering(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_1a
invoke-static {p1}, Landroid/support/v4/app/FragmentManagerImpl;->modifiesAlpha(Landroid/view/animation/Animation;)Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method private throwException(Ljava/lang/RuntimeException;)V
.registers 9
const-string v3, "FragmentManager"
invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const-string v3, "FragmentManager"
const-string v4, "Activity state:"
invoke-static {v3, v4}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
new-instance v1, Landroid/support/v4/util/LogWriter;
const-string v3, "FragmentManager"
invoke-direct {v1, v3}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V
new-instance v2, Ljava/io/PrintWriter;
invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-eqz v3, :cond_35
:try_start_20
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
const-string v4, "  "
const/4 v5, 0x0
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/String;
invoke-virtual {v3, v4, v5, v2, v6}, Landroid/support/v4/app/FragmentHostCallback;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2b} :catch_2c
:goto_2b
throw p1
:catch_2c
move-exception v0
const-string v3, "FragmentManager"
const-string v4, "Failed dumping state"
invoke-static {v3, v4, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2b
:cond_35
:try_start_35
const-string v3, "  "
const/4 v4, 0x0
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/String;
invoke-virtual {p0, v3, v4, v2, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3e} :catch_3f
goto :goto_2b
:catch_3f
move-exception v0
const-string v3, "FragmentManager"
const-string v4, "Failed dumping state"
invoke-static {v3, v4, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2b
.end method
.method public static transitToStyleIndex(IZ)I
.registers 3
const/4 v0, -0x1
sparse-switch p0, :sswitch_data_18
:goto_4
return v0
:sswitch_5
if-eqz p1, :cond_9
const/4 v0, 0x1
:goto_8
goto :goto_4
:cond_9
const/4 v0, 0x2
goto :goto_8
:sswitch_b
if-eqz p1, :cond_f
const/4 v0, 0x3
:goto_e
goto :goto_4
:cond_f
const/4 v0, 0x4
goto :goto_e
:sswitch_11
if-eqz p1, :cond_15
const/4 v0, 0x5
:goto_14
goto :goto_4
:cond_15
const/4 v0, 0x6
goto :goto_14
nop
:sswitch_data_18
.sparse-switch
0x1001 -> :sswitch_5
0x1003 -> :sswitch_11
0x2002 -> :sswitch_b
.end sparse-switch
.end method
.method  addBackStackState(Landroid/support/v4/app/BackStackRecord;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
:cond_b
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V
return-void
.end method
.method public addFragment(Landroid/support/v4/app/Fragment;Z)V
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-nez v0, :cond_d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
:cond_d
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_29
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "add: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_29
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-nez v0, :cond_6f
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_51
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Fragment already added: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_51
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-nez v0, :cond_60
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
:cond_60
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_6a
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_6a
iput-boolean v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_6a
if-eqz p2, :cond_6f
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V
:cond_6f
return-void
.end method
.method public addOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
:cond_b
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public allocBackStackIndex(Landroid/support/v4/app/BackStackRecord;)I
.registers 7
monitor-enter p0
:try_start_1
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
if-eqz v2, :cond_d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-gtz v2, :cond_4c
:cond_d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
if-nez v2, :cond_18
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
:cond_18
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v2, :cond_44
const-string v2, "FragmentManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Setting back stack index "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " to "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_44
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit p0
move v1, v0
:goto_4b
return v1
:cond_4c
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v0
sget-boolean v2, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v2, :cond_86
const-string v2, "FragmentManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Adding back stack index "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " with "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_86
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
monitor-exit p0
move v1, v0
goto :goto_4b
:catchall_8e
move-exception v2
monitor-exit p0
:try_end_90
.catchall {:try_start_1 .. :try_end_90} :catchall_8e
throw v2
.end method
.method public attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Already attached"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
iput-object p3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public attachFragment(Landroid/support/v4/app/Fragment;)V
.registers 6
const/4 v3, 0x1
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1d
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "attach: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v0, :cond_81
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-nez v0, :cond_81
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-nez v0, :cond_33
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
:cond_33
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_54
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Fragment already added: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_54
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_70
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "add from attach: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_70
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_81
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_81
iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_81
return-void
.end method
.method public beginTransaction()Landroid/support/v4/app/FragmentTransaction;
.registers 2
new-instance v0, Landroid/support/v4/app/BackStackRecord;
invoke-direct {v0, p0}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V
return-object v0
.end method
.method  completeShowHideFragment(Landroid/support/v4/app/Fragment;)V
.registers 9
const/4 v3, 0x1
const/4 v4, 0x0
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v2, :cond_45
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I
move-result v5
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v2, :cond_5b
move v2, v3
:goto_f
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I
move-result v6
invoke-virtual {p0, p1, v5, v2, v6}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_2b
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-direct {p0, v2, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-direct {p0, v2, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V
:cond_2b
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v2, :cond_5d
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z
move-result v2
if-nez v2, :cond_5d
const/16 v1, 0x8
:goto_37
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isHideReplaced()Z
move-result v2
if-eqz v2, :cond_45
invoke-virtual {p1, v4}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V
:cond_45
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v2, :cond_53
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v2, :cond_53
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v2, :cond_53
iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_53
iput-boolean v4, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
invoke-virtual {p1, v2}, Landroid/support/v4/app/Fragment;->onHiddenChanged(Z)V
return-void
:cond_5b
move v2, v4
goto :goto_f
:cond_5d
move v1, v4
goto :goto_37
.end method
.method public detachFragment(Landroid/support/v4/app/Fragment;)V
.registers 6
const/4 v3, 0x1
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_1d
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "detach: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-nez v0, :cond_59
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v0, :cond_59
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v0, :cond_4c
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_47
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "remove from detach: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_47
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_4c
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v0, :cond_56
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v0, :cond_56
iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_56
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
:cond_59
return-void
.end method
.method public dispatchActivityCreated()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
const/4 v0, 0x2
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
return-void
.end method
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_1d
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_1d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1a
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1d
return-void
.end method
.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_22
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_22
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1f
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z
move-result v2
if-eqz v2, :cond_1f
const/4 v2, 0x1
:goto_1e
return v2
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_22
const/4 v2, 0x0
goto :goto_1e
.end method
.method public dispatchCreate()V
.registers 3
const/4 v1, 0x1
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
return-void
.end method
.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
.registers 8
const/4 v3, 0x0
const/4 v2, 0x0
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v4, :cond_2d
const/4 v1, 0x0
:goto_7
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge v1, v4, :cond_2d
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_2a
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
move-result v4
if-eqz v4, :cond_2a
const/4 v3, 0x1
if-nez v2, :cond_27
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
:cond_27
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2a
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_2d
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
if-eqz v4, :cond_50
const/4 v1, 0x0
:goto_32
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-ge v1, v4, :cond_50
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_4a
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_4d
:cond_4a
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->onDestroyOptionsMenu()V
:cond_4d
add-int/lit8 v1, v1, 0x1
goto :goto_32
:cond_50
iput-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
return v3
.end method
.method public dispatchDestroy()V
.registers 4
const/4 v2, 0x1
const/4 v1, 0x0
const/4 v0, 0x0
iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
invoke-virtual {p0, v0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
return-void
.end method
.method public dispatchDestroyView()V
.registers 3
const/4 v1, 0x1
const/4 v0, 0x0
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
return-void
.end method
.method public dispatchLowMemory()V
.registers 4
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_1d
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_1d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1a
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->performLowMemory()V
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1d
return-void
.end method
.method public dispatchMultiWindowModeChanged(Z)V
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-nez v2, :cond_5
:cond_4
return-void
:cond_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_d
if-ltz v1, :cond_4
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1c
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performMultiWindowModeChanged(Z)V
:cond_1c
add-int/lit8 v1, v1, -0x1
goto :goto_d
.end method
.method  dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
.registers 8
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p3, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
.registers 8
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p3, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
.registers 8
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p3, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V
.registers 7
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p2, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V
.registers 7
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p2, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V
.registers 7
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p2, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
.registers 8
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p3, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V
.registers 7
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p2, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
.registers 8
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, p2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p3, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V
.registers 7
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p2, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V
.registers 7
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p2, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
.registers 9
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, p2, p3, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p4, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1, p2, p3}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
goto :goto_1f
.end method
.method  dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V
.registers 7
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v2, :cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
instance-of v2, v1, Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v2, :cond_14
check-cast v1, Landroid/support/v4/app/FragmentManagerImpl;
const/4 v2, 0x1
invoke-virtual {v1, p1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V
:cond_14
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_19
:cond_18
return-void
:cond_19
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_1f
:cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_18
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-eqz p2, :cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v2, Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-eqz v2, :cond_1f
:cond_37
iget-object v2, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v2, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
invoke-virtual {v2, p0, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V
goto :goto_1f
.end method
.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_22
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_22
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1f
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v2
if-eqz v2, :cond_1f
const/4 v2, 0x1
:goto_1e
return v2
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_22
const/4 v2, 0x0
goto :goto_1e
.end method
.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_1d
const/4 v1, 0x0
:goto_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_1d
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1a
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_1d
return-void
.end method
.method public dispatchPause()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
const/4 v0, 0x4
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
return-void
.end method
.method public dispatchPictureInPictureModeChanged(Z)V
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-nez v2, :cond_5
:cond_4
return-void
:cond_5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_d
if-ltz v1, :cond_4
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1c
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPictureInPictureModeChanged(Z)V
:cond_1c
add-int/lit8 v1, v1, -0x1
goto :goto_d
.end method
.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 6
const/4 v2, 0x0
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v3, :cond_22
const/4 v1, 0x0
:goto_6
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v1, v3, :cond_22
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1f
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z
move-result v3
if-eqz v3, :cond_1f
const/4 v2, 0x1
:cond_1f
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_22
return v2
.end method
.method public dispatchReallyStop()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
const/4 v0, 0x2
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
return-void
.end method
.method public dispatchResume()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
const/4 v0, 0x5
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
return-void
.end method
.method public dispatchStart()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
const/4 v0, 0x4
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
return-void
.end method
.method public dispatchStop()V
.registers 3
const/4 v0, 0x1
const/4 v1, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
const/4 v0, 0x3
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
return-void
.end method
.method  doPendingDeferredStart()V
.registers 5
iget-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z
if-eqz v3, :cond_2e
const/4 v2, 0x0
const/4 v1, 0x0
:goto_6
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
if-ge v1, v3, :cond_26
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_23
iget-object v3, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v3, :cond_23
iget-object v3, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v3}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z
move-result v3
or-int/2addr v2, v3
:cond_23
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_26
if-nez v2, :cond_2e
const/4 v3, 0x0
iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V
:cond_2e
return-void
.end method
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 13
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v7, "    "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v6, :cond_5d
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_5d
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Active Fragments in "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v6
invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, ":"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_38
if-ge v3, v0, :cond_5d
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v2}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
if-eqz v2, :cond_5a
invoke-virtual {v2, v4, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
:cond_5a
add-int/lit8 v3, v3, 0x1
goto :goto_38
:cond_5d
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v6, :cond_96
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_96
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Added Fragments:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_72
if-ge v3, v0, :cond_96
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
add-int/lit8 v3, v3, 0x1
goto :goto_72
:cond_96
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
if-eqz v6, :cond_cf
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_cf
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Fragments Created Menus:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_ab
if-ge v3, v0, :cond_cf
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/Fragment;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
add-int/lit8 v3, v3, 0x1
goto :goto_ab
:cond_cf
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-eqz v6, :cond_10b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_10b
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Back Stack:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_e4
if-ge v3, v0, :cond_10b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-virtual {v1}, Landroid/support/v4/app/BackStackRecord;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-virtual {v1, v4, p2, p3, p4}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
add-int/lit8 v3, v3, 0x1
goto :goto_e4
:cond_10b
monitor-enter p0
:try_start_10c
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
if-eqz v6, :cond_141
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_141
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Back Stack Indices:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_121
if-ge v3, v0, :cond_141
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v1}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
add-int/lit8 v3, v3, 0x1
goto :goto_121
:cond_141
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
if-eqz v6, :cond_162
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
if-lez v6, :cond_162
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "mAvailBackStackIndices: "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v6
invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_162
monitor-exit p0
:try_end_163
.catchall {:try_start_10c .. :try_end_163} :catchall_198
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
if-eqz v6, :cond_19b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_19b
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "Pending Actions:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
const/4 v3, 0x0
:goto_178
if-ge v3, v0, :cond_19b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  #"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v3}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, ": "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, v5}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
add-int/lit8 v3, v3, 0x1
goto :goto_178
:catchall_198
move-exception v6
:try_start_199
monitor-exit p0
:try_end_19a
.catchall {:try_start_199 .. :try_end_19a} :catchall_198
throw v6
:cond_19b
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "FragmentManager misc state:"
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mHost="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mContainer="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v6, :cond_1ce
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mParent="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
:cond_1ce
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mCurState="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;I)V
const-string v6, " mStateSaved="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Z)V
const-string v6, " mDestroyed="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
if-eqz v6, :cond_200
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mNeedMenuInvalidate="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-boolean v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Z)V
:cond_200
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
if-eqz v6, :cond_211
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mNoTransactionsBecause="
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_211
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-eqz v6, :cond_232
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
if-lez v6, :cond_232
invoke-static {p3, p1}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
const-string v6, "  mAvailIndices: "
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->print(Ljava/io/PrintWriter;Ljava/lang/String;)V
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v6
invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-static {p3, v6}, Ldroidbox/java/io/PrintWriter;->println(Ljava/io/PrintWriter;Ljava/lang/String;)V
:cond_232
return-void
.end method
.method public enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
.registers 5
if-nez p2, :cond_5
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V
:cond_5
monitor-enter p0
:try_start_6
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
if-nez v0, :cond_e
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-nez v0, :cond_19
:cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Activity has been destroyed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:catchall_16
move-exception v0
monitor-exit p0
:try_end_18
.catchall {:try_start_6 .. :try_end_18} :catchall_16
throw v0
:cond_19
:try_start_19
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
if-nez v0, :cond_24
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
:cond_24
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->scheduleCommit()V
monitor-exit p0
:try_end_2d
.catchall {:try_start_19 .. :try_end_2d} :catchall_16
return-void
.end method
.method public execPendingActions()Z
.registers 5
const/4 v3, 0x1
invoke-direct {p0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V
const/4 v0, 0x0
:goto_5
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;
invoke-direct {p0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->generateOpsForPendingActions(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
move-result v1
if-eqz v1, :cond_22
iput-boolean v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
:try_start_11
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;
invoke-direct {p0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->optimizeAndExecuteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
:try_end_18
.catchall {:try_start_11 .. :try_end_18} :catchall_1d
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V
const/4 v0, 0x1
goto :goto_5
:catchall_1d
move-exception v1
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V
throw v1
:cond_22
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V
return v0
.end method
.method public execSingleAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
.registers 5
invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->ensureExecReady(Z)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;
invoke-interface {p1, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;->generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
move-result v0
if-eqz v0, :cond_1a
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
:try_start_10
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpRecords:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mTmpIsPop:Ljava/util/ArrayList;
invoke-direct {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->optimizeAndExecuteOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
:try_end_17
.catchall {:try_start_10 .. :try_end_17} :catchall_1e
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V
:cond_1a
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->doPendingDeferredStart()V
return-void
:catchall_1e
move-exception v0
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->cleanupExec()V
throw v0
.end method
.method public executePendingTransactions()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
move-result v0
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V
return v0
.end method
.method public findFragmentById(I)Landroid/support/v4/app/Fragment;
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_20
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_c
if-ltz v1, :cond_20
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1d
iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-ne v2, p1, :cond_1d
:goto_1c
:cond_1c
return-object v0
:cond_1d
add-int/lit8 v1, v1, -0x1
goto :goto_c
:cond_20
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v2, :cond_3f
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_2c
if-ltz v1, :cond_3f
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_3c
iget v2, v0, Landroid/support/v4/app/Fragment;->mFragmentId:I
if-eq v2, p1, :cond_1c
:cond_3c
add-int/lit8 v1, v1, -0x1
goto :goto_2c
:cond_3f
const/4 v0, 0x0
goto :goto_1c
.end method
.method public findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v2, :cond_26
if-eqz p1, :cond_26
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_e
if-ltz v1, :cond_26
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_23
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_23
:goto_22
:cond_22
return-object v0
:cond_23
add-int/lit8 v1, v1, -0x1
goto :goto_e
:cond_26
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v2, :cond_4b
if-eqz p1, :cond_4b
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_34
if-ltz v1, :cond_4b
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_48
iget-object v2, v0, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_22
:cond_48
add-int/lit8 v1, v1, -0x1
goto :goto_34
:cond_4b
const/4 v0, 0x0
goto :goto_22
.end method
.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 5
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v2, :cond_24
if-eqz p1, :cond_24
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v1, v2, -0x1
:goto_e
if-ltz v1, :cond_24
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_21
invoke-virtual {v0, p1}, Landroid/support/v4/app/Fragment;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_21
:goto_20
return-object v0
:cond_21
add-int/lit8 v1, v1, -0x1
goto :goto_e
:cond_24
const/4 v0, 0x0
goto :goto_20
.end method
.method public freeBackStackIndex(I)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
if-nez v0, :cond_12
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
:cond_12
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_2e
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Freeing back stack index "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2e
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit p0
return-void
:catchall_39
move-exception v0
monitor-exit p0
:try_end_3b
.catchall {:try_start_1 .. :try_end_3b} :catchall_39
throw v0
.end method
.method public getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/FragmentManager$BackStackEntry;
return-object v0
.end method
.method public getBackStackEntryCount()I
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 8
const/4 v2, -0x1
invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
if-ne v1, v2, :cond_9
const/4 v0, 0x0
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-lt v1, v2, :cond_36
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Fragment no longer exists for key "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": index "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_36
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-nez v0, :cond_8
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Fragment no longer exists for key "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": index "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
goto :goto_8
.end method
.method public getFragments()Ljava/util/List;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
return-object v0
.end method
.method  getLayoutInflaterFactory()Landroid/support/v4/view/LayoutInflaterFactory;
.registers 1
return-object p0
.end method
.method public hideFragment(Landroid/support/v4/app/Fragment;)V
.registers 6
const/4 v0, 0x1
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_1d
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "hide: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v1, :cond_29
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
if-nez v1, :cond_2a
:goto_27
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
:cond_29
return-void
:cond_2a
const/4 v0, 0x0
goto :goto_27
.end method
.method public isDestroyed()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
return v0
.end method
.method  isStateAtLeast(I)Z
.registers 3
iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
if-lt v0, p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method  loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
.registers 14
const v8, 0x3f79999a
const/4 v3, 0x0
const/4 v7, 0x0
const/high16 v6, 0x3f80
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextAnim()I
move-result v4
invoke-virtual {p1, p2, p3, v4}, Landroid/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;
move-result-object v1
if-eqz v1, :cond_12
:goto_11
return-object v1
:cond_12
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextAnim()I
move-result v4
if-eqz v4, :cond_2a
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextAnim()I
move-result v5
invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
if-eqz v0, :cond_2a
move-object v1, v0
goto :goto_11
:cond_2a
if-nez p2, :cond_2e
move-object v1, v3
goto :goto_11
:cond_2e
invoke-static {p2, p3}, Landroid/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I
move-result v2
if-gez v2, :cond_36
move-object v1, v3
goto :goto_11
:cond_36
packed-switch v2, :pswitch_data_98
if-nez p4, :cond_49
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->onHasWindowAnimations()Z
move-result v4
if-eqz v4, :cond_49
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->onGetWindowAnimations()I
move-result p4
:cond_49
if-nez p4, :cond_95
move-object v1, v3
goto :goto_11
:pswitch_4d
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
const/high16 v4, 0x3f90
invoke-static {v3, v4, v6, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_11
:pswitch_5a
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v6, v8, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_11
:pswitch_65
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v8, v6, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_11
:pswitch_70
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
const v4, 0x3f89999a
invoke-static {v3, v6, v4, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_11
:pswitch_7e
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v7, v6}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
move-result-object v1
goto :goto_11
:pswitch_89
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
move-result-object v1
goto/16 :goto_11
:cond_95
move-object v1, v3
goto/16 :goto_11
:pswitch_data_98
.packed-switch 0x1
:pswitch_4d
:pswitch_5a
:pswitch_65
:pswitch_70
:pswitch_7e
:pswitch_89
.end packed-switch
.end method
.method  makeActive(Landroid/support/v4/app/Fragment;)V
.registers 5
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
if-ltz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-gtz v0, :cond_49
:cond_11
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-nez v0, :cond_1c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
:cond_1c
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_2c
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_4
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Allocated fragment index "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_4
:cond_49
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->setIndex(ILandroid/support/v4/app/Fragment;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_2c
.end method
.method  makeInactive(Landroid/support/v4/app/Fragment;)V
.registers 5
iget v0, p1, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v0, :cond_5
:goto_4
return-void
:cond_5
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_21
const-string v0, "FragmentManager"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Freeing fragment index "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_21
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-nez v0, :cond_34
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
:cond_34
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
iget v1, p1, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentHostCallback;->inactivateFragment(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->initState()V
goto :goto_4
.end method
.method  moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V
.registers 16
const/4 v13, 0x1
const/4 v12, 0x0
const/4 v5, 0x0
if-nez p1, :cond_6
:goto_5
:cond_5
return-void
:cond_6
iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z
if-eqz v0, :cond_16
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z
move-result v0
if-eqz v0, :cond_7c
invoke-static {v2, v13}, Ljava/lang/Math;->min(II)I
move-result v2
:cond_16
:goto_16
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I
move-result v3
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I
move-result v4
move-object v0, p0
move-object v1, p1
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v0, :cond_74
invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentUnder(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;
move-result-object v8
if-eqz v8, :cond_45
iget-object v10, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget-object v7, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
move-result v9
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
move-result v11
if-ge v11, v9, :cond_45
invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeViewAt(I)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v7, v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
:cond_45
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z
if-eqz v0, :cond_74
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
if-eqz v0, :cond_74
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-ge v0, v1, :cond_81
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V
:cond_58
:goto_58
iput v12, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
iput-boolean v5, p1, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransition()I
move-result v0
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getNextTransitionStyle()I
move-result v1
invoke-virtual {p0, p1, v0, v13, v1}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v6
if-eqz v6, :cond_74
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-direct {p0, v0, v6}, Landroid/support/v4/app/FragmentManagerImpl;->setHWLayerAnimListenerIfAlpha(Landroid/view/View;Landroid/view/animation/Animation;)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_74
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
if-eqz v0, :cond_5
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->completeShowHideFragment(Landroid/support/v4/app/Fragment;)V
goto :goto_5
:cond_7c
invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I
move-result v2
goto :goto_16
:cond_81
iget v0, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
cmpl-float v0, v0, v12
if-lez v0, :cond_58
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
iget v1, p1, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V
goto :goto_58
.end method
.method  moveToState(IZ)V
.registers 10
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-nez v5, :cond_e
if-eqz p1, :cond_e
new-instance v5, Ljava/lang/IllegalStateException;
const-string v6, "No activity"
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v5
:cond_e
if-nez p2, :cond_15
iget v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
if-ne p1, v5, :cond_15
:cond_14
:goto_14
return-void
:cond_15
iput p1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v5, :cond_14
const/4 v2, 0x0
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v5, :cond_42
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v4
const/4 v1, 0x0
:goto_27
if-ge v1, v4, :cond_42
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v5, :cond_3f
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z
move-result v5
or-int/2addr v2, v5
:cond_3f
add-int/lit8 v1, v1, 0x1
goto :goto_27
:cond_42
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v1, 0x0
:goto_49
if-ge v1, v3, :cond_72
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_6f
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->mRemoving:Z
if-nez v5, :cond_5d
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v5, :cond_6f
:cond_5d
iget-boolean v5, v0, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z
if-nez v5, :cond_6f
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->moveFragmentToExpectedState(Landroid/support/v4/app/Fragment;)V
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
if-eqz v5, :cond_6f
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;
invoke-virtual {v5}, Landroid/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z
move-result v5
or-int/2addr v2, v5
:cond_6f
add-int/lit8 v1, v1, 0x1
goto :goto_49
:cond_72
if-nez v2, :cond_77
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V
:cond_77
iget-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
if-eqz v5, :cond_14
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
if-eqz v5, :cond_14
iget v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
const/4 v6, 0x5
if-ne v5, v6, :cond_14
iget-object v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V
const/4 v5, 0x0
iput-boolean v5, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
goto :goto_14
.end method
.method  moveToState(Landroid/support/v4/app/Fragment;)V
.registers 8
const/4 v3, 0x0
iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
return-void
.end method
.method  moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
.registers 23
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v4, :cond_c
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v4, :cond_13
:cond_c
const/4 v4, 0x1
move/from16 v0, p2
if-le v0, v4, :cond_13
const/16 p2, 0x1
:cond_13
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRemoving:Z
if-eqz v4, :cond_27
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I
move/from16 v0, p2
if-le v0, v4, :cond_27
move-object/from16 v0, p1
iget v0, v0, Landroid/support/v4/app/Fragment;->mState:I
move/from16 p2, v0
:cond_27
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mDeferStart:Z
if-eqz v4, :cond_3b
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I
const/4 v5, 0x4
if-ge v4, v5, :cond_3b
const/4 v4, 0x3
move/from16 v0, p2
if-le v0, v4, :cond_3b
const/16 p2, 0x3
:cond_3b
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I
move/from16 v0, p2
if-ge v4, v0, :cond_480
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v4, :cond_50
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mInLayout:Z
if-nez v4, :cond_50
:goto_4f
:cond_4f
return-void
:cond_50
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_6a
const/4 v4, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I
move-result v6
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x1
move-object/from16 v4, p0
move-object/from16 v5, p1
invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_6a
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I
packed-switch v4, :pswitch_data_668
:cond_71
:goto_71
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I
move/from16 v0, p2
if-eq v4, v0, :cond_4f
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "moveToState: Fragment state for "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " not updated inline; "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "expected state "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move/from16 v0, p2
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " found "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
iget v6, v0, Landroid/support/v4/app/Fragment;->mState:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
move/from16 v0, p2
move-object/from16 v1, p1
iput v0, v1, Landroid/support/v4/app/Fragment;->mState:I
goto :goto_4f
:pswitch_ba
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_d8
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "moveto CREATED: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_d8
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
if-eqz v4, :cond_145
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v5
invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v5, "android:view_state"
invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v4
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v5, "android:target_state"
move-object/from16 v0, p0
invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v4
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v4, :cond_124
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v5, "android:target_req_state"
const/4 v6, 0x0
invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v4
move-object/from16 v0, p1
iput v4, v0, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
:cond_124
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const-string v5, "android:user_visible_hint"
const/4 v6, 0x1
invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v4
move-object/from16 v0, p1
iput-boolean v4, v0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
if-nez v4, :cond_145
const/4 v4, 0x1
move-object/from16 v0, p1
iput-boolean v4, v0, Landroid/support/v4/app/Fragment;->mDeferStart:Z
const/4 v4, 0x3
move/from16 v0, p2
if-le v0, v4, :cond_145
const/16 p2, 0x3
:cond_145
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v4, :cond_1ae
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
:goto_161
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v4
const/4 v5, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
const/4 v4, 0x0
move-object/from16 v0, p1
iput-boolean v4, v0, Landroid/support/v4/app/Fragment;->mCalled:Z
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v4
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mCalled:Z
if-nez v4, :cond_1b7
new-instance v4, Landroid/support/v4/app/SuperNotCalledException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Fragment "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " did not call through to super.onAttach()"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V
throw v4
:cond_1ae
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
move-result-object v4
goto :goto_161
:cond_1b7
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
if-nez v4, :cond_433
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentHostCallback;->onAttachFragment(Landroid/support/v4/app/Fragment;)V
:goto_1c6
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v4
const/4 v5, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Landroid/content/Context;Z)V
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v4, :cond_43e
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->performCreate(Landroid/os/Bundle;)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const/4 v5, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
:goto_1f1
const/4 v4, 0x0
move-object/from16 v0, p1
iput-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v4, :cond_25d
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
move-result-object v4
const/4 v5, 0x0
move-object/from16 v0, p1
iget-object v6, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4, v5, v6}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v4
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v4, :cond_45c
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0xb
if-lt v4, v5, :cond_44e
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/4 v5, 0x0
invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V
:goto_231
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v4, :cond_240
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
:cond_240
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const/4 v6, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
:cond_25d
:pswitch_25d
:goto_25d
const/4 v4, 0x1
move/from16 v0, p2
if-le v0, v4, :cond_3c1
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_280
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "moveto ACTIVITY_CREATED: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_280
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-nez v4, :cond_398
const/4 v11, 0x0
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I
if-eqz v4, :cond_316
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mContainerId:I
const/4 v5, -0x1
if-ne v4, v5, :cond_2b9
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Cannot create fragment "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " for a container view with no id"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-direct {v0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_2b9
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
move-object/from16 v0, p1
iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;
move-result-object v11
check-cast v11, Landroid/view/ViewGroup;
if-nez v11, :cond_316
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRestored:Z
if-nez v4, :cond_316
:try_start_2cf
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;
move-result-object v4
move-object/from16 v0, p1
iget v5, v0, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
:try_end_2da
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_2cf .. :try_end_2da} :catch_463
move-result-object v14
:goto_2db
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "No view found for id 0x"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
iget v6, v0, Landroid/support/v4/app/Fragment;->mContainerId:I
invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " ("
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ") for fragment "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
invoke-direct {v0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_316
move-object/from16 v0, p1
iput-object v11, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
move-result-object v4
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4, v11, v5}, Landroid/support/v4/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
move-result-object v4
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v4, :cond_479
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v5, 0xb
if-lt v4, v5, :cond_468
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/4 v5, 0x0
invoke-static {v4, v5}, Landroid/support/v4/view/ViewCompat;->setSaveFromParentEnabled(Landroid/view/View;Z)V
:goto_34e
if-eqz v11, :cond_357
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v11, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_357
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v4, :cond_366
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/16 v5, 0x8
invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
:cond_366
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const/4 v6, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4, v5, v6}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v4
if-nez v4, :cond_476
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
if-eqz v4, :cond_476
const/4 v4, 0x1
:goto_394
move-object/from16 v0, p1
iput-boolean v4, v0, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z
:goto_398
:cond_398
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const/4 v5, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v4, :cond_3bc
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V
:cond_3bc
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
:pswitch_3c1
:cond_3c1
const/4 v4, 0x2
move/from16 v0, p2
if-le v0, v4, :cond_3cb
const/4 v4, 0x3
move-object/from16 v0, p1
iput v4, v0, Landroid/support/v4/app/Fragment;->mState:I
:pswitch_3cb
:cond_3cb
const/4 v4, 0x3
move/from16 v0, p2
if-le v0, v4, :cond_3f9
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_3ee
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "moveto STARTED: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_3ee
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performStart()V
const/4 v4, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V
:pswitch_3f9
:cond_3f9
const/4 v4, 0x4
move/from16 v0, p2
if-le v0, v4, :cond_71
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_41c
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "moveto RESUMED: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_41c
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performResume()V
const/4 v4, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
goto/16 :goto_71
:cond_433
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Landroid/support/v4/app/Fragment;->onAttachFragment(Landroid/support/v4/app/Fragment;)V
goto/16 :goto_1c6
:cond_43e
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V
const/4 v4, 0x1
move-object/from16 v0, p1
iput v4, v0, Landroid/support/v4/app/Fragment;->mState:I
goto/16 :goto_1f1
:cond_44e
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-static {v4}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;
move-result-object v4
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
goto/16 :goto_231
:cond_45c
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
goto/16 :goto_25d
:catch_463
move-exception v12
const-string v14, "unknown"
goto/16 :goto_2db
:cond_468
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-static {v4}, Landroid/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;
move-result-object v4
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
goto/16 :goto_34e
:cond_476
const/4 v4, 0x0
goto/16 :goto_394
:cond_479
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
goto/16 :goto_398
:cond_480
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I
move/from16 v0, p2
if-le v4, v0, :cond_71
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mState:I
packed-switch v4, :pswitch_data_676
goto/16 :goto_71
:cond_491
:goto_491
:pswitch_491
const/4 v4, 0x1
move/from16 v0, p2
if-ge v0, v4, :cond_71
move-object/from16 v0, p0
iget-boolean v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
if-eqz v4, :cond_4af
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_4af
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;
move-result-object v15
const/4 v4, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V
invoke-virtual {v15}, Landroid/view/View;->clearAnimation()V
:cond_4af
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_60a
invoke-virtual/range {p1 .. p2}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V
const/16 p2, 0x1
goto/16 :goto_71
:pswitch_4bc
const/4 v4, 0x5
move/from16 v0, p2
if-ge v0, v4, :cond_4ea
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_4df
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "movefrom RESUMED: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_4df
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performPause()V
const/4 v4, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V
:pswitch_4ea
:cond_4ea
const/4 v4, 0x4
move/from16 v0, p2
if-ge v0, v4, :cond_518
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_50d
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "movefrom STARTED: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_50d
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performStop()V
const/4 v4, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V
:pswitch_518
:cond_518
const/4 v4, 0x3
move/from16 v0, p2
if-ge v0, v4, :cond_53e
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_53b
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "movefrom STOPPED: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_53b
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performReallyStop()V
:pswitch_53e
:cond_53e
const/4 v4, 0x2
move/from16 v0, p2
if-ge v0, v4, :cond_491
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_561
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "movefrom ACTIVITY_CREATED: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_561
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v4, :cond_57c
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Landroid/support/v4/app/FragmentHostCallback;->onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
move-result v4
if-eqz v4, :cond_57c
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
if-nez v4, :cond_57c
invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
:cond_57c
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDestroyView()V
const/4 v4, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v4, :cond_5f9
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
if-eqz v4, :cond_5f9
const/4 v10, 0x0
move-object/from16 v0, p0
iget v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
if-lez v4, :cond_5c0
move-object/from16 v0, p0
iget-boolean v4, v0, Landroid/support/v4/app/FragmentManagerImpl;->mDestroyed:Z
if-nez v4, :cond_5c0
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v4
if-nez v4, :cond_5c0
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
const/4 v5, 0x0
cmpl-float v4, v4, v5
if-ltz v4, :cond_5c0
const/4 v4, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
move/from16 v2, p3
move/from16 v3, p4
invoke-virtual {v0, v1, v2, v4, v3}, Landroid/support/v4/app/FragmentManagerImpl;->loadAnimation(Landroid/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
move-result-object v10
:cond_5c0
const/4 v4, 0x0
move-object/from16 v0, p1
iput v4, v0, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
if-eqz v10, :cond_5ee
move-object/from16 v13, p1
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V
invoke-virtual/range {p1 .. p2}, Landroid/support/v4/app/Fragment;->setStateAfterAnimating(I)V
move-object/from16 v0, p1
iget-object v0, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
move-object/from16 v16, v0
new-instance v4, Landroid/support/v4/app/FragmentManagerImpl$2;
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-direct {v4, v0, v1, v10, v13}, Landroid/support/v4/app/FragmentManagerImpl$2;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V
invoke-virtual {v10, v4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v4, v10}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_5ee
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_5f9
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
goto/16 :goto_491
:cond_60a
sget-boolean v4, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v4, :cond_628
const-string v4, "FragmentManager"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "movefrom CREATED: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_628
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v4, :cond_651
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDestroy()V
const/4 v4, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V
:goto_639
invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->performDetach()V
const/4 v4, 0x0
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V
if-nez p5, :cond_71
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v4, :cond_657
invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/FragmentManagerImpl;->makeInactive(Landroid/support/v4/app/Fragment;)V
goto/16 :goto_71
:cond_651
const/4 v4, 0x0
move-object/from16 v0, p1
iput v4, v0, Landroid/support/v4/app/Fragment;->mState:I
goto :goto_639
:cond_657
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;
const/4 v4, 0x0
move-object/from16 v0, p1
iput-object v4, v0, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
goto/16 :goto_71
:pswitch_data_676
.packed-switch 0x1
:pswitch_491
:pswitch_53e
:pswitch_518
:pswitch_4ea
:pswitch_4bc
.end packed-switch
:pswitch_data_668
.packed-switch 0x0
:pswitch_ba
:pswitch_25d
:pswitch_3c1
:pswitch_3cb
:pswitch_3f9
.end packed-switch
.end method
.method public noteStateNotSaved()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
return-void
.end method
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 16
const/4 v0, 0x0
const/4 v3, 0x0
const/4 v5, -0x1
const/4 v2, 0x1
const-string v4, "fragment"
invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_d
:cond_c
:goto_c
return-object v0
:cond_d
const-string v4, "class"
invoke-interface {p4, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
sget-object v4, Landroid/support/v4/app/FragmentManagerImpl$FragmentTag;->Fragment:[I
invoke-virtual {p3, p4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v6
if-nez v8, :cond_1f
invoke-virtual {v6, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v8
:cond_1f
invoke-virtual {v6, v2, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v9
const/4 v4, 0x2
invoke-virtual {v6, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v4}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4, v8}, Landroid/support/v4/app/Fragment;->isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_c
if-eqz p1, :cond_64
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v7
:goto_3d
if-ne v7, v5, :cond_66
if-ne v9, v5, :cond_66
if-nez v10, :cond_66
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": Must specify unique android:id, android:tag, or have a parent with an id for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_64
move v7, v3
goto :goto_3d
:cond_66
if-eq v9, v5, :cond_108
invoke-virtual {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;
move-result-object v1
:goto_6c
if-nez v1, :cond_74
if-eqz v10, :cond_74
invoke-virtual {p0, v10}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v1
:cond_74
if-nez v1, :cond_7c
if-eq v7, v5, :cond_7c
invoke-virtual {p0, v7}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentById(I)Landroid/support/v4/app/Fragment;
move-result-object v1
:cond_7c
sget-boolean v0, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v0, :cond_b0
const-string v0, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "onCreateView: id=0x"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " fname="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " existing="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_b0
if-nez v1, :cond_10d
invoke-static {p3, v8}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v1
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v9, :cond_10b
move v0, v9
:goto_bb
iput v0, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I
iput v7, v1, Landroid/support/v4/app/Fragment;->mContainerId:I
iput-object v10, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z
iput-object p0, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iput-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
invoke-virtual {p0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->addFragment(Landroid/support/v4/app/Fragment;Z)V
:cond_d7
:goto_d7
iget v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
if-ge v0, v2, :cond_16f
iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z
if-eqz v0, :cond_16f
move-object v0, p0
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:goto_e5
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-nez v0, :cond_174
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Fragment "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " did not create a view."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_108
move-object v1, v0
goto/16 :goto_6c
:cond_10b
move v0, v7
goto :goto_bb
:cond_10d
iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z
if-eqz v0, :cond_158
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": Duplicate id 0x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", tag "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ", or parent id 0x"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " with another fragment for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_158
iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iput-object v0, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-boolean v0, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z
if-nez v0, :cond_d7
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v4, v1, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v1, v0, p4, v4}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
goto/16 :goto_d7
:cond_16f
invoke-virtual {p0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;)V
goto/16 :goto_e5
:cond_174
if-eqz v9, :cond_17b
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V
:cond_17b
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_188
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_188
iget-object v0, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
goto/16 :goto_c
.end method
.method public performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
.registers 8
const/4 v3, 0x0
iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
if-eqz v0, :cond_c
iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z
if-eqz v0, :cond_d
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z
:cond_c
:goto_c
return-void
:cond_d
iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDeferStart:Z
iget v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
move-object v0, p0
move-object v1, p1
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
goto :goto_c
.end method
.method public popBackStack()V
.registers 5
const/4 v3, 0x0
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;
const/4 v1, 0x0
const/4 v2, -0x1
invoke-direct {v0, p0, v1, v2, v3}, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V
invoke-virtual {p0, v0, v3}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
return-void
.end method
.method public popBackStack(II)V
.registers 6
if-gez p1, :cond_1b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Bad id: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1b
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;
const/4 v1, 0x0
invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
return-void
.end method
.method public popBackStack(Ljava/lang/String;I)V
.registers 5
new-instance v0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;
const/4 v1, -0x1
invoke-direct {v0, p0, p1, v1, p2}, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;-><init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentManagerImpl;->enqueueAction(Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;Z)V
return-void
.end method
.method public popBackStackImmediate()Z
.registers 4
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V
const/4 v0, 0x0
const/4 v1, -0x1
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z
move-result v0
return v0
.end method
.method public popBackStackImmediate(II)Z
.registers 6
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
if-gez p1, :cond_21
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Bad id: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
const/4 v0, 0x0
invoke-direct {p0, v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z
move-result v0
return v0
.end method
.method public popBackStackImmediate(Ljava/lang/String;I)Z
.registers 4
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->checkStateLoss()V
const/4 v0, -0x1
invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackImmediate(Ljava/lang/String;II)Z
move-result v0
return v0
.end method
.method  popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
.registers 13
const/4 v5, 0x1
const/4 v4, 0x0
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-nez v6, :cond_7
:goto_6
:cond_6
return v4
:cond_7
if-nez p3, :cond_2b
if-gez p4, :cond_2b
and-int/lit8 v6, p5, 0x1
if-nez v6, :cond_2b
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
add-int/lit8 v3, v6, -0x1
if-ltz v3, :cond_6
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_29
move v4, v5
goto :goto_6
:cond_2b
const/4 v2, -0x1
if-nez p3, :cond_30
if-ltz p4, :cond_7e
:cond_30
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
add-int/lit8 v2, v6, -0x1
:goto_38
if-ltz v2, :cond_4e
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/BackStackRecord;
if-eqz p3, :cond_75
invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_75
:cond_4e
if-ltz v2, :cond_6
and-int/lit8 v6, p5, 0x1
if-eqz v6, :cond_7e
add-int/lit8 v2, v2, -0x1
:goto_56
if-ltz v2, :cond_7e
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/BackStackRecord;
if-eqz p3, :cond_6c
invoke-virtual {v0}, Landroid/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_72
:cond_6c
if-ltz p4, :cond_7e
iget v6, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ne p4, v6, :cond_7e
:cond_72
add-int/lit8 v2, v2, -0x1
goto :goto_56
:cond_75
if-ltz p4, :cond_7b
iget v6, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-eq p4, v6, :cond_4e
:cond_7b
add-int/lit8 v2, v2, -0x1
goto :goto_38
:cond_7e
iget-object v6, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
add-int/lit8 v6, v6, -0x1
if-eq v2, v6, :cond_6
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
add-int/lit8 v1, v4, -0x1
:goto_90
if-le v1, v2, :cond_29
iget-object v4, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, -0x1
goto :goto_90
.end method
.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
.registers 7
iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v0, :cond_25
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Fragment "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not currently in the FragmentManager"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_25
iget v0, p3, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
:cond_b
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
new-instance v1, Landroid/support/v4/util/Pair;
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-direct {v1, p1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public removeFragment(Landroid/support/v4/app/Fragment;)V
.registers 8
const/4 v2, 0x0
const/4 v1, 0x1
sget-boolean v3, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v3, :cond_2a
const-string v3, "FragmentManager"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "remove: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " nesting="
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, p1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2a
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->isInBackStack()Z
move-result v3
if-nez v3, :cond_4f
move v0, v1
:goto_31
iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mDetached:Z
if-eqz v3, :cond_37
if-eqz v0, :cond_4e
:cond_37
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v3, :cond_40
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_40
iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mHasMenu:Z
if-eqz v3, :cond_4a
iget-boolean v3, p1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z
if-eqz v3, :cond_4a
iput-boolean v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z
:cond_4a
iput-boolean v2, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->mRemoving:Z
:cond_4e
return-void
:cond_4f
move v0, v2
goto :goto_31
.end method
.method public removeOnBackStackChangedListener(Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:cond_9
return-void
.end method
.method  reportBackStackChanged()V
.registers 3
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
if-eqz v1, :cond_1b
const/4 v0, 0x0
:goto_5
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v0, v1, :cond_1b
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;
invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1b
return-void
.end method
.method  restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
.registers 17
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
move-object v5, p1
check-cast v5, Landroid/support/v4/app/FragmentManagerState;
iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
if-eqz v11, :cond_2
const/4 v2, 0x0
if-eqz p2, :cond_7d
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;
move-result-object v9
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/List;
move-result-object v2
if-eqz v9, :cond_7b
invoke-interface {v9}, Ljava/util/List;->size()I
move-result v3
:goto_1b
const/4 v7, 0x0
:goto_1c
if-ge v7, v3, :cond_7d
invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/app/Fragment;
sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v11, :cond_40
const-string v11, "FragmentManager"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "restoreAllState: re-attaching retained "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_40
iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
iget v12, v4, Landroid/support/v4/app/Fragment;->mIndex:I
aget-object v6, v11, v12
iput-object v4, v6, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
const/4 v11, 0x0
iput-object v11, v4, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
const/4 v11, 0x0
iput v11, v4, Landroid/support/v4/app/Fragment;->mBackStackNesting:I
const/4 v11, 0x0
iput-boolean v11, v4, Landroid/support/v4/app/Fragment;->mInLayout:Z
const/4 v11, 0x0
iput-boolean v11, v4, Landroid/support/v4/app/Fragment;->mAdded:Z
const/4 v11, 0x0
iput-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
if-eqz v11, :cond_78
iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
iget-object v12, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v12}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v12
invoke-virtual {v12}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v12
invoke-virtual {v11, v12}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
const-string v12, "android:view_state"
invoke-virtual {v11, v12}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v11
iput-object v11, v4, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
iput-object v11, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
:cond_78
add-int/lit8 v7, v7, 0x1
goto :goto_1c
:cond_7b
const/4 v3, 0x0
goto :goto_1b
:cond_7d
new-instance v11, Ljava/util/ArrayList;
iget-object v12, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
array-length v12, v12
invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V
iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-eqz v11, :cond_90
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V
:cond_90
const/4 v7, 0x0
:goto_91
iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
array-length v11, v11
if-ge v7, v11, :cond_11b
iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
aget-object v6, v11, v7
if-eqz v6, :cond_e4
const/4 v1, 0x0
if-eqz v2, :cond_ab
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v11
if-ge v7, v11, :cond_ab
invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/FragmentManagerNonConfig;
:cond_ab
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v12, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-virtual {v6, v11, v12, v1}, Landroid/support/v4/app/FragmentState;->instantiate(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/FragmentManagerNonConfig;)Landroid/support/v4/app/Fragment;
move-result-object v4
sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v11, :cond_d9
const-string v11, "FragmentManager"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "restoreAllState: active #"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, ": "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_d9
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v11, 0x0
iput-object v11, v6, Landroid/support/v4/app/FragmentState;->mInstance:Landroid/support/v4/app/Fragment;
:goto_e1
add-int/lit8 v7, v7, 0x1
goto :goto_91
:cond_e4
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
const/4 v12, 0x0
invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
if-nez v11, :cond_f5
new-instance v11, Ljava/util/ArrayList;
invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V
iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
:cond_f5
sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v11, :cond_111
const-string v11, "FragmentManager"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "restoreAllState: avail #"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_111
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_e1
:cond_11b
if-eqz p2, :cond_177
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;
move-result-object v9
if-eqz v9, :cond_14d
invoke-interface {v9}, Ljava/util/List;->size()I
move-result v3
:goto_127
const/4 v7, 0x0
:goto_128
if-ge v7, v3, :cond_177
invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/app/Fragment;
iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I
if-ltz v11, :cond_14a
iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I
iget-object v12, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v12}, Ljava/util/ArrayList;->size()I
move-result v12
if-ge v11, v12, :cond_14f
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget v12, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I
invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Landroid/support/v4/app/Fragment;
iput-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
:cond_14a
:goto_14a
add-int/lit8 v7, v7, 0x1
goto :goto_128
:cond_14d
const/4 v3, 0x0
goto :goto_127
:cond_14f
const-string v11, "FragmentManager"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "Re-attaching retained fragment "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, " target no longer exists: "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
iget v13, v4, Landroid/support/v4/app/Fragment;->mTargetIndex:I
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v11, 0x0
iput-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
goto :goto_14a
:cond_177
iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
if-eqz v11, :cond_1f9
new-instance v11, Ljava/util/ArrayList;
iget-object v12, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
array-length v12, v12
invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V
iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
const/4 v7, 0x0
:goto_186
iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
array-length v11, v11
if-ge v7, v11, :cond_1fc
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
iget-object v12, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
aget v12, v12, v7
invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/app/Fragment;
if-nez v4, :cond_1b8
new-instance v11, Ljava/lang/IllegalStateException;
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "No instantiated fragment for index #"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
iget-object v13, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
aget v13, v13, v7
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v11}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_1b8
const/4 v11, 0x1
iput-boolean v11, v4, Landroid/support/v4/app/Fragment;->mAdded:Z
sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v11, :cond_1e1
const-string v11, "FragmentManager"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "restoreAllState: added #"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, ": "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1e1
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v11, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_1f1
new-instance v11, Ljava/lang/IllegalStateException;
const-string v12, "Already added!"
invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v11
:cond_1f1
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v7, v7, 0x1
goto :goto_186
:cond_1f9
const/4 v11, 0x0
iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
:cond_1fc
iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
if-eqz v11, :cond_270
new-instance v11, Ljava/util/ArrayList;
iget-object v12, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
array-length v12, v12
invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V
iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
const/4 v7, 0x0
:goto_20b
iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
array-length v11, v11
if-ge v7, v11, :cond_2
iget-object v11, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
aget-object v11, v11, v7
invoke-virtual {v11, p0}, Landroid/support/v4/app/BackStackState;->instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
move-result-object v0
sget-boolean v11, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v11, :cond_25f
const-string v11, "FragmentManager"
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "restoreAllState: back stack #"
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, " (index "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
iget v13, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
const-string v13, "): "
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
new-instance v8, Landroid/support/v4/util/LogWriter;
const-string v11, "FragmentManager"
invoke-direct {v8, v11}, Landroid/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V
new-instance v10, Ljava/io/PrintWriter;
invoke-direct {v10, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
const-string v11, "  "
const/4 v12, 0x0
invoke-virtual {v0, v11, v10, v12}, Landroid/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
invoke-virtual {v10}, Ljava/io/PrintWriter;->close()V
:cond_25f
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v11, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
if-ltz v11, :cond_26d
iget v11, v0, Landroid/support/v4/app/BackStackRecord;->mIndex:I
invoke-virtual {p0, v11, v0}, Landroid/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
:cond_26d
add-int/lit8 v7, v7, 0x1
goto :goto_20b
:cond_270
const/4 v11, 0x0
iput-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
goto/16 :goto_2
.end method
.method  retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
.registers 12
const/4 v8, 0x0
const/4 v4, 0x0
const/4 v2, 0x0
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v7, :cond_7e
const/4 v5, 0x0
:goto_8
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v7
if-ge v5, v7, :cond_7e
iget-object v7, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/app/Fragment;
if-eqz v3, :cond_7b
iget-boolean v7, v3, Landroid/support/v4/app/Fragment;->mRetainInstance:Z
if-eqz v7, :cond_51
if-nez v4, :cond_25
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
:cond_25
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v7, 0x1
iput-boolean v7, v3, Landroid/support/v4/app/Fragment;->mRetaining:Z
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v7, :cond_6e
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget v7, v7, Landroid/support/v4/app/Fragment;->mIndex:I
:goto_33
iput v7, v3, Landroid/support/v4/app/Fragment;->mTargetIndex:I
sget-boolean v7, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v7, :cond_51
const-string v7, "FragmentManager"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "retainNonConfig: keeping retained "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v7, v9}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_51
const/4 v0, 0x0
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
if-eqz v7, :cond_74
iget-object v7, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v7}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
move-result-object v1
if-eqz v1, :cond_74
if-nez v2, :cond_70
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v6, 0x0
:goto_66
if-ge v6, v5, :cond_70
invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v6, v6, 0x1
goto :goto_66
:cond_6e
const/4 v7, -0x1
goto :goto_33
:cond_70
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v0, 0x1
:cond_74
if-eqz v2, :cond_7b
if-nez v0, :cond_7b
invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_7b
add-int/lit8 v5, v5, 0x1
goto :goto_8
:cond_7e
if-nez v4, :cond_84
if-nez v2, :cond_84
move-object v7, v8
:goto_83
return-object v7
:cond_84
new-instance v7, Landroid/support/v4/app/FragmentManagerNonConfig;
invoke-direct {v7, v4, v2}, Landroid/support/v4/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V
goto :goto_83
.end method
.method  saveAllState()Landroid/os/Parcelable;
.registers 13
const/4 v5, 0x0
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->forcePostponedTransactions()V
invoke-direct {p0}, Landroid/support/v4/app/FragmentManagerImpl;->endAnimatingAwayFragments()V
invoke-virtual {p0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z
if-eqz v9, :cond_11
const/4 v9, 0x1
iput-boolean v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateSaved:Z
:cond_11
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-eqz v9, :cond_1d
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v9
if-gtz v9, :cond_1e
:goto_1d
:cond_1d
return-object v5
:cond_1e
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v1, v0, [Landroid/support/v4/app/FragmentState;
const/4 v7, 0x0
const/4 v8, 0x0
:goto_28
if-ge v8, v0, :cond_f8
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/app/Fragment;
if-eqz v4, :cond_ef
iget v9, v4, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v9, :cond_5f
new-instance v9, Ljava/lang/IllegalStateException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Failure saving state: active "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " has cleared index: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget v11, v4, Landroid/support/v4/app/Fragment;->mIndex:I
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_5f
const/4 v7, 0x1
new-instance v6, Landroid/support/v4/app/FragmentState;
invoke-direct {v6, v4}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V
aput-object v6, v1, v8
iget v9, v4, Landroid/support/v4/app/Fragment;->mState:I
if-lez v9, :cond_f3
iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
if-nez v9, :cond_f3
invoke-virtual {p0, v4}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
move-result-object v9
iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
if-eqz v9, :cond_c7
iget-object v9, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v9, :cond_a6
new-instance v9, Ljava/lang/IllegalStateException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Failure saving state: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " has target not in fragment manager: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_a6
iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
if-nez v9, :cond_b1
new-instance v9, Landroid/os/Bundle;
invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
:cond_b1
iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
const-string v10, "android:target_state"
iget-object v11, v4, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;
invoke-virtual {p0, v9, v10, v11}, Landroid/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Landroid/support/v4/app/Fragment;)V
iget v9, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
if-eqz v9, :cond_c7
iget-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
const-string v10, "android:target_req_state"
iget v11, v4, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I
invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:goto_c7
:cond_c7
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v9, :cond_ef
const-string v9, "FragmentManager"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Saved state of "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, ": "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_ef
add-int/lit8 v8, v8, 0x1
goto/16 :goto_28
:cond_f3
iget-object v9, v4, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;
iput-object v9, v6, Landroid/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;
goto :goto_c7
:cond_f8
if-nez v7, :cond_107
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v9, :cond_1d
const-string v9, "FragmentManager"
const-string v10, "saveAllState: no fragments!"
invoke-static {v9, v10}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
goto/16 :goto_1d
:cond_107
const/4 v2, 0x0
const/4 v3, 0x0
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
if-eqz v9, :cond_186
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_186
new-array v2, v0, [I
const/4 v8, 0x0
:goto_118
if-ge v8, v0, :cond_186
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v4/app/Fragment;
iget v9, v9, Landroid/support/v4/app/Fragment;->mIndex:I
aput v9, v2, v8
aget v9, v2, v8
if-gez v9, :cond_157
new-instance v9, Ljava/lang/IllegalStateException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "Failure saving state: active "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " has cleared index: "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
aget v11, v2, v8
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v9}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_157
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v9, :cond_183
const-string v9, "FragmentManager"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "saveAllState: adding fragment #"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, ": "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;
invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_183
add-int/lit8 v8, v8, 0x1
goto :goto_118
:cond_186
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
if-eqz v9, :cond_1d5
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_1d5
new-array v3, v0, [Landroid/support/v4/app/BackStackState;
const/4 v8, 0x0
:goto_195
if-ge v8, v0, :cond_1d5
new-instance v10, Landroid/support/v4/app/BackStackState;
iget-object v9, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v4/app/BackStackRecord;
invoke-direct {v10, v9}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/BackStackRecord;)V
aput-object v10, v3, v8
sget-boolean v9, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v9, :cond_1d2
const-string v9, "FragmentManager"
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "saveAllState: adding back stack #"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, ": "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
iget-object v11, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;
invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d2
add-int/lit8 v8, v8, 0x1
goto :goto_195
:cond_1d5
new-instance v5, Landroid/support/v4/app/FragmentManagerState;
invoke-direct {v5}, Landroid/support/v4/app/FragmentManagerState;-><init>()V
iput-object v1, v5, Landroid/support/v4/app/FragmentManagerState;->mActive:[Landroid/support/v4/app/FragmentState;
iput-object v2, v5, Landroid/support/v4/app/FragmentManagerState;->mAdded:[I
iput-object v3, v5, Landroid/support/v4/app/FragmentManagerState;->mBackStack:[Landroid/support/v4/app/BackStackState;
goto/16 :goto_1d
.end method
.method  saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
if-nez v1, :cond_c
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
:cond_c
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
const/4 v2, 0x0
invoke-virtual {p0, p1, v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z
move-result v1
if-nez v1, :cond_24
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;
:cond_24
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v1, :cond_2b
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
:cond_2b
iget-object v1, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
if-eqz v1, :cond_3d
if-nez v0, :cond_36
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
:cond_36
const-string v1, "android:view_state"
iget-object v2, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
:cond_3d
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
if-nez v1, :cond_4f
if-nez v0, :cond_48
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
:cond_48
const-string v1, "android:user_visible_hint"
iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_4f
return-object v0
.end method
.method public saveFragmentInstanceState(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment$SavedState;
.registers 7
const/4 v1, 0x0
iget v2, p1, Landroid/support/v4/app/Fragment;->mIndex:I
if-gez v2, :cond_26
new-instance v2, Ljava/lang/IllegalStateException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Fragment "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " is not currently in the FragmentManager"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-direct {p0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->throwException(Ljava/lang/RuntimeException;)V
:cond_26
iget v2, p1, Landroid/support/v4/app/Fragment;->mState:I
if-lez v2, :cond_35
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Landroid/support/v4/app/Fragment;)Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_35
new-instance v1, Landroid/support/v4/app/Fragment$SavedState;
invoke-direct {v1, v0}, Landroid/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V
:cond_35
return-object v1
.end method
.method  saveFragmentViewState(Landroid/support/v4/app/Fragment;)V
.registers 4
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
if-nez v0, :cond_5
:cond_4
:goto_4
return-void
:cond_5
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
if-nez v0, :cond_27
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
:goto_10
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
move-result v0
if-lez v0, :cond_4
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
iput-object v0, p1, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
goto :goto_4
:cond_27
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
goto :goto_10
.end method
.method public setBackStackIndex(ILandroid/support/v4/app/BackStackRecord;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
if-nez v1, :cond_c
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
:cond_c
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge p1, v0, :cond_41
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_3a
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Setting back stack index "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_3a
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_3f
monitor-exit p0
return-void
:goto_41
:cond_41
if-ge v0, p1, :cond_7c
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
if-nez v1, :cond_54
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
:cond_54
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_70
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Adding available back stack index "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_70
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_41
:cond_7c
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_a2
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Adding back stack index "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " with "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_a2
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;
invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_3f
:catchall_a8
move-exception v1
monitor-exit p0
:try_end_aa
.catchall {:try_start_1 .. :try_end_aa} :catchall_a8
throw v1
.end method
.method public showFragment(Landroid/support/v4/app/Fragment;)V
.registers 6
const/4 v0, 0x0
sget-boolean v1, Landroid/support/v4/app/FragmentManagerImpl;->DEBUG:Z
if-eqz v1, :cond_1d
const-string v1, "FragmentManager"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "show: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v1, :cond_2a
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
if-nez v1, :cond_28
const/4 v0, 0x1
:cond_28
iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
:cond_2a
return-void
.end method
.method  startPendingDeferredFragments()V
.registers 4
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-nez v2, :cond_5
:cond_4
return-void
:cond_5
const/4 v1, 0x0
:goto_6
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v1, v2, :cond_4
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_1b
invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V
:cond_1b
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x80
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "FragmentManager{"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, " in "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
if-eqz v1, :cond_2f
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mParent:Landroid/support/v4/app/Fragment;
invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
:goto_25
const-string v1, "}}"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
:cond_2f
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-static {v1, v0}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V
goto :goto_25
.end method
.method public unregisterFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
.registers 6
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v2, :cond_5
:goto_4
return-void
:cond_5
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
monitor-enter v3
const/4 v1, 0x0
:try_start_9
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I
move-result v0
:goto_f
if-ge v1, v0, :cond_22
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/util/Pair;
iget-object v2, v2, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
if-ne v2, p1, :cond_27
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl;->mLifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;
:cond_22
monitor-exit v3
goto :goto_4
:catchall_24
move-exception v2
monitor-exit v3
:try_end_26
.catchall {:try_start_9 .. :try_end_26} :catchall_24
throw v2
:cond_27
add-int/lit8 v1, v1, 0x1
goto :goto_f
.end method