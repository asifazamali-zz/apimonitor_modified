.class  Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ListPopupWindow.java"
.field final synthetic this$0:Landroid/support/v7/widget/ListPopupWindow;
.method constructor <init>(Landroid/support/v7/widget/ListPopupWindow;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->show()V
:cond_d
return-void
.end method
.method public onInvalidated()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;->this$0:Landroid/support/v7/widget/ListPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V
return-void
.end method