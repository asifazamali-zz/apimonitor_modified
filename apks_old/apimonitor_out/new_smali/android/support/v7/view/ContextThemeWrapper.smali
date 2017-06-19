.class public Landroid/support/v7/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"
.field private mInflater:Landroid/view/LayoutInflater;
.field private mTheme:Landroid/content/res/Resources$Theme;
.field private mThemeResource:I
.method public constructor <init>(Landroid/content/Context;I)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V
iput p2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
.registers 3
invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V
iput-object p2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;
return-void
.end method
.method private initializeTheme()V
.registers 5
iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;
if-nez v2, :cond_28
const/4 v0, 0x1
:goto_5
if-eqz v0, :cond_20
invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;
move-result-object v2
iput-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;
invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v1
if-eqz v1, :cond_20
iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;
invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
:cond_20
iget-object v2, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;
iget v3, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I
invoke-virtual {p0, v2, v3, v0}, Landroid/support/v7/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
return-void
:cond_28
const/4 v0, 0x0
goto :goto_5
.end method
.method public getAssets()Landroid/content/res/AssetManager;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
return-object v0
.end method
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
const-string v0, "layout_inflater"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;
if-nez v0, :cond_1a
invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;
:cond_1a
iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;
:goto_1c
return-object v0
:cond_1d
invoke-virtual {p0}, Landroid/support/v7/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
goto :goto_1c
.end method
.method public getTheme()Landroid/content/res/Resources$Theme;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;
if-eqz v0, :cond_7
iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;
:goto_6
return-object v0
:cond_7
iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I
if-nez v0, :cond_f
sget v0, Landroid/support/v7/appcompat/R$style;->Theme_AppCompat_Light:I
iput v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I
:cond_f
invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V
iget-object v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;
goto :goto_6
.end method
.method public getThemeResId()I
.registers 2
iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I
return v0
.end method
.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
.registers 5
const/4 v0, 0x1
invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
return-void
.end method
.method public setTheme(I)V
.registers 3
iget v0, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I
if-eq v0, p1, :cond_9
iput p1, p0, Landroid/support/v7/view/ContextThemeWrapper;->mThemeResource:I
invoke-direct {p0}, Landroid/support/v7/view/ContextThemeWrapper;->initializeTheme()V
:cond_9
return-void
.end method