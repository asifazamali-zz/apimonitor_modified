.class  Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplBase.java"
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplBase;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getActionBarThemedContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getActionBarThemedContext()Landroid/content/Context;
move-result-object v0
return-object v0
.end method
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.registers 8
const/4 v6, 0x0
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->getActionBarThemedContext()Landroid/content/Context;
move-result-object v2
const/4 v3, 0x0
const/4 v4, 0x1
new-array v4, v4, [I
sget v5, Landroid/support/v7/appcompat/R$attr;->homeAsUpIndicator:I
aput v5, v4, v6
invoke-static {v2, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
return-object v1
.end method
.method public isNavigationVisible()Z
.registers 3
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;
invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_12
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getDisplayOptions()I
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
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;
invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V
:cond_b
return-void
.end method
.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
.registers 5
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplBase$ActionBarDrawableToggleImpl;->this$0:Landroid/support/v7/app/AppCompatDelegateImplBase;
invoke-virtual {v1}, Landroid/support/v7/app/AppCompatDelegateImplBase;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->setHomeActionContentDescription(I)V
:cond_e
return-void
.end method