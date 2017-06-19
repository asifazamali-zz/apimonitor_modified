.class  Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"
.implements Landroid/support/v7/app/ActionBarDrawerToggle$Delegate;
.field final mActivity:Landroid/app/Activity;
.method constructor <init>(Landroid/app/Activity;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;
return-void
.end method
.method public getActionBarThemedContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$DummyDelegate;->mActivity:Landroid/app/Activity;
return-object v0
.end method
.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public isNavigationVisible()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public setActionBarDescription(I)V
.registers 2
.parameter
.end parameter
return-void
.end method
.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
return-void
.end method