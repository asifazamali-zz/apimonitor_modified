.class  Landroid/support/v7/app/AppCompatDelegateImplV23;
.super Landroid/support/v7/app/AppCompatDelegateImplV14;
.source "AppCompatDelegateImplV23.java"
.field private final mUiModeManager:Landroid/app/UiModeManager;
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
const-string v0, "uimode"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/UiModeManager;
iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV23;->mUiModeManager:Landroid/app/UiModeManager;
return-void
.end method
.method  mapNightMode(I)I
.registers 3
if-nez p1, :cond_c
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV23;->mUiModeManager:Landroid/app/UiModeManager;
invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I
move-result v0
if-nez v0, :cond_c
const/4 v0, -0x1
:goto_b
return v0
:cond_c
invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV14;->mapNightMode(I)I
move-result v0
goto :goto_b
.end method
.method  wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
.registers 3
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;
invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV23$AppCompatWindowCallbackV23;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV23;Landroid/view/Window$Callback;)V
return-object v0
.end method