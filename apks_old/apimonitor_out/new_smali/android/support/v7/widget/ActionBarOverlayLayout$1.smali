.class  Landroid/support/v7/widget/ActionBarOverlayLayout$1;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"
.field final synthetic this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;
.method constructor <init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;
invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V
return-void
.end method
.method public onAnimationCancel(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;
const/4 v1, 0x0
iput-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z
return-void
.end method
.method public onAnimationEnd(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;
const/4 v1, 0x0
iput-object v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mCurrentActionBarTopAnimator:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget-object v0, p0, Landroid/support/v7/widget/ActionBarOverlayLayout$1;->this$0:Landroid/support/v7/widget/ActionBarOverlayLayout;
const/4 v1, 0x0
iput-boolean v1, v0, Landroid/support/v7/widget/ActionBarOverlayLayout;->mAnimatingForFling:Z
return-void
.end method