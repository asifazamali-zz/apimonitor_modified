.class  Landroid/support/v4/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"
.field final synthetic this$0:Landroid/support/v4/view/ViewPager;
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/ViewPager$PagerObserver;->this$0:Landroid/support/v4/view/ViewPager;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/ViewPager$PagerObserver;->this$0:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V
return-void
.end method
.method public onInvalidated()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/ViewPager$PagerObserver;->this$0:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->dataSetChanged()V
return-void
.end method