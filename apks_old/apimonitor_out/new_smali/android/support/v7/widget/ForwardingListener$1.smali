.class  Landroid/support/v7/widget/ForwardingListener$1;
.super Ljava/lang/Object;
.source "ForwardingListener.java"
.implements Landroid/view/View$OnAttachStateChangeListener;
.field final synthetic this$0:Landroid/support/v7/widget/ForwardingListener;
.method constructor <init>(Landroid/support/v7/widget/ForwardingListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ForwardingListener$1;->this$0:Landroid/support/v7/widget/ForwardingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onViewAttachedToWindow(Landroid/view/View;)V
.registers 2
return-void
.end method
.method public onViewDetachedFromWindow(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ForwardingListener$1;->this$0:Landroid/support/v7/widget/ForwardingListener;
#calls: Landroid/support/v7/widget/ForwardingListener;->onDetachedFromWindow()V
invoke-static {v0}, Landroid/support/v7/widget/ForwardingListener;->access$000(Landroid/support/v7/widget/ForwardingListener;)V
return-void
.end method