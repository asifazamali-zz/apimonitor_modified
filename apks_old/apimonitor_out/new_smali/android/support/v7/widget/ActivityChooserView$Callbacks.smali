.class  Landroid/support/v7/widget/ActivityChooserView$Callbacks;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private notifyOnDismissListener()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;
invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V
:cond_d
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
if-ne p1, v3, :cond_3c
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDefaultActivity()Landroid/content/pm/ResolveInfo;
move-result-object v0
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/support/v7/widget/ActivityChooserModel;->getActivityIndex(Landroid/content/pm/ResolveInfo;)I
move-result v1
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;
move-result-object v3
invoke-virtual {v3, v1}, Landroid/support/v7/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;
move-result-object v2
if-eqz v2, :cond_3b
const/high16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_3b
:cond_3b
return-void
:cond_3c
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mExpandActivityOverflowButton:Landroid/widget/FrameLayout;
if-ne p1, v3, :cond_51
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
const/4 v4, 0x0
iput-boolean v4, v3, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget v4, v4, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I
invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V
goto :goto_3b
:cond_51
new-instance v3, Ljava/lang/IllegalArgumentException;
invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v3
.end method
.method public onDismiss()V
.registers 3
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->notifyOnDismissListener()V
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mProvider:Landroid/support/v4/view/ActionProvider;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/view/ActionProvider;->subUiVisibilityChanged(Z)V
:cond_11
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 11
invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
invoke-virtual {v0, p3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getItemViewType(I)I
move-result v1
packed-switch v1, :pswitch_data_60
new-instance v3, Ljava/lang/IllegalArgumentException;
invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v3
:pswitch_13
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
const v4, 0x7fffffff
invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V
:goto_1b
:cond_1b
return-void
:pswitch_1c
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-boolean v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
if-eqz v3, :cond_35
if-lez p3, :cond_1b
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;
move-result-object v3
invoke-virtual {v3, p3}, Landroid/support/v7/widget/ActivityChooserModel;->setDefaultActivity(I)V
goto :goto_1b
:cond_35
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getShowDefaultActivity()Z
move-result v3
if-eqz v3, :cond_5c
:goto_3f
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v3, v3, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getDataModel()Landroid/support/v7/widget/ActivityChooserModel;
move-result-object v3
invoke-virtual {v3, p3}, Landroid/support/v7/widget/ActivityChooserModel;->chooseActivity(I)Landroid/content/Intent;
move-result-object v2
if-eqz v2, :cond_1b
const/high16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-virtual {v3}, Landroid/support/v7/widget/ActivityChooserView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_1b
:cond_5c
add-int/lit8 p3, p3, 0x1
goto :goto_3f
nop
:pswitch_data_60
.packed-switch 0x0
:pswitch_1c
:pswitch_13
.end packed-switch
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 5
const/4 v2, 0x1
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mDefaultActivityButton:Landroid/widget/FrameLayout;
if-ne p1, v0, :cond_1f
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserView;->mAdapter:Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView$ActivityChooserViewAdapter;->getCount()I
move-result v0
if-lez v0, :cond_1e
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iput-boolean v2, v0, Landroid/support/v7/widget/ActivityChooserView;->mIsSelectingDefaultActivity:Z
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserView$Callbacks;->this$0:Landroid/support/v7/widget/ActivityChooserView;
iget v1, v1, Landroid/support/v7/widget/ActivityChooserView;->mInitialActivityCount:I
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActivityChooserView;->showPopupUnchecked(I)V
:cond_1e
return v2
:cond_1f
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
.end method