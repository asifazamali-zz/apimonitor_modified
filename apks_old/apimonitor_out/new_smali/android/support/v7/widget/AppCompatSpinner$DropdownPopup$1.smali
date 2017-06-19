.class  Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
.field final synthetic val$this$0:Landroid/support/v7/widget/AppCompatSpinner;
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/support/v7/widget/AppCompatSpinner;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
iput-object p2, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->val$this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 10
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {v0, p3}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
move-result-object v0
if-eqz v0, :cond_20
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
iget-object v0, v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
iget-object v1, v1, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;
invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v2
invoke-virtual {v0, p2, p3, v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z
:cond_20
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;->this$1:Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->dismiss()V
return-void
.end method