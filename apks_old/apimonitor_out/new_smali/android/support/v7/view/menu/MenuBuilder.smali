.class public Landroid/support/v7/view/menu/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"
.implements Landroid/support/v4/internal/view/SupportMenu;
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"
.field private static final EXPANDED_ACTION_VIEW_ID:Ljava/lang/String; = "android:menu:expandedactionview"
.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"
.field private static final TAG:Ljava/lang/String; = "MenuBuilder"
.field private static final sCategoryToOrder:[I
.field private mActionItems:Ljava/util/ArrayList;
.field private mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
.field private final mContext:Landroid/content/Context;
.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
.field private mDefaultShowAsAction:I
.field private mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
.field private mFrozenViewStates:Landroid/util/SparseArray;
.field  mHeaderIcon:Landroid/graphics/drawable/Drawable;
.field  mHeaderTitle:Ljava/lang/CharSequence;
.field  mHeaderView:Landroid/view/View;
.field private mIsActionItemsStale:Z
.field private mIsClosing:Z
.field private mIsVisibleItemsStale:Z
.field private mItems:Ljava/util/ArrayList;
.field private mItemsChangedWhileDispatchPrevented:Z
.field private mNonActionItems:Ljava/util/ArrayList;
.field private mOptionalIconsVisible:Z
.field private mOverrideVisibleItems:Z
.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
.field private mPreventDispatchingItemsChanged:Z
.field private mQwertyMode:Z
.field private final mResources:Landroid/content/res/Resources;
.field private mShortcutsVisible:Z
.field private mStructureChangedWhileDispatchPrevented:Z
.field private mTempShortcutItemList:Ljava/util/ArrayList;
.field private mVisibleItems:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x6
new-array v0, v0, [I
fill-array-data v0, :array_a
sput-object v0, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I
return-void
nop
:array_a
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x4t 0x0t 0x0t 0x0t
0x5t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z
invoke-direct {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V
return-void
.end method
.method private createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;
.registers 15
new-instance v0, Landroid/support/v7/view/menu/MenuItemImpl;
move-object v1, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
move-object v6, p5
move v7, p6
invoke-direct/range {v0 .. v7}, Landroid/support/v7/view/menu/MenuItemImpl;-><init>(Landroid/support/v7/view/menu/MenuBuilder;IIIILjava/lang/CharSequence;I)V
return-object v0
.end method
.method private dispatchPresenterUpdate(Z)V
.registers 6
iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v2
if-eqz v2, :cond_9
:goto_8
return-void
:cond_9
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_12
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_30
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/MenuPresenter;
if-nez v0, :cond_2c
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_12
:cond_2c
invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->updateMenuView(Z)V
goto :goto_12
:cond_30
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V
goto :goto_8
.end method
.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
.registers 9
const-string v5, "android:menu:presenters"
invoke-virtual {p1, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v3
if-eqz v3, :cond_10
iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v5
if-eqz v5, :cond_11
:cond_10
return-void
:cond_11
iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_17
:goto_17
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_10
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/ref/WeakReference;
invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/view/menu/MenuPresenter;
if-nez v2, :cond_31
iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_17
:cond_31
invoke-interface {v2}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I
move-result v0
if-lez v0, :cond_17
invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/Parcelable;
if-eqz v1, :cond_17
invoke-interface {v2, v1}, Landroid/support/v7/view/menu/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V
goto :goto_17
.end method
.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
.registers 9
iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v5
if-eqz v5, :cond_9
:goto_8
return-void
:cond_9
new-instance v2, Landroid/util/SparseArray;
invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V
iget-object v5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_14
:goto_14
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_3e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;
if-nez v1, :cond_2e
iget-object v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_14
:cond_2e
invoke-interface {v1}, Landroid/support/v7/view/menu/MenuPresenter;->getId()I
move-result v0
if-lez v0, :cond_14
invoke-interface {v1}, Landroid/support/v7/view/menu/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v4
if-eqz v4, :cond_14
invoke-virtual {v2, v0, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
goto :goto_14
:cond_3e
const-string v5, "android:menu:presenters"
invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
goto :goto_8
.end method
.method private dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z
.registers 8
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v3
if-eqz v3, :cond_a
const/4 v2, 0x0
:cond_9
return v2
:cond_a
const/4 v2, 0x0
if-eqz p2, :cond_11
invoke-interface {p2, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
move-result v2
:cond_11
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_17
:goto_17
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_9
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/MenuPresenter;
if-nez v0, :cond_31
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_17
:cond_31
if-nez v2, :cond_17
invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;)Z
move-result v2
goto :goto_17
.end method
.method private static findInsertIndex(Ljava/util/ArrayList;I)I
.registers 5
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_6
if-ltz v0, :cond_1a
invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getOrdering()I
move-result v2
if-gt v2, p1, :cond_17
add-int/lit8 v2, v0, 0x1
:goto_16
return v2
:cond_17
add-int/lit8 v0, v0, -0x1
goto :goto_6
:cond_1a
const/4 v2, 0x0
goto :goto_16
.end method
.method private static getOrdering(I)I
.registers 4
const/high16 v1, -0x1
and-int/2addr v1, p0
shr-int/lit8 v0, v1, 0x10
if-ltz v0, :cond_c
sget-object v1, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I
array-length v1, v1
if-lt v0, v1, :cond_14
:cond_c
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "order does not contain a valid category."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_14
sget-object v1, Landroid/support/v7/view/menu/MenuBuilder;->sCategoryToOrder:[I
aget v1, v1, v0
shl-int/lit8 v1, v1, 0x10
const v2, 0xffff
and-int/2addr v2, p0
or-int/2addr v1, v2
return v1
.end method
.method private removeItemAtInt(IZ)V
.registers 4
if-ltz p1, :cond_a
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt p1, v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
if-eqz p2, :cond_a
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
goto :goto_a
.end method
.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
.registers 9
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz p5, :cond_12
iput-object p5, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;
iput-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;
iput-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;
:goto_d
const/4 v1, 0x0
invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
return-void
:cond_12
if-lez p1, :cond_29
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;
:goto_1a
:cond_1a
if-lez p3, :cond_2e
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, p3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;
:goto_26
:cond_26
iput-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;
goto :goto_d
:cond_29
if-eqz p2, :cond_1a
iput-object p2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;
goto :goto_1a
:cond_2e
if-eqz p4, :cond_26
iput-object p4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;
goto :goto_26
.end method
.method private setShortcutsVisibleInner(Z)V
.registers 5
const/4 v0, 0x1
if-eqz p1, :cond_1a
iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;
invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v1, v1, Landroid/content/res/Configuration;->keyboard:I
if-eq v1, v0, :cond_1a
iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;
sget v2, Landroid/support/v7/appcompat/R$bool;->abc_config_showMenuShortcutsWhenKeyboardPresent:I
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v1
if-eqz v1, :cond_1a
:goto_17
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z
return-void
:cond_1a
const/4 v0, 0x0
goto :goto_17
.end method
.method public add(I)Landroid/view/MenuItem;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public add(IIII)Landroid/view/MenuItem;
.registers 6
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;
invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 6
invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
return-object v0
.end method
.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
.registers 22
iget-object v10, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v7
const/4 v10, 0x0
move-object/from16 v0, p4
move-object/from16 v1, p5
move-object/from16 v2, p6
invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
move-result-object v6
if-eqz v6, :cond_67
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v3
:goto_17
and-int/lit8 v10, p7, 0x1
if-nez v10, :cond_1e
invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->removeGroup(I)V
:cond_1e
const/4 v4, 0x0
:goto_1f
if-ge v4, v3, :cond_6e
invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Landroid/content/pm/ResolveInfo;
new-instance v9, Landroid/content/Intent;
iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I
if-gez v10, :cond_69
move-object/from16 v10, p6
invoke-static {v10}, Ldroidbox/android/content/Intent;->droidbox_cons(Landroid/content/Intent;)V
:goto_2f
invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
new-instance v10, Landroid/content/ComponentName;
iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
move-result-object v10
move/from16 v0, p3
invoke-virtual {p0, p1, p2, v0, v10}, Landroid/support/v7/view/menu/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v10
invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
move-result-object v11
invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;
move-result-object v10
invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
move-result-object v5
if-eqz p8, :cond_64
iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I
if-ltz v10, :cond_64
iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I
aput-object v5, p8, v10
:cond_64
add-int/lit8 v4, v4, 0x1
goto :goto_1f
:cond_67
const/4 v3, 0x0
goto :goto_17
:cond_69
iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I
aget-object v10, p5, v10
goto :goto_2f
:cond_6e
return v3
.end method
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
.registers 13
invoke-static {p3}, Landroid/support/v7/view/menu/MenuBuilder;->getOrdering(I)I
move-result v4
iget v6, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I
move-object v0, p0
move v1, p1
move v2, p2
move v3, p3
move-object v5, p4
invoke-direct/range {v0 .. v6}, Landroid/support/v7/view/menu/MenuBuilder;->createNewMenuItem(IIIILjava/lang/CharSequence;I)Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v7
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
invoke-virtual {v7, v0}, Landroid/support/v7/view/menu/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
:cond_18
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
iget-object v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-static {v1, v4}, Landroid/support/v7/view/menu/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I
move-result v1
invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
return-object v7
.end method
.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
return-void
.end method
.method public addMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;Landroid/content/Context;)V
.registers 5
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
invoke-interface {p1, p2, p0}, Landroid/support/v7/view/menu/MenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z
return-void
.end method
.method public addSubMenu(I)Landroid/view/SubMenu;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v1, v1, v1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public addSubMenu(IIII)Landroid/view/SubMenu;
.registers 6
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;
invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
.registers 8
invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;
new-instance v1, Landroid/support/v7/view/menu/SubMenuBuilder;
iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
invoke-direct {v1, v2, p0, v0}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V
invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
return-object v1
.end method
.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, v0, v0, v0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
return-object v0
.end method
.method public changeMenuMode()V
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
invoke-interface {v0, p0}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
:cond_9
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
:cond_9
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
return-void
.end method
.method public clearAll()V
.registers 3
const/4 v1, 0x1
const/4 v0, 0x0
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->clearHeader()V
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z
invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
return-void
.end method
.method public clearHeader()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;
iput-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
return-void
.end method
.method public close()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
return-void
.end method
.method public final close(Z)V
.registers 6
iget-boolean v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z
if-eqz v2, :cond_5
:goto_4
return-void
:cond_5
const/4 v2, 0x1
iput-boolean v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z
iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/MenuPresenter;
if-nez v0, :cond_28
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_e
:cond_28
invoke-interface {v0, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
goto :goto_e
:cond_2c
const/4 v2, 0x0
iput-boolean v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsClosing:Z
goto :goto_4
.end method
.method public collapseItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
.registers 7
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v3
if-nez v3, :cond_c
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
if-eq v3, p1, :cond_e
:cond_c
const/4 v0, 0x0
:cond_d
:goto_d
return v0
:cond_e
const/4 v0, 0x0
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_18
:goto_18
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_38
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;
if-nez v1, :cond_32
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_18
:cond_32
invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->collapseItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
move-result v0
if-eqz v0, :cond_18
:cond_38
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V
if-eqz v0, :cond_d
const/4 v3, 0x0
iput-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
goto :goto_d
.end method
.method  dispatchMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
.registers 4
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder$Callback;->onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public expandItemActionView(Landroid/support/v7/view/menu/MenuItemImpl;)Z
.registers 7
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z
move-result v3
if-eqz v3, :cond_a
const/4 v0, 0x0
:goto_9
:cond_9
return v0
:cond_a
const/4 v0, 0x0
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_14
:goto_14
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_34
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuPresenter;
if-nez v1, :cond_2e
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_14
:cond_2e
invoke-interface {v1, p0, p1}, Landroid/support/v7/view/menu/MenuPresenter;->expandItemActionView(Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)Z
move-result v0
if-eqz v0, :cond_14
:cond_34
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V
if-eqz v0, :cond_9
iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
goto :goto_9
.end method
.method public findGroupIndex(I)I
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(II)I
move-result v0
return v0
.end method
.method public findGroupIndex(II)I
.registers 7
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I
move-result v2
if-gez p2, :cond_7
const/4 p2, 0x0
:cond_7
move v0, p2
:goto_8
if-ge v0, v2, :cond_1c
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I
move-result v3
if-ne v3, p1, :cond_19
:goto_18
return v0
:cond_19
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1c
const/4 v0, -0x1
goto :goto_18
.end method
.method public findItem(I)Landroid/view/MenuItem;
.registers 7
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I
move-result v3
const/4 v0, 0x0
:goto_5
if-ge v0, v3, :cond_2b
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I
move-result v4
if-ne v4, p1, :cond_16
:goto_15
return-object v1
:cond_16
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z
move-result v4
if-eqz v4, :cond_28
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;
move-result-object v4
invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;
move-result-object v2
if-eqz v2, :cond_28
move-object v1, v2
goto :goto_15
:cond_28
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_2b
const/4 v1, 0x0
goto :goto_15
.end method
.method public findItemIndex(I)I
.registers 6
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I
move-result v2
const/4 v0, 0x0
:goto_5
if-ge v0, v2, :cond_19
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I
move-result v3
if-ne v3, p1, :cond_16
:goto_15
return v0
:cond_16
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_19
const/4 v0, -0x1
goto :goto_15
.end method
.method  findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;
.registers 15
const/4 v8, 0x0
const/4 v11, 0x0
iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
invoke-virtual {p0, v2, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v9
if-eqz v9, :cond_11
:cond_10
:goto_10
return-object v8
:cond_11
invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I
move-result v3
new-instance v4, Landroid/view/KeyCharacterMap$KeyData;
invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V
invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v7
const/4 v9, 0x1
if-ne v7, v9, :cond_2b
invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v8
check-cast v8, Landroid/support/v7/view/menu/MenuItemImpl;
goto :goto_10
:cond_2b
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z
move-result v5
const/4 v0, 0x0
:goto_30
if-ge v0, v7, :cond_10
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
if-eqz v5, :cond_5f
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C
move-result v6
:goto_3e
iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C
aget-char v9, v9, v11
if-ne v6, v9, :cond_48
and-int/lit8 v9, v3, 0x2
if-eqz v9, :cond_5d
:cond_48
iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C
const/4 v10, 0x2
aget-char v9, v9, v10
if-ne v6, v9, :cond_53
and-int/lit8 v9, v3, 0x2
if-nez v9, :cond_5d
:cond_53
if-eqz v5, :cond_64
const/16 v9, 0x8
if-ne v6, v9, :cond_64
const/16 v9, 0x43
if-ne p1, v9, :cond_64
:cond_5d
move-object v8, v1
goto :goto_10
:cond_5f
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C
move-result v6
goto :goto_3e
:cond_64
add-int/lit8 v0, v0, 0x1
goto :goto_30
.end method
.method  findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
.registers 15
const/16 v10, 0x43
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->isQwertyMode()Z
move-result v6
invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I
move-result v4
new-instance v5, Landroid/view/KeyCharacterMap$KeyData;
invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V
invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z
move-result v2
if-nez v2, :cond_18
if-eq p2, v10, :cond_18
:cond_17
return-void
:cond_18
iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v8}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x0
:goto_1f
if-ge v1, v0, :cond_17
iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z
move-result v8
if-eqz v8, :cond_38
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;
move-result-object v8
check-cast v8, Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v8, p1, p2, p3}, Landroid/support/v7/view/menu/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
:cond_38
if-eqz v6, :cond_66
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getAlphabeticShortcut()C
move-result v7
:goto_3e
and-int/lit8 v8, v4, 0x5
if-nez v8, :cond_63
if-eqz v7, :cond_63
iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C
const/4 v9, 0x0
aget-char v8, v8, v9
if-eq v7, v8, :cond_5a
iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C
const/4 v9, 0x2
aget-char v8, v8, v9
if-eq v7, v8, :cond_5a
if-eqz v6, :cond_63
const/16 v8, 0x8
if-ne v7, v8, :cond_63
if-ne p2, v10, :cond_63
:cond_5a
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z
move-result v8
if-eqz v8, :cond_63
invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_63
add-int/lit8 v1, v1, 0x1
goto :goto_1f
:cond_66
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getNumericShortcut()C
move-result v7
goto :goto_3e
.end method
.method public flagActionItems()V
.registers 10
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;
move-result-object v6
iget-boolean v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z
if-nez v7, :cond_9
:goto_8
return-void
:cond_9
const/4 v0, 0x0
iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_10
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_30
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/ref/WeakReference;
invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v7/view/menu/MenuPresenter;
if-nez v4, :cond_2a
iget-object v8, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v8, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_10
:cond_2a
invoke-interface {v4}, Landroid/support/v7/view/menu/MenuPresenter;->flagActionItems()Z
move-result v8
or-int/2addr v0, v8
goto :goto_10
:cond_30
if-eqz v0, :cond_5d
iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v1, 0x0
:goto_41
if-ge v1, v3, :cond_70
invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->isActionButton()Z
move-result v7
if-eqz v7, :cond_57
iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;
invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_54
add-int/lit8 v1, v1, 0x1
goto :goto_41
:cond_57
iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;
invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_54
:cond_5d
iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V
iget-object v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:cond_70
const/4 v7, 0x0
iput-boolean v7, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z
goto :goto_8
.end method
.method public getActionItems()Ljava/util/ArrayList;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mActionItems:Ljava/util/ArrayList;
return-object v0
.end method
.method protected getActionViewStatesKey()Ljava/lang/String;
.registers 2
const-string v0, "android:menu:actionviewstates"
return-object v0
.end method
.method public getContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mContext:Landroid/content/Context;
return-object v0
.end method
.method public getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mExpandedItem:Landroid/support/v7/view/menu/MenuItemImpl;
return-object v0
.end method
.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getHeaderTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getHeaderView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mHeaderView:Landroid/view/View;
return-object v0
.end method
.method public getItem(I)Landroid/view/MenuItem;
.registers 3
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/MenuItem;
return-object v0
.end method
.method public getNonActionItems()Ljava/util/ArrayList;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->flagActionItems()V
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;
return-object v0
.end method
.method  getOptionalIconsVisible()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z
return v0
.end method
.method  getResources()Landroid/content/res/Resources;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mResources:Landroid/content/res/Resources;
return-object v0
.end method
.method public getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
.registers 1
return-object p0
.end method
.method public getVisibleItems()Ljava/util/ArrayList;
.registers 5
iget-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z
if-nez v3, :cond_7
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;
:goto_6
return-object v3
:cond_7
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v2
const/4 v0, 0x0
:goto_13
if-ge v0, v2, :cond_2b
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z
move-result v3
if-eqz v3, :cond_28
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_28
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_2b
const/4 v3, 0x0
iput-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z
const/4 v3, 0x1
iput-boolean v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;
goto :goto_6
.end method
.method public hasVisibleItems()Z
.registers 6
const/4 v3, 0x1
iget-boolean v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z
if-eqz v4, :cond_6
:goto_5
:cond_5
return v3
:cond_6
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I
move-result v2
const/4 v0, 0x0
:goto_b
if-ge v0, v2, :cond_1e
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z
move-result v4
if-nez v4, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_1e
const/4 v3, 0x0
goto :goto_5
.end method
.method  isQwertyMode()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z
return v0
.end method
.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isShortcutsVisible()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z
return v0
.end method
.method  onItemActionRequestChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
return-void
.end method
.method  onItemVisibleChanged(Landroid/support/v7/view/menu/MenuItemImpl;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
return-void
.end method
.method public onItemsChanged(Z)V
.registers 4
const/4 v1, 0x1
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z
if-nez v0, :cond_f
if-eqz p1, :cond_b
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsVisibleItemsStale:Z
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mIsActionItemsStale:Z
:cond_b
invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchPresenterUpdate(Z)V
:cond_e
:goto_e
return-void
:cond_f
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z
if-eqz p1, :cond_e
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z
goto :goto_e
.end method
.method public performIdentifierAction(II)Z
.registers 4
invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-virtual {p0, v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z
move-result v0
return v0
.end method
.method public performItemAction(Landroid/view/MenuItem;I)Z
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z
move-result v0
return v0
.end method
.method public performItemAction(Landroid/view/MenuItem;Landroid/support/v7/view/menu/MenuPresenter;I)Z
.registers 12
const/4 v6, 0x0
const/4 v5, 0x1
move-object v1, p1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
if-eqz v1, :cond_d
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z
move-result v7
if-nez v7, :cond_f
:cond_d
move v0, v6
:goto_e
:cond_e
return v0
:cond_f
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->invoke()Z
move-result v0
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;
move-result-object v2
if-eqz v2, :cond_31
invoke-virtual {v2}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z
move-result v7
if-eqz v7, :cond_31
move v3, v5
:goto_20
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z
move-result v7
if-eqz v7, :cond_33
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->expandActionView()Z
move-result v6
or-int/2addr v0, v6
if-eqz v0, :cond_e
invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
goto :goto_e
:cond_31
move v3, v6
goto :goto_20
:cond_33
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z
move-result v7
if-nez v7, :cond_3b
if-eqz v3, :cond_6a
:cond_3b
and-int/lit8 v7, p3, 0x4
if-nez v7, :cond_42
invoke-virtual {p0, v6}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
:cond_42
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z
move-result v6
if-nez v6, :cond_54
new-instance v6, Landroid/support/v7/view/menu/SubMenuBuilder;
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getContext()Landroid/content/Context;
move-result-object v7
invoke-direct {v6, v7, p0, v1}, Landroid/support/v7/view/menu/SubMenuBuilder;-><init>(Landroid/content/Context;Landroid/support/v7/view/menu/MenuBuilder;Landroid/support/v7/view/menu/MenuItemImpl;)V
invoke-virtual {v1, v6}, Landroid/support/v7/view/menu/MenuItemImpl;->setSubMenu(Landroid/support/v7/view/menu/SubMenuBuilder;)V
:cond_54
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;
move-result-object v4
check-cast v4, Landroid/support/v7/view/menu/SubMenuBuilder;
if-eqz v3, :cond_5f
invoke-virtual {v2, v4}, Landroid/support/v4/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V
:cond_5f
invoke-direct {p0, v4, p2}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSubMenuSelected(Landroid/support/v7/view/menu/SubMenuBuilder;Landroid/support/v7/view/menu/MenuPresenter;)Z
move-result v6
or-int/2addr v0, v6
if-nez v0, :cond_e
invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
goto :goto_e
:cond_6a
and-int/lit8 v6, p3, 0x1
if-nez v6, :cond_e
invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
goto :goto_e
.end method
.method public performShortcut(ILandroid/view/KeyEvent;I)Z
.registers 7
invoke-virtual {p0, p1, p2}, Landroid/support/v7/view/menu/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Landroid/support/v7/view/menu/MenuItemImpl;
move-result-object v1
const/4 v0, 0x0
if-eqz v1, :cond_b
invoke-virtual {p0, v1, p3}, Landroid/support/v7/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z
move-result v0
:cond_b
and-int/lit8 v2, p3, 0x2
if-eqz v2, :cond_13
const/4 v2, 0x1
invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
:cond_13
return v0
.end method
.method public removeGroup(I)V
.registers 7
invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findGroupIndex(I)I
move-result v0
if-ltz v0, :cond_2c
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
sub-int v1, v4, v0
const/4 v2, 0x0
move v3, v2
:goto_10
add-int/lit8 v2, v3, 0x1
if-ge v3, v1, :cond_28
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I
move-result v4
if-ne v4, p1, :cond_28
const/4 v4, 0x0
invoke-direct {p0, v0, v4}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V
move v3, v2
goto :goto_10
:cond_28
const/4 v4, 0x1
invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
:cond_2c
return-void
.end method
.method public removeItem(I)V
.registers 4
invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->findItemIndex(I)I
move-result v0
const/4 v1, 0x1
invoke-direct {p0, v0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V
return-void
.end method
.method public removeItemAt(I)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/MenuBuilder;->removeItemAtInt(IZ)V
return-void
.end method
.method public removeMenuPresenter(Landroid/support/v7/view/menu/MenuPresenter;)V
.registers 6
iget-object v2, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_6
:cond_6
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_22
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/view/menu/MenuPresenter;
if-eqz v0, :cond_1c
if-ne v0, p1, :cond_6
:cond_1c
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
goto :goto_6
:cond_22
return-void
.end method
.method public restoreActionViewStates(Landroid/os/Bundle;)V
.registers 12
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;
move-result-object v8
invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;
move-result-object v7
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I
move-result v3
const/4 v1, 0x0
:goto_10
if-ge v1, v3, :cond_38
invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;
move-result-object v2
invoke-static {v2}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;
move-result-object v6
if-eqz v6, :cond_26
invoke-virtual {v6}, Landroid/view/View;->getId()I
move-result v8
const/4 v9, -0x1
if-eq v8, v9, :cond_26
invoke-virtual {v6, v7}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V
:cond_26
invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z
move-result v8
if-eqz v8, :cond_35
invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;
move-result-object v5
check-cast v5, Landroid/support/v7/view/menu/SubMenuBuilder;
invoke-virtual {v5, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V
:cond_35
add-int/lit8 v1, v1, 0x1
goto :goto_10
:cond_38
const-string v8, "android:menu:expandedactionview"
invoke-virtual {p1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_2
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;
move-result-object v4
if-eqz v4, :cond_2
invoke-static {v4}, Landroid/support/v4/view/MenuItemCompat;->expandActionView(Landroid/view/MenuItem;)Z
goto :goto_2
.end method
.method public restorePresenterStates(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V
return-void
.end method
.method public saveActionViewStates(Landroid/os/Bundle;)V
.registers 10
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->size()I
move-result v2
const/4 v0, 0x0
:goto_6
if-ge v0, v2, :cond_44
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->getActionView(Landroid/view/MenuItem;)Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_32
invoke-virtual {v4}, Landroid/view/View;->getId()I
move-result v6
const/4 v7, -0x1
if-eq v6, v7, :cond_32
if-nez v5, :cond_20
new-instance v5, Landroid/util/SparseArray;
invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V
:cond_20
invoke-virtual {v4, v5}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V
invoke-static {v1}, Landroid/support/v4/view/MenuItemCompat;->isActionViewExpanded(Landroid/view/MenuItem;)Z
move-result v6
if-eqz v6, :cond_32
const-string v6, "android:menu:expandedactionview"
invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I
move-result v7
invoke-virtual {p1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_32
invoke-interface {v1}, Landroid/view/MenuItem;->hasSubMenu()Z
move-result v6
if-eqz v6, :cond_41
invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;
move-result-object v3
check-cast v3, Landroid/support/v7/view/menu/SubMenuBuilder;
invoke-virtual {v3, p1}, Landroid/support/v7/view/menu/SubMenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V
:cond_41
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_44
if-eqz v5, :cond_4d
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V
:cond_4d
return-void
.end method
.method public savePresenterStates(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V
return-void
.end method
.method public setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCallback:Landroid/support/v7/view/menu/MenuBuilder$Callback;
return-void
.end method
.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;
return-void
.end method
.method public setDefaultShowAsAction(I)Landroid/support/v7/view/menu/MenuBuilder;
.registers 2
iput p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mDefaultShowAsAction:I
return-object p0
.end method
.method  setExclusiveItemChecked(Landroid/view/MenuItem;)V
.registers 7
invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I
move-result v2
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
const/4 v3, 0x0
:goto_e
if-ge v3, v0, :cond_36
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I
move-result v4
if-ne v4, v2, :cond_24
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isExclusiveCheckable()Z
move-result v4
if-nez v4, :cond_27
:goto_24
:cond_24
add-int/lit8 v3, v3, 0x1
goto :goto_e
:cond_27
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuItemImpl;->isCheckable()Z
move-result v4
if-eqz v4, :cond_24
if-ne v1, p1, :cond_34
const/4 v4, 0x1
:goto_30
invoke-virtual {v1, v4}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckedInt(Z)V
goto :goto_24
:cond_34
const/4 v4, 0x0
goto :goto_30
:cond_36
invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V
return-void
.end method
.method public setGroupCheckable(IZZ)V
.registers 8
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x0
:goto_7
if-ge v1, v0, :cond_20
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I
move-result v3
if-ne v3, p1, :cond_1d
invoke-virtual {v2, p3}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V
invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;
:cond_1d
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_20
return-void
.end method
.method public setGroupEnabled(IZ)V
.registers 7
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x0
:goto_7
if-ge v1, v0, :cond_1d
iget-object v3, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I
move-result v3
if-ne v3, p1, :cond_1a
invoke-virtual {v2, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;
:cond_1a
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_1d
return-void
.end method
.method public setGroupVisible(IZ)V
.registers 8
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x0
const/4 v2, 0x0
:goto_8
if-ge v2, v0, :cond_22
iget-object v4, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I
move-result v4
if-ne v4, p1, :cond_1f
invoke-virtual {v3, p2}, Landroid/support/v7/view/menu/MenuItemImpl;->setVisibleInt(Z)Z
move-result v4
if-eqz v4, :cond_1f
const/4 v1, 0x1
:cond_1f
add-int/lit8 v2, v2, 0x1
goto :goto_8
:cond_22
if-eqz v1, :cond_28
const/4 v4, 0x1
invoke-virtual {p0, v4}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
:cond_28
return-void
.end method
.method protected setHeaderIconInt(I)Landroid/support/v7/view/menu/MenuBuilder;
.registers 8
const/4 v2, 0x0
const/4 v1, 0x0
move-object v0, p0
move v3, p1
move-object v4, v2
move-object v5, v2
invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
return-object p0
.end method
.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/view/menu/MenuBuilder;
.registers 8
const/4 v2, 0x0
const/4 v1, 0x0
move-object v0, p0
move v3, v1
move-object v4, p1
move-object v5, v2
invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
return-object p0
.end method
.method protected setHeaderTitleInt(I)Landroid/support/v7/view/menu/MenuBuilder;
.registers 8
const/4 v2, 0x0
const/4 v3, 0x0
move-object v0, p0
move v1, p1
move-object v4, v2
move-object v5, v2
invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
return-object p0
.end method
.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Landroid/support/v7/view/menu/MenuBuilder;
.registers 8
const/4 v4, 0x0
const/4 v1, 0x0
move-object v0, p0
move-object v2, p1
move v3, v1
move-object v5, v4
invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
return-object p0
.end method
.method protected setHeaderViewInt(Landroid/view/View;)Landroid/support/v7/view/menu/MenuBuilder;
.registers 8
const/4 v2, 0x0
const/4 v1, 0x0
move-object v0, p0
move v3, v1
move-object v4, v2
move-object v5, p1
invoke-direct/range {v0 .. v5}, Landroid/support/v7/view/menu/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
return-object p0
.end method
.method public setOptionalIconsVisible(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOptionalIconsVisible:Z
return-void
.end method
.method public setOverrideVisibleItems(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mOverrideVisibleItems:Z
return-void
.end method
.method public setQwertyMode(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mQwertyMode:Z
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
return-void
.end method
.method public setShortcutsVisible(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mShortcutsVisible:Z
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;->setShortcutsVisibleInner(Z)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
goto :goto_4
.end method
.method public size()I
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItems:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public startDispatchingItemsChanged()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z
if-eqz v0, :cond_e
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/MenuBuilder;->onItemsChanged(Z)V
:cond_e
return-void
.end method
.method public stopDispatchingItemsChanged()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z
if-nez v0, :cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/view/menu/MenuBuilder;->mPreventDispatchingItemsChanged:Z
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z
iput-boolean v1, p0, Landroid/support/v7/view/menu/MenuBuilder;->mStructureChangedWhileDispatchPrevented:Z
:cond_c
return-void
.end method