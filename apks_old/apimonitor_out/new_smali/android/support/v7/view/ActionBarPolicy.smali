.class public Landroid/support/v7/view/ActionBarPolicy;
.super Ljava/lang/Object;
.source "ActionBarPolicy.java"
.field private mContext:Landroid/content/Context;
.method private constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;
return-void
.end method
.method public static get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;
.registers 2
new-instance v0, Landroid/support/v7/view/ActionBarPolicy;
invoke-direct {v0, p0}, Landroid/support/v7/view/ActionBarPolicy;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method public enableHomeButtonByDefault()Z
.registers 3
iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
const/16 v1, 0xe
if-ge v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getEmbeddedMenuWidthLimit()I
.registers 2
iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I
div-int/lit8 v0, v0, 0x2
return v0
.end method
.method public getMaxActionButtons()I
.registers 11
const/16 v9, 0x3c0
const/16 v8, 0x2d0
const/16 v7, 0x280
const/16 v6, 0x258
const/16 v5, 0x1e0
iget-object v4, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenWidthDp(Landroid/content/res/Resources;)I
move-result v3
invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I
move-result v0
invoke-static {v1}, Landroid/support/v4/content/res/ConfigurationHelper;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
move-result v2
if-gt v2, v6, :cond_28
if-gt v3, v6, :cond_28
if-le v3, v9, :cond_24
if-gt v0, v8, :cond_28
:cond_24
if-le v3, v8, :cond_2a
if-le v0, v9, :cond_2a
:cond_28
const/4 v4, 0x5
:goto_29
return v4
:cond_2a
const/16 v4, 0x1f4
if-ge v3, v4, :cond_36
if-le v3, v7, :cond_32
if-gt v0, v5, :cond_36
:cond_32
if-le v3, v5, :cond_38
if-le v0, v7, :cond_38
:cond_36
const/4 v4, 0x4
goto :goto_29
:cond_38
const/16 v4, 0x168
if-lt v3, v4, :cond_3e
const/4 v4, 0x3
goto :goto_29
:cond_3e
const/4 v4, 0x2
goto :goto_29
.end method
.method public getStackedTabMaxWidth()I
.registers 3
iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_tab_max_width:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
return v0
.end method
.method public getTabContainerHeight()I
.registers 9
const/4 v7, 0x0
iget-object v3, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;
const/4 v4, 0x0
sget-object v5, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I
sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I
invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_height:I
invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I
move-result v1
iget-object v3, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {p0}, Landroid/support/v7/view/ActionBarPolicy;->hasEmbeddedTabs()Z
move-result v3
if-nez v3, :cond_28
sget v3, Landroid/support/v7/appcompat/R$dimen;->abc_action_bar_stacked_max_height:I
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I
move-result v1
:cond_28
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return v1
.end method
.method public hasEmbeddedTabs()Z
.registers 3
iget-object v0, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Landroid/support/v7/appcompat/R$bool;->abc_action_bar_embed_tabs:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v0
return v0
.end method
.method public showsOverflowMenuButton()Z
.registers 4
const/4 v0, 0x1
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x13
if-lt v1, v2, :cond_8
:cond_7
:goto_7
return v0
:cond_8
iget-object v1, p0, Landroid/support/v7/view/ActionBarPolicy;->mContext:Landroid/content/Context;
invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v1
invoke-static {v1}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
move-result v1
if-eqz v1, :cond_7
const/4 v0, 0x0
goto :goto_7
.end method