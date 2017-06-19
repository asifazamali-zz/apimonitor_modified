.class  Landroid/support/v7/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Landroid/support/v7/widget/SearchView;
.method constructor <init>(Landroid/support/v7/widget/SearchView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SearchView$10;->this$0:Landroid/support/v7/widget/SearchView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 9
iget-object v0, p0, Landroid/support/v7/widget/SearchView$10;->this$0:Landroid/support/v7/widget/SearchView;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {v0, p3, v1, v2}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z
return-void
.end method