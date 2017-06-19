.class final Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompatKK.java"
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.field final synthetic val$listener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;
.field final synthetic val$view:Landroid/view/View;
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;
iput-object p2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;->val$view:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;->val$listener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompatKK$1;->val$view:Landroid/view/View;
invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;->onAnimationUpdate(Landroid/view/View;)V
return-void
.end method