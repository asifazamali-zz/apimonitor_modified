.class  Landroid/support/v7/widget/ActionBarContextView$1;
.super Ljava/lang/Object;
.source "ActionBarContextView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Landroid/support/v7/widget/ActionBarContextView;
.field final synthetic val$mode:Landroid/support/v7/view/ActionMode;
.method constructor <init>(Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/ActionBarContextView$1;->this$0:Landroid/support/v7/widget/ActionBarContextView;
iput-object p2, p0, Landroid/support/v7/widget/ActionBarContextView$1;->val$mode:Landroid/support/v7/view/ActionMode;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ActionBarContextView$1;->val$mode:Landroid/support/v7/view/ActionMode;
invoke-virtual {v0}, Landroid/support/v7/view/ActionMode;->finish()V
return-void
.end method