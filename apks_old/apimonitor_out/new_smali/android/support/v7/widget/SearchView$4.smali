.class  Landroid/support/v7/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFocusChange(Landroid/view/View;Z)V
.registers 5
iget-object v0, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;
iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;
iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
iget-object v1, p0, Landroid/support/v7/widget/SearchView$4;->this$0:Landroid/support/v7/widget/SearchView;
invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V
:cond_f
return-void
.end method