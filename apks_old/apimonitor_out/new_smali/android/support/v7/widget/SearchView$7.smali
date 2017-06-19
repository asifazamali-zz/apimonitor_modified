.class  Landroid/support/v7/widget/SearchView$7;
.super Ljava/lang/Object;
.source "SearchView.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;
if-ne p1, v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V
:cond_b
:goto_b
return-void
:cond_c
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;
if-ne p1, v0, :cond_18
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V
goto :goto_b
:cond_18
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;
if-ne p1, v0, :cond_24
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V
goto :goto_b
:cond_24
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;
if-ne p1, v0, :cond_30
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onVoiceClicked()V
goto :goto_b
:cond_30
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
iget-object v0, v0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;
if-ne p1, v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/SearchView$7;->this$0:Landroid/support/v7/widget/SearchView;
invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V
goto :goto_b
.end method