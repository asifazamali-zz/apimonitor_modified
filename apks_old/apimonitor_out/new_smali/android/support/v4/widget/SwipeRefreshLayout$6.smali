.class  Landroid/support/v4/widget/SwipeRefreshLayout$6;
.super Landroid/view/animation/Animation;
.source "SwipeRefreshLayout.java"
.field final synthetic this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
.method constructor <init>(Landroid/support/v4/widget/SwipeRefreshLayout;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
return-void
.end method
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 8
const/4 v2, 0x0
const/4 v0, 0x0
iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-boolean v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mUsingCustomStart:Z
if-nez v3, :cond_40
iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I
iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mOriginalOffsetTop:I
invoke-static {v4}, Ljava/lang/Math;->abs(I)I
move-result v4
sub-int v0, v3, v4
:goto_16
iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I
iget-object v4, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget v4, v4, Landroid/support/v4/widget/SwipeRefreshLayout;->mFrom:I
sub-int v4, v0, v4
int-to-float v4, v4
mul-float/2addr v4, p1
float-to-int v4, v4
add-int v2, v3, v4
iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mCircleView:Landroid/support/v4/widget/CircleImageView;
invoke-virtual {v3}, Landroid/support/v4/widget/CircleImageView;->getTop()I
move-result v3
sub-int v1, v2, v3
iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
const/4 v4, 0x0
invoke-virtual {v3, v1, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setTargetOffsetTopAndBottom(IZ)V
iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget-object v3, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mProgress:Landroid/support/v4/widget/MaterialProgressDrawable;
const/high16 v4, 0x3f80
sub-float/2addr v4, p1
invoke-virtual {v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable;->setArrowScale(F)V
return-void
:cond_40
iget-object v3, p0, Landroid/support/v4/widget/SwipeRefreshLayout$6;->this$0:Landroid/support/v4/widget/SwipeRefreshLayout;
iget v0, v3, Landroid/support/v4/widget/SwipeRefreshLayout;->mSpinnerOffsetEnd:I
goto :goto_16
.end method