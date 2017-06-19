.class  Landroid/support/v7/widget/ToolbarWidgetWrapper$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"
.field private mCanceled:Z
.field final synthetic this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;
.field final synthetic val$visibility:I
.method constructor <init>(Landroid/support/v7/widget/ToolbarWidgetWrapper;I)V
.registers 4
iput-object p1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;
iput p2, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->val$visibility:I
invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->mCanceled:Z
return-void
.end method
.method public onAnimationCancel(Landroid/view/View;)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->mCanceled:Z
return-void
.end method
.method public onAnimationEnd(Landroid/view/View;)V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->mCanceled:Z
if-nez v0, :cond_d
iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;
iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;
iget v1, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->val$visibility:I
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V
:cond_d
return-void
.end method
.method public onAnimationStart(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/ToolbarWidgetWrapper$2;->this$0:Landroid/support/v7/widget/ToolbarWidgetWrapper;
iget-object v0, v0, Landroid/support/v7/widget/ToolbarWidgetWrapper;->mToolbar:Landroid/support/v7/widget/Toolbar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V
return-void
.end method