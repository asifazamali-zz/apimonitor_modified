.class  Landroid/support/v4/app/ListFragment$2;
.super Ljava/lang/Object;
.source "ListFragment.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic this$0:Landroid/support/v4/app/ListFragment;
.method constructor <init>(Landroid/support/v4/app/ListFragment;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/ListFragment$2;->this$0:Landroid/support/v4/app/ListFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 12
iget-object v0, p0, Landroid/support/v4/app/ListFragment$2;->this$0:Landroid/support/v4/app/ListFragment;
move-object v1, p1
check-cast v1, Landroid/widget/ListView;
move-object v2, p2
move v3, p3
move-wide v4, p4
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
return-void
.end method