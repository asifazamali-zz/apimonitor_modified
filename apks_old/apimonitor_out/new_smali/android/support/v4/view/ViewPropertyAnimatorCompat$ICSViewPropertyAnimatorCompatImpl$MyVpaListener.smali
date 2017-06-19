.class  Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;
.field  mAnimEndCalled:Z
.field  mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
return-void
.end method
.method public onAnimationCancel(Landroid/view/View;)V
.registers 5
const/high16 v2, 0x7e00
invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v1
const/4 v0, 0x0
instance-of v2, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;
if-eqz v2, :cond_e
move-object v0, v1
check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;
:cond_e
if-eqz v0, :cond_13
invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V
:cond_13
return-void
.end method
.method public onAnimationEnd(Landroid/view/View;)V
.registers 8
const/4 v5, 0x0
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
if-ltz v3, :cond_13
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
invoke-static {p1, v3, v5}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
const/4 v4, -0x1
iput v4, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
:cond_13
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0x10
if-ge v3, v4, :cond_1d
iget-boolean v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mAnimEndCalled:Z
if-nez v3, :cond_44
:cond_1d
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget-object v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;
if-eqz v3, :cond_2e
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget-object v0, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iput-object v5, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:cond_2e
const/high16 v3, 0x7e00
invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v2
const/4 v1, 0x0
instance-of v3, v2, Landroid/support/v4/view/ViewPropertyAnimatorListener;
if-eqz v3, :cond_3c
move-object v1, v2
check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;
:cond_3c
if-eqz v1, :cond_41
invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V
:cond_41
const/4 v3, 0x1
iput-boolean v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mAnimEndCalled:Z
:cond_44
return-void
.end method
.method public onAnimationStart(Landroid/view/View;)V
.registers 7
const/4 v4, 0x0
const/4 v3, 0x0
iput-boolean v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mAnimEndCalled:Z
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I
if-ltz v3, :cond_e
const/4 v3, 0x2
invoke-static {p1, v3, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
:cond_e
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget-object v3, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;
if-eqz v3, :cond_1f
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget-object v2, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;
iget-object v3, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ICSViewPropertyAnimatorCompatImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iput-object v4, v3, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;
invoke-interface {v2}, Ljava/lang/Runnable;->run()V
:cond_1f
const/high16 v3, 0x7e00
invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v1
const/4 v0, 0x0
instance-of v3, v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;
if-eqz v3, :cond_2d
move-object v0, v1
check-cast v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;
:cond_2d
if-eqz v0, :cond_32
invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V
:cond_32
return-void
.end method