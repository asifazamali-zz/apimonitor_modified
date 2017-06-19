.class public Landroid/support/v4/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"
.field private final mHost:Landroid/support/v4/app/FragmentHostCallback;
.method private constructor <init>(Landroid/support/v4/app/FragmentHostCallback;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
return-void
.end method
.method public static final createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;
.registers 2
new-instance v0, Landroid/support/v4/app/FragmentController;
invoke-direct {v0, p0}, Landroid/support/v4/app/FragmentController;-><init>(Landroid/support/v4/app/FragmentHostCallback;)V
return-object v0
.end method
.method public attachHost(Landroid/support/v4/app/Fragment;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v1, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v2, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/FragmentManagerImpl;->attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V
return-void
.end method
.method public dispatchActivityCreated()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V
return-void
.end method
.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
return-void
.end method
.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public dispatchCreate()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V
return-void
.end method
.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
move-result v0
return v0
.end method
.method public dispatchDestroy()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V
return-void
.end method
.method public dispatchDestroyView()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V
return-void
.end method
.method public dispatchLowMemory()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V
return-void
.end method
.method public dispatchMultiWindowModeChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V
return-void
.end method
.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
return v0
.end method
.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V
return-void
.end method
.method public dispatchPause()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V
return-void
.end method
.method public dispatchPictureInPictureModeChanged(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V
return-void
.end method
.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
move-result v0
return v0
.end method
.method public dispatchReallyStop()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V
return-void
.end method
.method public dispatchResume()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V
return-void
.end method
.method public dispatchStart()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V
return-void
.end method
.method public dispatchStop()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V
return-void
.end method
.method public doLoaderDestroy()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->doLoaderDestroy()V
return-void
.end method
.method public doLoaderRetain()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->doLoaderRetain()V
return-void
.end method
.method public doLoaderStart()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->doLoaderStart()V
return-void
.end method
.method public doLoaderStop(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->doLoaderStop(Z)V
return-void
.end method
.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentHostCallback;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
return-void
.end method
.method public execPendingActions()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z
move-result v0
return v0
.end method
.method public findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
return-object v0
.end method
.method public getActiveFragments(Ljava/util/List;)Ljava/util/List;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
if-nez p1, :cond_15
new-instance p1, Ljava/util/ArrayList;
invoke-virtual {p0}, Landroid/support/v4/app/FragmentController;->getActiveFragmentsCount()I
move-result v0
invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V
:cond_15
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v0, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
move-object v0, p1
goto :goto_9
.end method
.method public getActiveFragmentsCount()I
.registers 3
iget-object v1, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v0, v1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;
if-nez v0, :cond_a
const/4 v1, 0x0
:goto_9
return v1
:cond_a
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
goto :goto_9
.end method
.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getFragmentManagerImpl()Landroid/support/v4/app/FragmentManagerImpl;
move-result-object v0
return-object v0
.end method
.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManagerImpl()Landroid/support/v4/app/LoaderManagerImpl;
move-result-object v0
return-object v0
.end method
.method public noteStateNotSaved()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V
return-void
.end method
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 6
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public reportLoaderStart()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->reportLoaderStart()V
return-void
.end method
.method public restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
return-void
.end method
.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
new-instance v1, Landroid/support/v4/app/FragmentManagerNonConfig;
const/4 v2, 0x0
invoke-direct {v1, p2, v2}, Landroid/support/v4/app/FragmentManagerNonConfig;-><init>(Ljava/util/List;Ljava/util/List;)V
invoke-virtual {v0, p1, v1}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroid/support/v4/app/FragmentManagerNonConfig;)V
return-void
.end method
.method public restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V
return-void
.end method
.method public retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;
move-result-object v0
return-object v0
.end method
.method public retainNestedNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
move-result-object v0
return-object v0
.end method
.method public retainNonConfig()Ljava/util/List;
.registers 3
iget-object v1, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v1, v1, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->retainNonConfig()Landroid/support/v4/app/FragmentManagerNonConfig;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/List;
move-result-object v1
:goto_e
return-object v1
:cond_f
const/4 v1, 0x0
goto :goto_e
.end method
.method public saveAllState()Landroid/os/Parcelable;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentController;->mHost:Landroid/support/v4/app/FragmentHostCallback;
iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;
move-result-object v0
return-object v0
.end method