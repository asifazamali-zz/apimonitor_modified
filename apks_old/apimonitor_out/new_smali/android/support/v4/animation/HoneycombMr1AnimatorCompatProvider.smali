.class  Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;
.super Ljava/lang/Object;
.source "HoneycombMr1AnimatorCompatProvider.java"
.implements Landroid/support/v4/animation/AnimatorProvider;
.field private mDefaultInterpolator:Landroid/animation/TimeInterpolator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public clearInterpolator(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;
if-nez v0, :cond_f
new-instance v0, Landroid/animation/ValueAnimator;
invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V
invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getInterpolator()Landroid/animation/TimeInterpolator;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;
:cond_f
invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;->mDefaultInterpolator:Landroid/animation/TimeInterpolator;
invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;
return-void
.end method
.method public emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
.registers 3
new-instance v0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;
const/4 v1, 0x2
new-array v1, v1, [F
fill-array-data v1, :array_10
invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat;-><init>(Landroid/animation/Animator;)V
return-object v0
:array_10
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x80t 0x3ft
.end array-data
.end method