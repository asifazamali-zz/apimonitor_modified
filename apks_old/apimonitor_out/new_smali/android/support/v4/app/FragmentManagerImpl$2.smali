.class  Landroid/support/v4/app/FragmentManagerImpl$2;
.super Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
.source "FragmentManager.java"
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;
.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Landroid/view/View;Landroid/view/animation/Animation;Landroid/support/v4/app/Fragment;)V
.registers 5
iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->this$0:Landroid/support/v4/app/FragmentManagerImpl;
iput-object p4, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;
invoke-direct {p0, p2, p3}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;-><init>(Landroid/view/View;Landroid/view/animation/Animation;)V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 8
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->onAnimationEnd(Landroid/view/animation/Animation;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getAnimatingAway()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_21
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setAnimatingAway(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->this$0:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v1, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;
iget-object v2, p0, Landroid/support/v4/app/FragmentManagerImpl$2;->val$fragment:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getStateAfterAnimating()I
move-result v2
move v4, v3
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->moveToState(Landroid/support/v4/app/Fragment;IIIZ)V
:cond_21
return-void
.end method