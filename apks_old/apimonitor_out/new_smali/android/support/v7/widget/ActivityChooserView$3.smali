.class  Landroid/support/v7/widget/ActivityChooserView$3;
.super Landroid/support/v7/widget/ForwardingListener;
.source "ActivityChooserView.java"
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;Landroid/view/View;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-direct {p0, p2}, Landroid/support/v7/widget/ForwardingListener;-><init>(Landroid/view/View;)V
return-void
.end method
.method public getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->getListPopupWindow()Landroid/support/v7/widget/ListPopupWindow;
move-result-object v0
return-object v0
.end method
.method protected onForwardingStarted()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->showPopup()Z
const/4 v0, 0x1
return v0
.end method
.method protected onForwardingStopped()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$3;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->dismissPopup()Z
const/4 v0, 0x1
return v0
.end method