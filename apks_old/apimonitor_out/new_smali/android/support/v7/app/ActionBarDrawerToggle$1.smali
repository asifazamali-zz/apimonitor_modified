.class  Landroid/support/v7/app/ActionBarDrawerToggle$1;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
.method constructor <init>(Landroid/support/v7/app/ActionBarDrawerToggle;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
iget-boolean v0, v0, Landroid/support/v7/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->toggle()V
:goto_b
:cond_b
return-void
:cond_c
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
iget-object v0, v0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/app/ActionBarDrawerToggle$1;->this$0:Landroid/support/v7/app/ActionBarDrawerToggle;
iget-object v0, v0, Landroid/support/v7/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
goto :goto_b
.end method