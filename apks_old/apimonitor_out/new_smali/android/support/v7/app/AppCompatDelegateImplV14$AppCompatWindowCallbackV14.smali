.class  Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;
.super Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;
.source "AppCompatDelegateImplV14.java"
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV14;Landroid/view/Window$Callback;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;
invoke-direct {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;-><init>(Landroid/support/v7/app/AppCompatDelegateImplBase;Landroid/view/Window$Callback;)V
return-void
.end method
.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.registers 3
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->isHandleNativeActionModesEnabled()Z
move-result v0
if-eqz v0, :cond_d
invoke-virtual {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplBase$AppCompatWindowCallbackBase;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
move-result-object v0
goto :goto_c
.end method
.method final startAsSupportActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
.registers 5
new-instance v0, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;
iget-object v2, v2, Landroid/support/v7/app/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;
invoke-direct {v0, v2, p1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AppCompatWindowCallbackV14;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV14;
invoke-virtual {v2, v0}, Landroid/support/v7/app/AppCompatDelegateImplV14;->startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
move-result-object v1
if-eqz v1, :cond_16
invoke-virtual {v0, v1}, Landroid/support/v7/view/SupportActionModeWrapper$CallbackWrapper;->getActionModeWrapper(Landroid/support/v7/view/ActionMode;)Landroid/view/ActionMode;
move-result-object v2
:goto_15
return-object v2
:cond_16
const/4 v2, 0x0
goto :goto_15
.end method