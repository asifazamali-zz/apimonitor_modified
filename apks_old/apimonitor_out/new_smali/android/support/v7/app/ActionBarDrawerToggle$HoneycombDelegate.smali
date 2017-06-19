.class  Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.field final mActivity:Landroid/app/Activity;
.field  mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.method constructor <init>(Landroid/app/Activity;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;
return-void
.end method
.method public getActionBarThemedContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;
return-object v0
.end method
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;
invoke-static {v0}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public isNavigationVisible()Z
.registers 3
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;
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
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;
invoke-static {v0, v1, p1}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->setActionBarDescription(Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;I)Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
return-void
.end method
.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
.registers 6
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;
invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_1a
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
iget-object v2, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mActivity:Landroid/app/Activity;
invoke-static {v1, v2, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb;->setActionBarUpIndicator(Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;->mSetIndicatorInfo:Landroid/support/v7/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V
:cond_1a
return-void
.end method