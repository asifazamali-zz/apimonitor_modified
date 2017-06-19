.class  Landroid/support/v7/widget/SwitchCompat$1;
.super Ljava/lang/Object;
.source "SwitchCompat.java"
.implements Landroid/view/animation/Animation$AnimationListener;
.field final synthetic this$0:Landroid/support/v7/widget/SwitchCompat;
.field final synthetic val$newCheckedState:Z
.method constructor <init>(Landroid/support/v7/widget/SwitchCompat;Z)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;
iput-boolean p2, p0, Landroid/support/v7/widget/SwitchCompat$1;->val$newCheckedState:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;
iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
if-ne v0, p1, :cond_16
iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat$1;->val$newCheckedState:Z
if-eqz v0, :cond_17
const/high16 v0, 0x3f80
:goto_e
invoke-virtual {v1, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat$1;->this$0:Landroid/support/v7/widget/SwitchCompat;
const/4 v1, 0x0
iput-object v1, v0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
:cond_16
return-void
:cond_17
const/4 v0, 0x0
goto :goto_e
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method