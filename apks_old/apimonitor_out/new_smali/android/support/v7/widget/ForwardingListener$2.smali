.class  Landroid/support/v7/widget/ForwardingListener$2;
.super Ljava/lang/Object;
.source "ForwardingListener.java"
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.field  mIsAttached:Z
.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;
iget-object v0, v0, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z
move-result v0
iput-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z
return-void
.end method
.method public onGlobalLayout()V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z
iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;
iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;
invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z
move-result v1
iput-boolean v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z
if-eqz v0, :cond_17
iget-boolean v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->mIsAttached:Z
if-nez v1, :cond_17
iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener$2;->this$0:Landroid/support/v7/widget/ForwardingListener;
#calls: Landroid/support/v7/widget/ForwardingListener;->onDetachedFromWindow()V
invoke-static {v1}, Landroid/support/v7/widget/ForwardingListener;->access$000(Landroid/support/v7/widget/ForwardingListener;)V
:cond_17
return-void
.end method