.class  Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider;
.super Ljava/lang/Object;
.source "GingerbreadAnimatorCompatProvider.java"
.implements Landroid/support/v4/animation/AnimatorProvider;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public clearInterpolator(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
.registers 2
new-instance v0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;
invoke-direct {v0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider$GingerbreadFloatValueAnimator;-><init>()V
return-object v0
.end method