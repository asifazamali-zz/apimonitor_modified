.class  Landroid/support/v7/app/AppCompatDelegateImplV14;
.super Landroid/support/v7/app/AppCompatDelegateImplV11;
.source "AppCompatDelegateImplV14.java"
.field private static final KEY_LOCAL_NIGHT_MODE:Ljava/lang/String; = "appcompat:local_night_mode"
.field private mApplyDayNightCalled:Z
.field private mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
.field private mHandleNativeActionModes:Z
.field private mLocalNightMode:I
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
const/16 v0, -0x64
iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z
return-void
.end method
.method private ensureAutoNightModeManager()V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
if-nez v0, :cond_11
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;
invoke-static {v1}, Landroid/support/v7/app/TwilightManager;->getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;
move-result-object v1
invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/support/v7/app/TwilightManager;)V
iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
:cond_11
return-void
.end method
.method private getNightMode()I
.registers 3
iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I
const/16 v1, -0x64
if-eq v0, v1, :cond_9
iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I
:goto_8
return v0
:cond_9
invoke-static {}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getDefaultNightMode()I
move-result v0
goto :goto_8
.end method
.method private shouldRecreateOnNightModeChange()Z
.registers 9
const/4 v3, 0x1
const/4 v4, 0x0
iget-boolean v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z
if-eqz v5, :cond_36
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;
instance-of v5, v5, Landroid/app/Activity;
if-eqz v5, :cond_36
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
:try_start_12
new-instance v5, Landroid/content/ComponentName;
iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;
iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;
invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v7
invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/4 v6, 0x0
invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
move-result-object v1
iget v5, v1, Landroid/content/pm/ActivityInfo;->configChanges:I
:try_end_26
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12 .. :try_end_26} :catch_2d
and-int/lit16 v5, v5, 0x200
if-nez v5, :cond_2b
:goto_2a
return v3
:cond_2b
move v3, v4
goto :goto_2a
:catch_2d
move-exception v0
const-string v4, "AppCompatDelegate"
const-string v5, "Exception while getting ActivityInfo"
invoke-static {v4, v5, v0}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2a
:cond_36
move v3, v4
goto :goto_2a
.end method
.method private updateForNightMode(I)Z
.registers 10
iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;
invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v1
iget v7, v1, Landroid/content/res/Configuration;->uiMode:I
and-int/lit8 v3, v7, 0x30
const/4 v7, 0x2
if-ne p1, v7, :cond_24
const/16 v5, 0x20
:goto_13
if-eq v3, v5, :cond_3e
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->shouldRecreateOnNightModeChange()Z
move-result v7
if-eqz v7, :cond_27
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->recreate()V
:goto_22
const/4 v7, 0x1
:goto_23
return v7
:cond_24
const/16 v5, 0x10
goto :goto_13
:cond_27
new-instance v2, Landroid/content/res/Configuration;
invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V
invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
iget v7, v2, Landroid/content/res/Configuration;->uiMode:I
and-int/lit8 v7, v7, -0x31
or-int/2addr v7, v5
iput v7, v2, Landroid/content/res/Configuration;->uiMode:I
invoke-virtual {v6, v2, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
invoke-static {v6}, Landroid/support/v7/app/ResourcesFlusher;->flush(Landroid/content/res/Resources;)Z
goto :goto_22
:cond_3e
const/4 v7, 0x0
goto :goto_23
.end method
.method public applyDayNight()Z
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->getNightMode()I
move-result v2
invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightMode(I)I
move-result v1
const/4 v3, -0x1
if-eq v1, v3, :cond_10
invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->updateForNightMode(I)Z
move-result v0
:cond_10
if-nez v2, :cond_1a
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
invoke-virtual {v3}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->setup()V
:cond_1a
const/4 v3, 0x1
iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z
return v0
.end method
.method final getAutoNightModeManager()Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
.registers 2
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
return-object v0
.end method
.method public isHandleNativeActionModesEnabled()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z
return v0
.end method
.method  mapNightMode(I)I
.registers 3
sparse-switch p1, :sswitch_data_10
:goto_3
return p1
:sswitch_4
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->ensureAutoNightModeManager()V
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->getApplyableNightMode()I
move-result p1
goto :goto_3
:sswitch_e
const/4 p1, -0x1
goto :goto_3
:sswitch_data_10
.sparse-switch
-0x64 -> :sswitch_e
0x0 -> :sswitch_4
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const/16 v1, -0x64
invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_13
iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I
if-ne v0, v1, :cond_13
const-string v0, "appcompat:local_night_mode"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I
:cond_13
return-void
.end method
.method public onDestroy()V
.registers 2
invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onDestroy()V
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V
:cond_c
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onSaveInstanceState(Landroid/os/Bundle;)V
iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I
const/16 v1, -0x64
if-eq v0, v1, :cond_10
const-string v0, "appcompat:local_night_mode"
iget v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_10
return-void
.end method
.method public onStart()V
.registers 1
invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStart()V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z
return-void
.end method
.method public onStop()V
.registers 2
invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplV11;->onStop()V
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mAutoNightModeManager:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->cleanup()V
:cond_c
return-void
.end method
.method public setHandleNativeActionModesEnabled(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mHandleNativeActionModes:Z
return-void
.end method
.method public setLocalNightMode(I)V
.registers 4
packed-switch p1, :pswitch_data_1a
const-string v0, "AppCompatDelegate"
const-string v1, "setLocalNightMode() called with an unknown mode"
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_a
:goto_a
return-void
:pswitch_b
iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I
if-eq v0, p1, :cond_a
iput p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mLocalNightMode:I
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14;->mApplyDayNightCalled:Z
if-eqz v0, :cond_a
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->applyDayNight()Z
goto :goto_a
nop
:pswitch_data_1a
.packed-switch -0x1
:pswitch_b
:pswitch_b
:pswitch_b
:pswitch_b
.end packed-switch
.end method
.method  wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
.registers 3
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V
return-object v0
.end method