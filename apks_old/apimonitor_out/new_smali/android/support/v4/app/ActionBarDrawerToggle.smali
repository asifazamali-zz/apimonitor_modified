.class public Landroid/support/v4/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"
.implements Landroid/support/v4/widget/DrawerLayout$DrawerListener;
.field private static final ID_HOME:I = 0x102002c
.field private static final IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl; = null
.field private static final TOGGLE_DRAWABLE_OFFSET:F = 0.33333334f
.field final mActivity:Landroid/app/Activity;
.field private final mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
.field private final mCloseDrawerContentDescRes:I
.field private mDrawerImage:Landroid/graphics/drawable/Drawable;
.field private final mDrawerImageResource:I
.field private mDrawerIndicatorEnabled:Z
.field private final mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
.field private mHasCustomUpIndicator:Z
.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
.field private final mOpenDrawerContentDescRes:I
.field private mSetIndicatorInfo:Ljava/lang/Object;
.field private mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x12
if-lt v0, v1, :cond_e
new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2;
invoke-direct {v1}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplJellybeanMR2;-><init>()V
sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;
:goto_d
return-void
:cond_e
const/16 v1, 0xb
if-lt v0, v1, :cond_1a
new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;
invoke-direct {v1}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplHC;-><init>()V
sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;
goto :goto_d
:cond_1a
new-instance v1, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;
invoke-direct {v1}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImplBase;-><init>()V
sput-object v1, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;
goto :goto_d
.end method
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;III)V
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
invoke-static {p1}, Landroid/support/v4/app/ActionBarDrawerToggle;->assumeMaterial(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_11
const/4 v3, 0x1
:goto_7
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v4, p3
move v5, p4
move v6, p5
invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V
return-void
:cond_11
const/4 v3, 0x0
goto :goto_7
.end method
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;ZIII)V
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
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
instance-of v0, p1, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
if-eqz v0, :cond_3d
move-object v0, p1
check-cast v0, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;
invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
:goto_15
iput-object p2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
iput p4, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I
iput p5, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I
iput p6, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I
invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
invoke-static {p1, p4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;
new-instance v0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;
invoke-direct {v0, p0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
if-eqz p3, :cond_41
const v0, 0x3eaaaaab
:goto_39
invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setOffset(F)V
return-void
:cond_3d
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
goto :goto_15
:cond_41
const/4 v0, 0x0
goto :goto_39
.end method
.method private static assumeMaterial(Landroid/content/Context;)Z
.registers 3
const/16 v1, 0x15
invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v0
iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
if-lt v0, v1, :cond_10
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-lt v0, v1, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method  getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
invoke-interface {v0}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object v0
:goto_a
return-object v0
:cond_b
sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
invoke-interface {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;->getThemeUpIndicator(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_a
.end method
.method public isDrawerIndicatorEnabled()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
return v0
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z
if-nez v0, :cond_a
invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
:cond_a
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
iget v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImageResource:I
invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerImage:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->syncState()V
return-void
.end method
.method public onDrawerClosed(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eqz v0, :cond_f
iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I
invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V
:cond_f
return-void
.end method
.method public onDrawerOpened(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eqz v0, :cond_10
iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I
invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarDescription(I)V
:cond_10
return-void
.end method
.method public onDrawerSlide(Landroid/view/View;F)V
.registers 7
const/high16 v3, 0x4000
const/high16 v2, 0x3f00
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
invoke-virtual {v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->getPosition()F
move-result v0
cmpl-float v1, p2, v2
if-lez v1, :cond_20
const/4 v1, 0x0
sub-float v2, p2, v2
invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F
move-result v1
mul-float/2addr v1, v3
invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
move-result v0
:goto_1a
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
invoke-virtual {v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
return-void
:cond_20
mul-float v1, p2, v3
invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
goto :goto_1a
.end method
.method public onDrawerStateChanged(I)V
.registers 2
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
const v2, 0x800003
if-eqz p1, :cond_27
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
const v1, 0x102002c
if-ne v0, v1, :cond_27
iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eqz v0, :cond_27
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(I)Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V
:goto_1f
const/4 v0, 0x1
:goto_20
return v0
:cond_21
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V
goto :goto_1f
:cond_27
const/4 v0, 0x0
goto :goto_20
.end method
.method  setActionBarDescription(I)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
invoke-interface {v0, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V
:goto_9
return-void
:cond_a
sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;
iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
invoke-interface {v0, v1, v2, p1}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarDescription(Ljava/lang/Object;Landroid/app/Activity;I)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;
goto :goto_9
.end method
.method  setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
.registers 6
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivityImpl:Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
invoke-interface {v0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
:goto_9
return-void
:cond_a
sget-object v0, Landroid/support/v4/app/ActionBarDrawerToggle;->IMPL:Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;
iget-object v2, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
invoke-interface {v0, v1, v2, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$ActionBarDrawerToggleImpl;->setActionBarUpIndicator(Ljava/lang/Object;Landroid/app/Activity;Landroid/graphics/drawable/Drawable;I)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSetIndicatorInfo:Ljava/lang/Object;
goto :goto_9
.end method
.method public setDrawerIndicatorEnabled(Z)V
.registers 5
iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eq p1, v0, :cond_1a
if-eqz p1, :cond_1e
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
const v2, 0x800003
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z
move-result v0
if-eqz v0, :cond_1b
iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I
:goto_15
invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
:goto_18
iput-boolean p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
:cond_1a
return-void
:cond_1b
iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I
goto :goto_15
:cond_1e
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
goto :goto_18
.end method
.method public setHomeAsUpIndicator(I)V
.registers 4
const/4 v0, 0x0
if-eqz p1, :cond_9
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mActivity:Landroid/app/Activity;
invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_9
invoke-virtual {p0, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
.registers 4
const/4 v1, 0x0
if-nez p1, :cond_15
invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
iput-boolean v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z
:goto_b
iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-nez v0, :cond_14
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
:cond_14
return-void
:cond_15
iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z
goto :goto_b
.end method
.method public syncState()V
.registers 4
const v2, 0x800003
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
const/high16 v1, 0x3f80
invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
:goto_12
iget-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eqz v0, :cond_25
iget-object v1, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;
invoke-virtual {v0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(I)Z
move-result v0
if-eqz v0, :cond_2d
iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I
:goto_22
invoke-virtual {p0, v1, v0}, Landroid/support/v4/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
:cond_25
return-void
:cond_26
iget-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mSlider:Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->setPosition(F)V
goto :goto_12
:cond_2d
iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I
goto :goto_22
.end method