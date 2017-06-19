.class  Landroid/support/v7/widget/SearchView$11;
.super Ljava/lang/Object;
.source "SearchView.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$11;->this$0:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 7
iget-object v0, p0, Landroid/support/v7/widget/SearchView$11;->this$0:Landroid/support/v7/widget/SearchView;
invoke-virtual {v0, p3}, Landroid/support/v7/widget/SearchView;->onItemSelected(I)Z
return-void
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 2
return-void
.end method