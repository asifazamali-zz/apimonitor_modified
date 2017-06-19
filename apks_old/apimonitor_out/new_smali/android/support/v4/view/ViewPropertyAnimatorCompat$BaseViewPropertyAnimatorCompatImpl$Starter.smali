.class  Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"
.implements Ljava/lang/Runnable;
.field  mViewRef:Ljava/lang/ref/WeakReference;
.field  mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.field final synthetic this$0:Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
.registers 5
iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->this$0:Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mViewRef:Ljava/lang/ref/WeakReference;
iput-object p2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mViewRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
if-eqz v0, :cond_11
iget-object v1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->this$0:Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;
iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl$Starter;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
invoke-virtual {v1, v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat$BaseViewPropertyAnimatorCompatImpl;->startAnimation(Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
:cond_11
return-void
.end method