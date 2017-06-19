.class  Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.field final mDefaultContentDescription:Ljava/lang/CharSequence;
.field final mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;
.field final mToolbar:Landroid/support/v7/widget/Toolbar;
.method constructor <init>(Landroid/support/v7/widget/Toolbar;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;
invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;
invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getNavigationContentDescription()Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;
return-void
.end method
.method public getActionBarThemedContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;
invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;
move-result-object v0
return-object v0
.end method
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public isNavigationVisible()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public setActionBarDescription(I)V
.registers 4
.parameter
.end parameter
if-nez p1, :cond_a
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;
iget-object v1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mDefaultContentDescription:Ljava/lang/CharSequence;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationContentDescription(I)V
goto :goto_9
.end method
.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->mToolbar:Landroid/support/v7/widget/Toolbar;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0, p2}, Landroid/support/v7/app/ActionBarDrawerToggle$ToolbarCompatDelegate;->setActionBarDescription(I)V
return-void
.end method