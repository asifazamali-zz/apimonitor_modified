.class public final Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"
.field static final IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl; = null
.field static final LISTENER_TAG_ID:I = 0x7e000000
.field private static final TAG:Ljava/lang/String; = "ViewAnimatorCompat"
.field  mEndAction:Ljava/lang/Runnable;
.field  mOldLayerType:I
.field  mStartAction:Ljava/lang/Runnable;
.field private mView:Ljava/lang/ref/WeakReference;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_e
new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$LollipopViewPropertyAnimatorCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
:goto_d
return-void
:cond_e
const/16 v1, 0x13
if-lt v0, v1, :cond_1a
new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$KitKatViewPropertyAnimatorCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
goto :goto_d
:cond_1a
const/16 v1, 0x12
if-lt v0, v1, :cond_26
new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBMr2ViewPropertyAnimatorCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
goto :goto_d
:cond_26
const/16 v1, 0x10
if-lt v0, v1, :cond_32
new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$JBViewPropertyAnimatorCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
goto :goto_d
:cond_32
const/16 v1, 0xe
if-lt v0, v1, :cond_3e
new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
goto :goto_d
:cond_3e
new-instance v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
invoke-direct {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
goto :goto_d
.end method
.method constructor <init>(Landroid/view/View;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;
iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->alpha(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public alphaBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->alphaBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public cancel()V
.registers 3
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->cancel(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
:cond_f
return-void
.end method
.method public getDuration()J
.registers 5
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_11
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->getDuration(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
move-result-wide v2
:goto_10
return-wide v2
:cond_11
const-wide/16 v2, 0x0
goto :goto_10
.end method
.method public getInterpolator()Landroid/view/animation/Interpolator;
.registers 3
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_11
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->getInterpolator(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)Landroid/view/animation/Interpolator;
move-result-object v1
:goto_10
return-object v1
:cond_11
const/4 v1, 0x0
goto :goto_10
.end method
.method public getStartDelay()J
.registers 5
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_11
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->getStartDelay(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)J
move-result-wide v2
:goto_10
return-wide v2
:cond_11
const-wide/16 v2, 0x0
goto :goto_10
.end method
.method public rotation(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotation(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public rotationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationX(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public rotationXBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationXBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public rotationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public rotationYBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->rotationYBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleX(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public scaleXBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleXBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public scaleYBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->scaleYBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 6
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setDuration(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
:cond_f
return-object p0
.end method
.method public setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setInterpolator(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/view/animation/Interpolator;)V
:cond_f
return-object p0
.end method
.method public setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorListener;)V
:cond_f
return-object p0
.end method
.method public setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 6
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setStartDelay(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;J)V
:cond_f
return-object p0
.end method
.method public setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)V
:cond_f
return-object p0
.end method
.method public start()V
.registers 3
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->start(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
:cond_f
return-void
.end method
.method public translationX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationX(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public translationXBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationXBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationY(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public translationYBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationYBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public translationZ(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationZ(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public translationZBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->translationZBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->withEndAction(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
:cond_f
return-object p0
.end method
.method public withLayer()Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 3
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->withLayer(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
:cond_f
return-object p0
.end method
.method public withStartAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->withStartAction(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;Ljava/lang/Runnable;)V
:cond_f
return-object p0
.end method
.method public x(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->x(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public xBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->xBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public y(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->y(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public yBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->yBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public z(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->z(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method
.method public zBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mView:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_f
sget-object v1, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->IMPL:Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;
invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatImpl;->zBy(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;F)V
:cond_f
return-object p0
.end method