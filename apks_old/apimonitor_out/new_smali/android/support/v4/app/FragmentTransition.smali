.class  Landroid/support/v4/app/FragmentTransition;
.super Ljava/lang/Object;
.source "FragmentTransition.java"
.field private static final INVERSE_OPS:[I
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0x8
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I
return-void
:array_a
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
.end array-data
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000(Ljava/util/ArrayList;I)V
.registers 2
invoke-static {p0, p1}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V
return-void
.end method
.method static synthetic access$100(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
.registers 5
invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
.registers 5
invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
return-void
.end method
.method static synthetic access$300(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
.registers 4
invoke-static {p0, p1, p2}, Landroid/support/v4/app/FragmentTransition;->captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
move-result-object v0
return-object v0
.end method
.method static synthetic access$400(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
.registers 5
invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentTransition;->getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method private static addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V
.registers 6
invoke-virtual {p1}, Landroid/support/v4/util/ArrayMap;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_6
if-ltz v0, :cond_1e
invoke-virtual {p1, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;
move-result-object v2
invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1b
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1b
add-int/lit8 v0, v0, -0x1
goto :goto_6
:cond_1e
return-void
.end method
.method private static addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
.registers 19
iget-object v2, p1, Landroid/support/v4/app/BackStackRecord$Op;->fragment:Landroid/support/v4/app/Fragment;
iget v8, v2, Landroid/support/v4/app/Fragment;->mContainerId:I
if-nez v8, :cond_7
:goto_6
:cond_6
return-void
:cond_7
if-eqz p3, :cond_79
sget-object v3, Landroid/support/v4/app/FragmentTransition;->INVERSE_OPS:[I
iget v4, p1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
aget v7, v3, v4
:goto_f
const/4 v11, 0x0
const/4 v13, 0x0
const/4 v10, 0x0
const/4 v12, 0x0
packed-switch v7, :pswitch_data_f0
:goto_16
:pswitch_16
move-object/from16 v0, p2
invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
if-eqz v11, :cond_2e
move-object/from16 v0, p2
invoke-static {v9, v0, v8}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
move-result-object v9
iput-object v2, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;
move/from16 v0, p3
iput-boolean v0, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z
iput-object p0, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;
:cond_2e
if-nez p4, :cond_55
if-eqz v12, :cond_55
if-eqz v9, :cond_3b
iget-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;
if-ne v3, v2, :cond_3b
const/4 v3, 0x0
iput-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;
:cond_3b
iget-object v1, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget v3, v2, Landroid/support/v4/app/Fragment;->mState:I
const/4 v4, 0x1
if-ge v3, v4, :cond_55
iget v3, v1, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
const/4 v4, 0x1
if-lt v3, v4, :cond_55
iget-boolean v3, p0, Landroid/support/v4/app/BackStackRecord;->mAllowOptimization:Z
if-nez v3, :cond_55
invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManagerImpl;->makeActive(Landroid/support/v4/app/Fragment;)V
const/4 v3, 0x1
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_55
if-eqz v10, :cond_6b
if-eqz v9, :cond_5d
iget-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;
if-nez v3, :cond_6b
:cond_5d
move-object/from16 v0, p2
invoke-static {v9, v0, v8}, Landroid/support/v4/app/FragmentTransition;->ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
move-result-object v9
iput-object v2, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;
move/from16 v0, p3
iput-boolean v0, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z
iput-object p0, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;
:cond_6b
if-nez p4, :cond_6
if-eqz v13, :cond_6
if-eqz v9, :cond_6
iget-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;
if-ne v3, v2, :cond_6
const/4 v3, 0x0
iput-object v3, v9, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;
goto :goto_6
:cond_79
iget v7, p1, Landroid/support/v4/app/BackStackRecord$Op;->cmd:I
goto :goto_f
:pswitch_7c
if-eqz p4, :cond_8f
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
if-eqz v3, :cond_8d
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v3, :cond_8d
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v3, :cond_8d
const/4 v11, 0x1
:goto_8b
const/4 v12, 0x1
goto :goto_16
:cond_8d
const/4 v11, 0x0
goto :goto_8b
:cond_8f
iget-boolean v11, v2, Landroid/support/v4/app/Fragment;->mHidden:Z
goto :goto_8b
:pswitch_92
if-eqz p4, :cond_99
iget-boolean v11, v2, Landroid/support/v4/app/Fragment;->mIsNewlyAdded:Z
:goto_96
const/4 v12, 0x1
goto/16 :goto_16
:cond_99
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z
if-nez v3, :cond_a3
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v3, :cond_a3
const/4 v11, 0x1
:goto_a2
goto :goto_96
:cond_a3
const/4 v11, 0x0
goto :goto_a2
:pswitch_a5
if-eqz p4, :cond_b9
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
if-eqz v3, :cond_b7
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v3, :cond_b7
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v3, :cond_b7
const/4 v10, 0x1
:goto_b4
const/4 v13, 0x1
goto/16 :goto_16
:cond_b7
const/4 v10, 0x0
goto :goto_b4
:cond_b9
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v3, :cond_c3
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v3, :cond_c3
const/4 v10, 0x1
:goto_c2
goto :goto_b4
:cond_c3
const/4 v10, 0x0
goto :goto_c2
:pswitch_c5
if-eqz p4, :cond_e4
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z
if-nez v3, :cond_e2
iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
if-eqz v3, :cond_e2
iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v3
if-nez v3, :cond_e2
iget v3, v2, Landroid/support/v4/app/Fragment;->mPostponedAlpha:F
const/4 v4, 0x0
cmpl-float v3, v3, v4
if-ltz v3, :cond_e2
const/4 v10, 0x1
:goto_df
const/4 v13, 0x1
goto/16 :goto_16
:cond_e2
const/4 v10, 0x0
goto :goto_df
:cond_e4
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v3, :cond_ee
iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHidden:Z
if-nez v3, :cond_ee
const/4 v10, 0x1
:goto_ed
goto :goto_df
:cond_ee
const/4 v10, 0x0
goto :goto_ed
:pswitch_data_f0
.packed-switch 0x1
:pswitch_92
:pswitch_16
:pswitch_c5
:pswitch_a5
:pswitch_7c
:pswitch_c5
:pswitch_92
.end packed-switch
.end method
.method public static calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
.registers 7
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v2, 0x0
:goto_7
if-ge v2, v0, :cond_18
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;
const/4 v3, 0x0
invoke-static {p0, v1, p1, v3, p2}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
add-int/lit8 v2, v2, 0x1
goto :goto_7
:cond_18
return-void
.end method
.method private static calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;
.registers 17
new-instance v2, Landroid/support/v4/util/ArrayMap;
invoke-direct {v2}, Landroid/support/v4/util/ArrayMap;-><init>()V
add-int/lit8 v6, p4, -0x1
:goto_7
if-lt v6, p3, :cond_58
invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/support/v4/app/BackStackRecord;
invoke-virtual {v5, p0}, Landroid/support/v4/app/BackStackRecord;->interactsWith(I)Z
move-result v11
if-nez v11, :cond_18
:cond_15
add-int/lit8 v6, v6, -0x1
goto :goto_7
:cond_18
invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v11
check-cast v11, Ljava/lang/Boolean;
invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
iget-object v11, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
if-eqz v11, :cond_15
iget-object v11, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {v11}, Ljava/util/ArrayList;->size()I
move-result v3
if-eqz v1, :cond_4f
iget-object v10, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
iget-object v8, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
:goto_32
const/4 v0, 0x0
:goto_33
if-ge v0, v3, :cond_15
invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/String;
invoke-virtual {v2, v9}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
if-eqz v4, :cond_54
invoke-virtual {v2, v7, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_4c
add-int/lit8 v0, v0, 0x1
goto :goto_33
:cond_4f
iget-object v8, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
iget-object v10, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
goto :goto_32
:cond_54
invoke-virtual {v2, v7, v9}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4c
:cond_58
return-object v2
.end method
.method public static calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
.registers 7
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v3, v3, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z
move-result v3
if-nez v3, :cond_b
:cond_a
return-void
:cond_b
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
add-int/lit8 v2, v0, -0x1
:goto_13
if-ltz v2, :cond_a
iget-object v3, p0, Landroid/support/v4/app/BackStackRecord;->mOps:Ljava/util/ArrayList;
invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v4/app/BackStackRecord$Op;
const/4 v3, 0x1
invoke-static {p0, v1, p1, v3, p2}, Landroid/support/v4/app/FragmentTransition;->addToFirstInLastOut(Landroid/support/v4/app/BackStackRecord;Landroid/support/v4/app/BackStackRecord$Op;Landroid/util/SparseArray;ZZ)V
add-int/lit8 v2, v2, -0x1
goto :goto_13
.end method
.method private static callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
.registers 12
const/4 v6, 0x0
if-eqz p2, :cond_2a
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
move-result-object v3
:goto_7
if-eqz v3, :cond_39
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
if-nez p3, :cond_2f
const/4 v0, 0x0
:goto_16
const/4 v1, 0x0
:goto_17
if-ge v1, v0, :cond_34
invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p3, v1}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_17
:cond_2a
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
move-result-object v3
goto :goto_7
:cond_2f
invoke-virtual {p3}, Landroid/support/v4/util/ArrayMap;->size()I
move-result v0
goto :goto_16
:cond_34
if-eqz p4, :cond_3a
invoke-virtual {v3, v2, v4, v6}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementStart(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
:cond_39
:goto_39
return-void
:cond_3a
invoke-virtual {v3, v2, v4, v6}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementEnd(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
goto :goto_39
.end method
.method private static captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
.registers 14
iget-object v2, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v10
if-nez v10, :cond_10
if-eqz p1, :cond_10
if-nez v0, :cond_15
:cond_10
invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->clear()V
const/4 v3, 0x0
:cond_14
:goto_14
return-object v3
:cond_15
new-instance v3, Landroid/support/v4/util/ArrayMap;
invoke-direct {v3}, Landroid/support/v4/util/ArrayMap;-><init>()V
invoke-static {v3, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V
iget-object v4, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;
iget-boolean v10, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z
if-eqz v10, :cond_55
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
move-result-object v8
iget-object v7, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
:goto_29
if-eqz v7, :cond_2e
invoke-virtual {v3, v7}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z
:cond_2e
if-eqz v8, :cond_74
invoke-virtual {v8, v7, v3}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v10
add-int/lit8 v1, v10, -0x1
:goto_39
if-ltz v1, :cond_14
invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
invoke-virtual {v3, v6}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/view/View;
if-nez v9, :cond_5c
invoke-static {p0, v6}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_52
invoke-virtual {p0, v5}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_52
:goto_52
add-int/lit8 v1, v1, -0x1
goto :goto_39
:cond_55
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
move-result-object v8
iget-object v7, v4, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
goto :goto_29
:cond_5c
invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-nez v10, :cond_52
invoke-static {p0, v6}, Landroid/support/v4/app/FragmentTransition;->findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_52
invoke-static {v9}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;
move-result-object v10
invoke-virtual {p0, v5, v10}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_52
:cond_74
invoke-static {p0, v3}, Landroid/support/v4/app/FragmentTransition;->retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
goto :goto_14
.end method
.method private static captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
.registers 13
invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v9
if-nez v9, :cond_8
if-nez p1, :cond_d
:cond_8
invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->clear()V
const/4 v4, 0x0
:cond_c
:goto_c
return-object v4
:cond_d
iget-object v3, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;
new-instance v4, Landroid/support/v4/util/ArrayMap;
invoke-direct {v4}, Landroid/support/v4/util/ArrayMap;-><init>()V
invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v9
invoke-static {v4, v9}, Landroid/support/v4/app/FragmentTransitionCompat21;->findNamedViews(Ljava/util/Map;Landroid/view/View;)V
iget-object v5, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;
iget-boolean v9, p2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z
if-eqz v9, :cond_4b
invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getEnterTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
move-result-object v6
iget-object v2, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
:goto_27
invoke-virtual {v4, v2}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z
if-eqz v6, :cond_6a
invoke-virtual {v6, v2, v4}, Landroid/support/v4/app/SharedElementCallback;->onMapSharedElements(Ljava/util/List;Ljava/util/Map;)V
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v9
add-int/lit8 v0, v9, -0x1
:goto_35
if-ltz v0, :cond_c
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v4, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Landroid/view/View;
if-nez v8, :cond_52
invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_48
:goto_48
add-int/lit8 v0, v0, -0x1
goto :goto_35
:cond_4b
invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getExitTransitionCallback()Landroid/support/v4/app/SharedElementCallback;
move-result-object v6
iget-object v2, v5, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
goto :goto_27
:cond_52
invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_48
invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/String;
invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->getTransitionName(Landroid/view/View;)Ljava/lang/String;
move-result-object v9
invoke-virtual {p0, v9, v7}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_48
:cond_6a
invoke-virtual {v4}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;
move-result-object v9
invoke-virtual {p0, v9}, Landroid/support/v4/util/ArrayMap;->retainAll(Ljava/util/Collection;)Z
goto :goto_c
.end method
.method private static configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
.registers 7
const/4 v1, 0x0
if-eqz p0, :cond_22
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_11
invoke-static {v1, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->captureTransitioningViews(Ljava/util/ArrayList;Landroid/view/View;)V
:cond_11
if-eqz p2, :cond_16
invoke-virtual {v1, p2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
:cond_16
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v2
if-nez v2, :cond_22
invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {p0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V
:cond_22
return-object v1
.end method
.method private static configureSharedElementsOptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 22
move-object/from16 v0, p3
iget-object v3, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;
move-object/from16 v0, p3
iget-object v4, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;
if-eqz v3, :cond_12
invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v2
const/4 v13, 0x0
invoke-virtual {v2, v13}, Landroid/view/View;->setVisibility(I)V
:cond_12
if-eqz v3, :cond_16
if-nez v4, :cond_18
:cond_16
const/4 v12, 0x0
:goto_17
return-object v12
:cond_18
move-object/from16 v0, p3
iget-boolean v5, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v2
if-eqz v2, :cond_4c
const/4 v12, 0x0
:goto_23
move-object/from16 v0, p2
move-object/from16 v1, p3
invoke-static {v0, v12, v1}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
move-result-object v10
move-object/from16 v0, p2
move-object/from16 v1, p3
invoke-static {v0, v12, v1}, Landroid/support/v4/app/FragmentTransition;->captureInSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
move-result-object v6
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v2
if-eqz v2, :cond_51
const/4 v12, 0x0
if-eqz v10, :cond_3f
invoke-virtual {v10}, Landroid/support/v4/util/ArrayMap;->clear()V
:cond_3f
if-eqz v6, :cond_44
invoke-virtual {v6}, Landroid/support/v4/util/ArrayMap;->clear()V
:goto_44
:cond_44
if-nez p6, :cond_64
if-nez p7, :cond_64
if-nez v12, :cond_64
const/4 v12, 0x0
goto :goto_17
:cond_4c
invoke-static {v3, v4, v5}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v12
goto :goto_23
:cond_51
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->keySet()Ljava/util/Set;
move-result-object v2
move-object/from16 v0, p4
invoke-static {v0, v10, v2}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;
move-result-object v2
move-object/from16 v0, p5
invoke-static {v0, v6, v2}, Landroid/support/v4/app/FragmentTransition;->addSharedElementsWithMatchingNames(Ljava/util/ArrayList;Landroid/support/v4/util/ArrayMap;Ljava/util/Collection;)V
goto :goto_44
:cond_64
const/4 v2, 0x1
invoke-static {v3, v4, v5, v10, v2}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
if-eqz v12, :cond_9f
move-object/from16 v0, p5
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p4
invoke-static {v12, p1, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
move-object/from16 v0, p3
iget-boolean v9, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z
move-object/from16 v0, p3
iget-object v11, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;
move-object/from16 v0, p7
invoke-static {v12, v0, v10, v9, v11}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V
new-instance v8, Landroid/graphics/Rect;
invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V
move-object/from16 v0, p3
move-object/from16 v1, p6
invoke-static {v6, v0, v1, v5}, Landroid/support/v4/app/FragmentTransition;->getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
move-result-object v7
if-eqz v7, :cond_95
move-object/from16 v0, p6
invoke-static {v0, v8}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
:cond_95
:goto_95
new-instance v2, Landroid/support/v4/app/FragmentTransition$3;
invoke-direct/range {v2 .. v8}, Landroid/support/v4/app/FragmentTransition$3;-><init>(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Landroid/view/View;Landroid/graphics/Rect;)V
invoke-static {p0, v2}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;
goto/16 :goto_17
:cond_9f
const/4 v8, 0x0
const/4 v7, 0x0
goto :goto_95
.end method
.method private static configureSharedElementsUnoptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 27
move-object/from16 v0, p3
iget-object v9, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;
move-object/from16 v0, p3
iget-object v10, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;
if-eqz v9, :cond_c
if-nez v10, :cond_e
:cond_c
const/4 v5, 0x0
:goto_d
return-object v5
:cond_e
move-object/from16 v0, p3
iget-boolean v11, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v3
if-eqz v3, :cond_36
const/16 v18, 0x0
:goto_1a
move-object/from16 v0, p2
move-object/from16 v1, v18
move-object/from16 v2, p3
invoke-static {v0, v1, v2}, Landroid/support/v4/app/FragmentTransition;->captureOutSharedElements(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;)Landroid/support/v4/util/ArrayMap;
move-result-object v16
invoke-virtual/range {p2 .. p2}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v3
if-eqz v3, :cond_3b
const/16 v18, 0x0
move-object/from16 v5, v18
:goto_2e
if-nez p6, :cond_47
if-nez p7, :cond_47
if-nez v5, :cond_47
const/4 v5, 0x0
goto :goto_d
:cond_36
invoke-static {v9, v10, v11}, Landroid/support/v4/app/FragmentTransition;->getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v18
goto :goto_1a
:cond_3b
invoke-virtual/range {v16 .. v16}, Landroid/support/v4/util/ArrayMap;->values()Ljava/util/Collection;
move-result-object v3
move-object/from16 v0, p4
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
move-object/from16 v5, v18
goto :goto_2e
:cond_47
const/4 v3, 0x1
move-object/from16 v0, v16
invoke-static {v9, v10, v11, v0, v3}, Landroid/support/v4/app/FragmentTransition;->callSharedElementStartEnd(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;Z)V
if-eqz v5, :cond_8c
new-instance v14, Landroid/graphics/Rect;
invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V
move-object/from16 v0, p1
move-object/from16 v1, p4
invoke-static {v5, v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
move-object/from16 v0, p3
iget-boolean v15, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z
move-object/from16 v0, p3
iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutTransaction:Landroid/support/v4/app/BackStackRecord;
move-object/from16 v17, v0
move-object/from16 v0, p7
move-object/from16 v1, v16
move-object/from16 v2, v17
invoke-static {v5, v0, v1, v15, v2}, Landroid/support/v4/app/FragmentTransition;->setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V
if-eqz p6, :cond_75
move-object/from16 v0, p6
invoke-static {v0, v14}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/graphics/Rect;)V
:goto_75
:cond_75
new-instance v3, Landroid/support/v4/app/FragmentTransition$4;
move-object/from16 v4, p2
move-object/from16 v6, p3
move-object/from16 v7, p5
move-object/from16 v8, p1
move-object/from16 v12, p4
move-object/from16 v13, p6
invoke-direct/range {v3 .. v14}, Landroid/support/v4/app/FragmentTransition$4;-><init>(Landroid/support/v4/util/ArrayMap;Ljava/lang/Object;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Landroid/view/View;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V
move-object/from16 v0, p0
invoke-static {v0, v3}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;
goto :goto_d
:cond_8c
const/4 v14, 0x0
goto :goto_75
.end method
.method private static configureTransitionsOptimized(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
.registers 27
const/4 v2, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z
move-result v3
if-eqz v3, :cond_17
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
move/from16 v0, p1
invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/view/ViewGroup;
:cond_17
if-nez v2, :cond_1a
:goto_19
:cond_19
return-void
:cond_1a
move-object/from16 v0, p2
iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;
move-object/from16 v17, v0
move-object/from16 v0, p2
iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;
move-object/from16 v20, v0
move-object/from16 v0, p2
iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z
move/from16 v18, v0
move-object/from16 v0, p2
iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z
move/from16 v21, v0
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
invoke-static/range {v17 .. v18}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v8
invoke-static/range {v20 .. v21}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v9
move-object/from16 v3, p3
move-object/from16 v4, p4
move-object/from16 v5, p2
invoke-static/range {v2 .. v9}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsOptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v15
if-nez v8, :cond_54
if-nez v15, :cond_54
if-eqz v9, :cond_19
:cond_54
move-object/from16 v0, v20
move-object/from16 v1, p3
invoke-static {v9, v0, v6, v1}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
move-result-object v14
move-object/from16 v0, v17
move-object/from16 v1, p3
invoke-static {v8, v0, v7, v1}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
move-result-object v12
const/4 v3, 0x4
invoke-static {v12, v3}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V
move-object/from16 v0, v17
move/from16 v1, v18
invoke-static {v8, v9, v15, v0, v1}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v10
if-eqz v10, :cond_19
move-object/from16 v0, v20
invoke-static {v9, v0, v14}, Landroid/support/v4/app/FragmentTransition;->replaceHide(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
invoke-static {v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->prepareSetNameOverridesOptimized(Ljava/util/ArrayList;)Ljava/util/ArrayList;
move-result-object v19
move-object v11, v8
move-object v13, v9
move-object/from16 v16, v7
invoke-static/range {v10 .. v16}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
invoke-static {v2, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
move-object/from16 v0, v19
move-object/from16 v1, p4
invoke-static {v2, v6, v7, v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesOptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V
const/4 v3, 0x0
invoke-static {v12, v3}, Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V
invoke-static {v15, v6, v7}, Landroid/support/v4/app/FragmentTransitionCompat21;->swapSharedElementTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
goto :goto_19
.end method
.method private static configureTransitionsUnoptimized(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
.registers 32
const/4 v2, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
invoke-virtual {v3}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z
move-result v3
if-eqz v3, :cond_17
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/app/FragmentManagerImpl;->mContainer:Landroid/support/v4/app/FragmentContainer;
move/from16 v0, p1
invoke-virtual {v3, v0}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/view/ViewGroup;
:cond_17
if-nez v2, :cond_1a
:cond_19
:goto_19
return-void
:cond_1a
move-object/from16 v0, p2
iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastIn:Landroid/support/v4/app/Fragment;
move-object/from16 v17, v0
move-object/from16 v0, p2
iget-object v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOut:Landroid/support/v4/app/Fragment;
move-object/from16 v25, v0
move-object/from16 v0, p2
iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z
move/from16 v24, v0
move-object/from16 v0, p2
iget-boolean v0, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->firstOutIsPop:Z
move/from16 v26, v0
move-object/from16 v0, v17
move/from16 v1, v24
invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransition;->getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v8
invoke-static/range {v25 .. v26}, Landroid/support/v4/app/FragmentTransition;->getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v9
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v3, p3
move-object/from16 v4, p4
move-object/from16 v5, p2
invoke-static/range {v2 .. v9}, Landroid/support/v4/app/FragmentTransition;->configureSharedElementsUnoptimized(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v15
if-nez v8, :cond_58
if-nez v15, :cond_58
if-eqz v9, :cond_19
:cond_58
move-object/from16 v0, v25
move-object/from16 v1, p3
invoke-static {v9, v0, v6, v1}, Landroid/support/v4/app/FragmentTransition;->configureEnteringExitingViews(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
move-result-object v14
if-eqz v14, :cond_68
invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z
move-result v3
if-eqz v3, :cond_69
:cond_68
const/4 v9, 0x0
:cond_69
move-object/from16 v0, p3
invoke-static {v8, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->addTarget(Ljava/lang/Object;Landroid/view/View;)V
move-object/from16 v0, p2
iget-boolean v3, v0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInIsPop:Z
move-object/from16 v0, v17
invoke-static {v8, v9, v15, v0, v3}, Landroid/support/v4/app/FragmentTransition;->mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
move-result-object v10
if-eqz v10, :cond_19
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
move-object v11, v8
move-object v13, v9
move-object/from16 v16, v7
invoke-static/range {v10 .. v16}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
move-object/from16 v16, v2
move-object/from16 v18, p3
move-object/from16 v19, v7
move-object/from16 v20, v8
move-object/from16 v21, v12
move-object/from16 v22, v9
move-object/from16 v23, v14
invoke-static/range {v16 .. v23}, Landroid/support/v4/app/FragmentTransition;->scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
move-object/from16 v0, p4
invoke-static {v2, v7, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setNameOverridesUnoptimized(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V
invoke-static {v2, v10}, Landroid/support/v4/app/FragmentTransitionCompat21;->beginDelayedTransition(Landroid/view/ViewGroup;Ljava/lang/Object;)V
move-object/from16 v0, p4
invoke-static {v2, v7, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleNameReset(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V
goto/16 :goto_19
.end method
.method private static ensureContainer(Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/util/SparseArray;I)Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
.registers 3
if-nez p0, :cond_a
new-instance p0, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
invoke-direct {p0}, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;-><init>()V
invoke-virtual {p1, p2, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:cond_a
return-object p0
.end method
.method private static findKeyForValue(Landroid/support/v4/util/ArrayMap;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I
move-result v1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_1b
invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_18
invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
:goto_17
return-object v2
:cond_18
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_1b
const/4 v2, 0x0
goto :goto_17
.end method
.method private static getEnterTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
if-eqz p1, :cond_f
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;
move-result-object v0
:goto_a
invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_3
:cond_f
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;
move-result-object v0
goto :goto_a
.end method
.method private static getExitTransition(Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
if-eqz p1, :cond_f
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;
move-result-object v0
:goto_a
invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_3
:cond_f
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;
move-result-object v0
goto :goto_a
.end method
.method private static getInEpicenterView(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Ljava/lang/Object;Z)Landroid/view/View;
.registers 8
const/4 v3, 0x0
iget-object v0, p1, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;->lastInTransaction:Landroid/support/v4/app/BackStackRecord;
if-eqz p2, :cond_2f
if-eqz p0, :cond_2f
iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
if-eqz v2, :cond_2f
iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v2
if-nez v2, :cond_2f
if-eqz p3, :cond_25
iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
move-object v1, v2
:goto_1e
invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/View;
:goto_24
return-object v2
:cond_25
iget-object v2, v0, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
move-object v1, v2
goto :goto_1e
:cond_2f
const/4 v2, 0x0
goto :goto_24
.end method
.method private static getSharedElementTransition(Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
.registers 5
if-eqz p0, :cond_4
if-nez p1, :cond_6
:cond_4
const/4 v1, 0x0
:goto_5
return-object v1
:cond_6
if-eqz p2, :cond_15
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;
move-result-object v1
:goto_c
invoke-static {v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->cloneTransition(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->wrapTransitionInSet(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
goto :goto_5
:cond_15
invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;
move-result-object v1
goto :goto_c
.end method
.method private static mergeTransitions(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Z)Ljava/lang/Object;
.registers 7
const/4 v0, 0x1
if-eqz p0, :cond_d
if-eqz p1, :cond_d
if-eqz p3, :cond_d
if-eqz p4, :cond_14
invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z
move-result v0
:cond_d
:goto_d
if-eqz v0, :cond_19
invoke-static {p1, p0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsTogether(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:goto_13
return-object v1
:cond_14
invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z
move-result v0
goto :goto_d
:cond_19
invoke-static {p1, p0, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->mergeTransitionsInSequence(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
goto :goto_13
.end method
.method private static replaceHide(Ljava/lang/Object;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;)V
.registers 5
if-eqz p1, :cond_25
if-eqz p0, :cond_25
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mAdded:Z
if-eqz v1, :cond_25
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHidden:Z
if-eqz v1, :cond_25
iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->mHiddenChanged:Z
if-eqz v1, :cond_25
const/4 v1, 0x1
invoke-virtual {p1, v1}, Landroid/support/v4/app/Fragment;->setHideReplaced(Z)V
invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;
move-result-object v1
invoke-static {p0, v1, p2}, Landroid/support/v4/app/FragmentTransitionCompat21;->scheduleHideFragmentView(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
iget-object v0, p1, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;
new-instance v1, Landroid/support/v4/app/FragmentTransition$1;
invoke-direct {v1, p2}, Landroid/support/v4/app/FragmentTransition$1;-><init>(Ljava/util/ArrayList;)V
invoke-static {v0, v1}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;
:cond_25
return-void
.end method
.method private static retainValues(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/util/ArrayMap;)V
.registers 5
invoke-virtual {p0}, Landroid/support/v4/util/ArrayMap;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_6
if-ltz v0, :cond_1a
invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p1, v1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_17
invoke-virtual {p0, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
:cond_17
add-int/lit8 v0, v0, -0x1
goto :goto_6
:cond_1a
return-void
.end method
.method private static scheduleTargetChange(Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;Landroid/view/View;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.registers 16
new-instance v0, Landroid/support/v4/app/FragmentTransition$2;
move-object v1, p4
move-object v2, p2
move-object v3, p1
move-object v4, p3
move-object v5, p5
move-object v6, p7
move-object v7, p6
invoke-direct/range {v0 .. v7}, Landroid/support/v4/app/FragmentTransition$2;-><init>(Ljava/lang/Object;Landroid/view/View;Landroid/support/v4/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V
invoke-static {p0, v0}, Landroid/support/v4/app/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/OneShotPreDrawListener;
return-void
.end method
.method private static setOutEpicenter(Ljava/lang/Object;Ljava/lang/Object;Landroid/support/v4/util/ArrayMap;ZLandroid/support/v4/app/BackStackRecord;)V
.registers 9
const/4 v3, 0x0
iget-object v2, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
if-eqz v2, :cond_26
iget-object v2, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v2
if-nez v2, :cond_26
if-eqz p3, :cond_27
iget-object v2, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementTargetNames:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
move-object v1, v2
:goto_18
invoke-virtual {p2, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-static {p0, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
if-eqz p1, :cond_26
invoke-static {p1, v0}, Landroid/support/v4/app/FragmentTransitionCompat21;->setEpicenter(Ljava/lang/Object;Landroid/view/View;)V
:cond_26
return-void
:cond_27
iget-object v2, p4, Landroid/support/v4/app/BackStackRecord;->mSharedElementSourceNames:Ljava/util/ArrayList;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
move-object v1, v2
goto :goto_18
.end method
.method private static setViewVisibility(Ljava/util/ArrayList;I)V
.registers 5
if-nez p0, :cond_3
:cond_2
return-void
:cond_3
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_9
if-ltz v0, :cond_2
invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/View;
invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V
add-int/lit8 v0, v0, -0x1
goto :goto_9
.end method
.method static startTransitions(Landroid/support/v4/app/FragmentManagerImpl;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V
.registers 18
iget v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mCurState:I
const/4 v11, 0x1
if-lt v10, v11, :cond_b
sget v10, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v11, 0x15
if-ge v10, v11, :cond_c
:cond_b
return-void
:cond_c
new-instance v9, Landroid/util/SparseArray;
invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V
move v3, p3
:goto_12
move/from16 v0, p4
if-ge v3, v0, :cond_36
invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Landroid/support/v4/app/BackStackRecord;
invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/Boolean;
invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
if-eqz v4, :cond_30
move/from16 v0, p5
invoke-static {v8, v9, v0}, Landroid/support/v4/app/FragmentTransition;->calculatePopFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
:goto_2d
add-int/lit8 v3, v3, 0x1
goto :goto_12
:cond_30
move/from16 v0, p5
invoke-static {v8, v9, v0}, Landroid/support/v4/app/FragmentTransition;->calculateFragments(Landroid/support/v4/app/BackStackRecord;Landroid/util/SparseArray;Z)V
goto :goto_2d
:cond_36
invoke-virtual {v9}, Landroid/util/SparseArray;->size()I
move-result v10
if-eqz v10, :cond_b
new-instance v6, Landroid/view/View;
iget-object v10, p0, Landroid/support/v4/app/FragmentManagerImpl;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v10}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;
move-result-object v10
invoke-direct {v6, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V
invoke-virtual {v9}, Landroid/util/SparseArray;->size()I
move-result v7
const/4 v3, 0x0
:goto_4c
if-ge v3, v7, :cond_b
invoke-virtual {v9, v3}, Landroid/util/SparseArray;->keyAt(I)I
move-result v1
move/from16 v0, p4
invoke-static {v1, p1, p2, p3, v0}, Landroid/support/v4/app/FragmentTransition;->calculateNameOverrides(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Landroid/support/v4/util/ArrayMap;
move-result-object v5
invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v4/app/FragmentTransition$FragmentContainerTransition;
if-eqz p5, :cond_66
invoke-static {p0, v1, v2, v6, v5}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsOptimized(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
:goto_63
add-int/lit8 v3, v3, 0x1
goto :goto_4c
:cond_66
invoke-static {p0, v1, v2, v6, v5}, Landroid/support/v4/app/FragmentTransition;->configureTransitionsUnoptimized(Landroid/support/v4/app/FragmentManagerImpl;ILandroid/support/v4/app/FragmentTransition$FragmentContainerTransition;Landroid/view/View;Landroid/support/v4/util/ArrayMap;)V
goto :goto_63
.end method