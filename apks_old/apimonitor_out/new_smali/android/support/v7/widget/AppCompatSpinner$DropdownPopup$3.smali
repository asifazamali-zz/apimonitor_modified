.class  Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"
.implements Landroid/widget/PopupWindow$OnDismissListener;
.field final synthetic this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
.field final synthetic val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
iput-object p2, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onDismiss()V
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v0
if-eqz v0, :cond_f
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;->val$layoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
:cond_f
return-void
.end method