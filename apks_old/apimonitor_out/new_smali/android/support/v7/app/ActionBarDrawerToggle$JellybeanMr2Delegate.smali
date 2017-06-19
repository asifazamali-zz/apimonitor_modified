.class  Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.field final mActivity:Landroid/app/Activity;
.method constructor <init>(Landroid/app/Activity;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;
return-void
.end method
.method public getActionBarThemedContext()Landroid/content/Context;
.registers 4
iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;
move-result-object v1
:goto_c
return-object v1
:cond_d
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;
goto :goto_c
.end method
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.registers 8
const/4 v6, 0x0
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->getActionBarThemedContext()Landroid/content/Context;
move-result-object v2
const/4 v3, 0x0
const/4 v4, 0x1
new-array v4, v4, [I
const v5, 0x101030b
aput v5, v4, v6
const v5, 0x10102ce
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-object v1
.end method
.method public isNavigationVisible()Z
.registers 3
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_12
invoke-virtual {v0}, Landroid/app/ActionBar;->getDisplayOptions()I
move-result v1
and-int/lit8 v1, v1, 0x4
if-eqz v1, :cond_12
const/4 v1, 0x1
:goto_11
return v1
:cond_12
const/4 v1, 0x0
goto :goto_11
.end method
.method public setActionBarDescription(I)V
.registers 4
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V
:cond_b
return-void
.end method
.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
.registers 5
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;->mActivity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setHomeActionContentDescription(I)V
:cond_e
return-void
.end method