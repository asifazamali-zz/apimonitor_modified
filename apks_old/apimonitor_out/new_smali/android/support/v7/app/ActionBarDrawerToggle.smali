.class public Landroid/support/v7/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;
.field private final mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.field private final mCloseDrawerContentDescRes:I
.field  mDrawerIndicatorEnabled:Z
.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
.field private mDrawerSlideAnimationEnabled:Z
.field private mHasCustomUpIndicator:Z
.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
.field private final mOpenDrawerContentDescRes:I
.field private mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
.field  mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;
.field private mWarnedForDisplayHomeAsUp:Z
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
.registers 12
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, p2
move-object v4, v2
move v5, p3
move v6, p4
invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V
return-void
.end method
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
.registers 13
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p3
move-object v3, p2
move v5, p4
move v6, p5
invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V
return-void
.end method
.method constructor <init>(Landroid/app/Activity;Landroid/support/v7/widget/Toolbar;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;II)V
.registers 9
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z
if-eqz p2, :cond_38
new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
invoke-direct {v0, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Landroid/support/v7/widget/Toolbar;)V
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$1;
invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarDrawerToggle$1;-><init>(Landroid/support/v7/app/ActionBarDrawerToggle;)V
invoke-virtual {p2, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_1c
iput-object p3, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
iput p5, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I
iput p6, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I
if-nez p4, :cond_77
new-instance v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
invoke-interface {v1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
:goto_31
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
return-void
:cond_38
instance-of v0, p1, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;
if-eqz v0, :cond_45
check-cast p1, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;
invoke-interface {p1}, Landroid/support/v7/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
goto :goto_1c
:cond_45
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x12
if-lt v0, v1, :cond_53
new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;
invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
goto :goto_1c
:cond_53
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_61
new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;
invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$IcsDelegate;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
goto :goto_1c
:cond_61
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_6f
new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;
invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$HoneycombDelegate;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
goto :goto_1c
:cond_6f
new-instance v0, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;
invoke-direct {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;-><init>(Landroid/app/Activity;)V
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
goto :goto_1c
:cond_77
iput-object p4, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
goto :goto_31
.end method
.method private setPosition(F)V
.registers 4
const/high16 v0, 0x3f80
cmpl-float v0, p1, v0
if-nez v0, :cond_12
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V
:cond_c
:goto_c
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
invoke-virtual {v0, p1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setProgress(F)V
return-void
:cond_12
const/4 v0, 0x0
cmpl-float v0, p1, v0
if-nez v0, :cond_c
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setVerticalMirror(Z)V
goto :goto_c
.end method
.method public getDrawerArrowDrawable()Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
return-object v0
.end method
.method  getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;
return-object v0
.end method
.method public isDrawerIndicatorEnabled()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
return v0
.end method
.method public isDrawerSlideAnimationEnabled()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z
return v0
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z
if-nez v0, :cond_a
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
:cond_a
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V
return-void
.end method
.method public onDrawerClosed(Landroid/view/View;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eqz v0, :cond_d
iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V
:cond_d
return-void
.end method
.method public onDrawerOpened(Landroid/view/View;)V
.registers 3
const/high16 v0, 0x3f80
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eqz v0, :cond_e
iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarDescription(I)V
:cond_e
return-void
.end method
.method public onDrawerSlide(Landroid/view/View;F)V
.registers 5
const/4 v1, 0x0
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z
if-eqz v0, :cond_13
const/high16 v0, 0x3f80
invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V
:goto_12
return-void
:cond_13
invoke-direct {p0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V
goto :goto_12
.end method
.method public onDrawerStateChanged(I)V
.registers 2
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 4
if-eqz p1, :cond_14
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
const v1, 0x102002c
if-ne v0, v1, :cond_14
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eqz v0, :cond_14
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->toggle()V
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method  setActionBarDescription(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
invoke-interface {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V
return-void
.end method
.method  setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
.registers 5
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z
if-nez v0, :cond_16
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
invoke-interface {v0}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->isNavigationVisible()Z
move-result v0
if-nez v0, :cond_16
const-string v0, "ActionBarDrawerToggle"
const-string v1, "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);"
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mWarnedForDisplayHomeAsUp:Z
:cond_16
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
invoke-interface {v0, p1, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
return-void
.end method
.method public setDrawerArrowDrawable(Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;)V
.registers 2
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V
return-void
.end method
.method public setDrawerIndicatorEnabled(Z)V
.registers 5
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eq p1, v0, :cond_1a
if-eqz p1, :cond_1e
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
const v2, 0x800003
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z
move-result v0
if-eqz v0, :cond_1b
iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I
:goto_15
invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
:goto_18
iput-boolean p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
:cond_1a
return-void
:cond_1b
iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I
goto :goto_15
:cond_1e
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
goto :goto_18
.end method
.method public setDrawerSlideAnimationEnabled(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerSlideAnimationEnabled:Z
if-nez p1, :cond_8
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V
:cond_8
return-void
.end method
.method public setHomeAsUpIndicator(I)V
.registers 4
const/4 v0, 0x0
if-eqz p1, :cond_d
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_d
invoke-virtual {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
.registers 4
const/4 v1, 0x0
if-nez p1, :cond_15
invoke-virtual {p0}, Landroid/support/v7/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
iput-boolean v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z
:goto_b
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-nez v0, :cond_14
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
:cond_14
return-void
:cond_15
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z
goto :goto_b
.end method
.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;
return-void
.end method
.method public syncState()V
.registers 4
const v2, 0x800003
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z
move-result v0
if-eqz v0, :cond_24
const/high16 v0, 0x3f80
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V
:goto_10
iget-boolean v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eqz v0, :cond_23
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z
move-result v0
if-eqz v0, :cond_29
iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I
:goto_20
invoke-virtual {p0, v1, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
:cond_23
return-void
:cond_24
const/4 v0, 0x0
invoke-direct {p0, v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->setPosition(F)V
goto :goto_10
:cond_29
iget v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I
goto :goto_20
.end method
.method  toggle()V
.registers 4
const v2, 0x800003
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I
move-result v0
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z
move-result v1
if-eqz v1, :cond_1a
const/4 v1, 0x2
if-eq v0, v1, :cond_1a
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V
:goto_19
:cond_19
return-void
:cond_1a
const/4 v1, 0x1
if-eq v0, v1, :cond_19
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V
goto :goto_19
.end method