.class final Landroid/support/v4/view/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I
.registers 5
iget v0, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I
iget v1, p2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I
sub-int/2addr v0, v1
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Landroid/support/v4/view/ViewPager$ItemInfo;
check-cast p2, Landroid/support/v4/view/ViewPager$ItemInfo;
invoke-virtual {p0, p1, p2}, Landroid/support/v4/view/ViewPager$1;->compare(Landroid/support/v4/view/ViewPager$ItemInfo;Landroid/support/v4/view/ViewPager$ItemInfo;)I
move-result v0
return v0
.end method