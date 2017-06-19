.class  Landroid/support/v4/view/PagerTabStrip$2;
.super Ljava/lang/Object;
.source "PagerTabStrip.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Landroid/support/v4/view/PagerTabStrip;
.method constructor <init>(Landroid/support/v4/view/PagerTabStrip;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/view/PagerTabStrip$2;->this$0:Landroid/support/v4/view/PagerTabStrip;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/PagerTabStrip$2;->this$0:Landroid/support/v4/view/PagerTabStrip;
iget-object v0, v0, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Landroid/support/v4/view/PagerTabStrip$2;->this$0:Landroid/support/v4/view/PagerTabStrip;
iget-object v1, v1, Landroid/support/v4/view/PagerTabStrip;->mPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
return-void
.end method