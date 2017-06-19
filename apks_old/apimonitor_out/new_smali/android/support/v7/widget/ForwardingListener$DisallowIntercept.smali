.class  Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;
.super Ljava/lang/Object;
.source "ForwardingListener.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/support/v7/widget/ForwardingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/ForwardingListener$DisallowIntercept;->this$0:Landroid/support/v7/widget/ForwardingListener;
iget-object v1, v1, Landroid/support/v7/widget/ForwardingListener;->mSrc:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_e
const/4 v1, 0x1
invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
:cond_e
return-void
.end method