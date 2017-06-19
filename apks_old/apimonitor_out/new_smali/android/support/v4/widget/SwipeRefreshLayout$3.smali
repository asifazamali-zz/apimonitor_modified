.class  Landroid/support/v4/widget/SwipeRefreshLayout$3;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
return-void
.end method
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/SwipeRefreshLayout$3;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
const/high16 v1, 0x3f80
sub-float/2addr v1, p1
invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setAnimationProgress(F)V
return-void
.end method