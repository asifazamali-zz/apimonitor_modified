.class  Landroid/support/v4/widget/ContentLoadingProgressBar$2;
.super Ljava/lang/Object;
.source "ContentLoadingProgressBar.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
iput-boolean v1, v0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mPostedShow:Z
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
iget-boolean v0, v0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mDismissed:Z
if-nez v0, :cond_18
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, v0, Landroid/support/v4/widget/ContentLoadingProgressBar;->mStartTime:J
iget-object v0, p0, Landroid/support/v4/widget/ContentLoadingProgressBar$2;->this$0:Landroid/support/v4/widget/ContentLoadingProgressBar;
invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V
:cond_18
return-void
.end method