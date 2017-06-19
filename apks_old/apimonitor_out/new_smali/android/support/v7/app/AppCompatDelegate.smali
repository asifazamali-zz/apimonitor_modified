.class public abstract Landroid/support/v7/app/AppCompatDelegate;
.super Ljava/lang/Object;
.source "AppCompatDelegate.java"
.field public static final FEATURE_ACTION_MODE_OVERLAY:I = 0xa
.field public static final FEATURE_SUPPORT_ACTION_BAR:I = 0x6c
.field public static final FEATURE_SUPPORT_ACTION_BAR_OVERLAY:I = 0x6d
.field public static final MODE_NIGHT_AUTO:I = 0x0
.field public static final MODE_NIGHT_FOLLOW_SYSTEM:I = -0x1
.field public static final MODE_NIGHT_NO:I = 0x1
.field static final MODE_NIGHT_UNSPECIFIED:I = -0x64
.field public static final MODE_NIGHT_YES:I = 0x2
.field static final TAG:Ljava/lang/String; = "AppCompatDelegate"
.field private static sCompatVectorFromResourcesEnabled:Z
.field private static sDefaultNightMode:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, -0x1
sput v0, Landroid/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I
const/4 v0, 0x0
sput-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static create(Landroid/app/Activity;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
.registers 3
invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-static {p0, v0, p1}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
return-object v0
.end method
.method public static create(Landroid/app/Dialog;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
.registers 4
invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;
move-result-object v1
invoke-static {v0, v1, p1}, Landroid/support/v7/app/AppCompatDelegate;->create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
move-result-object v0
return-object v0
.end method
.method private static create(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)Landroid/support/v7/app/AppCompatDelegate;
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z
move-result v1
if-eqz v1, :cond_e
new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplN;
invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplN;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
:goto_d
return-object v1
:cond_e
const/16 v1, 0x17
if-lt v0, v1, :cond_18
new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV23;
invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
goto :goto_d
:cond_18
const/16 v1, 0xe
if-lt v0, v1, :cond_22
new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV14;
invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV14;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
goto :goto_d
:cond_22
const/16 v1, 0xb
if-lt v0, v1, :cond_2c
new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV11;
invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV11;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
goto :goto_d
:cond_2c
new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9;
invoke-direct {v1, p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
goto :goto_d
.end method
.method public static getDefaultNightMode()I
.registers 1
sget v0, Landroid/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I
return v0
.end method
.method public static isCompatVectorFromResourcesEnabled()Z
.registers 1
sget-boolean v0, Landroid/support/v7/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z
return v0
.end method
.method public static setCompatVectorFromResourcesEnabled(Z)V
.registers 1
sput-boolean p0, Landroid/support/v7/app/AppCompatDelegate;->sCompatVectorFromResourcesEnabled:Z
return-void
.end method
.method public static setDefaultNightMode(I)V
.registers 3
packed-switch p0, :pswitch_data_e
const-string v0, "AppCompatDelegate"
const-string v1, "setDefaultNightMode() called with an unknown mode"
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:goto_a
return-void
:pswitch_b
sput p0, Landroid/support/v7/app/AppCompatDelegate;->sDefaultNightMode:I
goto :goto_a
:pswitch_data_e
.packed-switch -0x1
:pswitch_b
:pswitch_b
:pswitch_b
:pswitch_b
.end packed-switch
.end method
.method public abstract addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method
.method public abstract applyDayNight()Z
.end method
.method public abstract createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.end method
.method public abstract findViewById(I)Landroid/view/View;
.parameter
.end parameter
.end method
.method public abstract getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.end method
.method public abstract getMenuInflater()Landroid/view/MenuInflater;
.end method
.method public abstract getSupportActionBar()Landroid/support/v7/app/ActionBar;
.end method
.method public abstract hasWindowFeature(I)Z
.end method
.method public abstract installViewFactory()V
.end method
.method public abstract invalidateOptionsMenu()V
.end method
.method public abstract isHandleNativeActionModesEnabled()Z
.end method
.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method
.method public abstract onCreate(Landroid/os/Bundle;)V
.end method
.method public abstract onDestroy()V
.end method
.method public abstract onPostCreate(Landroid/os/Bundle;)V
.end method
.method public abstract onPostResume()V
.end method
.method public abstract onSaveInstanceState(Landroid/os/Bundle;)V
.end method
.method public abstract onStart()V
.end method
.method public abstract onStop()V
.end method
.method public abstract requestWindowFeature(I)Z
.end method
.method public abstract setContentView(I)V
.parameter
.end parameter
.end method
.method public abstract setContentView(Landroid/view/View;)V
.end method
.method public abstract setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method
.method public abstract setHandleNativeActionModesEnabled(Z)V
.end method
.method public abstract setLocalNightMode(I)V
.end method
.method public abstract setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
.parameter
.end parameter
.end method
.method public abstract setTitle(Ljava/lang/CharSequence;)V
.parameter
.end parameter
.end method
.method public abstract startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.parameter
.end parameter
.end method