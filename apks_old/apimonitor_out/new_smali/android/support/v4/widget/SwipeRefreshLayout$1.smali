.class  Landroid/support/v4/widget/SwipeRefreshLayout$1;
.super Ljava/lang/Object;
.source "SwipeRefreshLayout.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mRefreshing:Z
if-eqz v0, :cond_36
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setAlpha(I)V
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->start()V
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-boolean v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mNotify:Z
if-eqz v0, :cond_29
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
if-eqz v0, :cond_29
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v0, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
invoke-interface {v0}, Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;->onRefresh()V
:cond_29
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v1, v1, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;
invoke-virtual {v1}, Landroid/support/v4/widget/CircleImageView;->getTop()I
move-result v1
iput v1, v0, Landroid/support/v4/widget/SwipeRefreshLayout;->mCurrentTargetOffsetTop:I
:goto_35
return-void
:cond_36
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$1;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-virtual {v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->reset()V
goto :goto_35
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method