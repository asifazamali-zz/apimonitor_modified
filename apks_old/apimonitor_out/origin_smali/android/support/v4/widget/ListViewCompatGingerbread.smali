.class Landroid/support/v4/widget/ListViewCompatGingerbread;
.super Ljava/lang/Object;
.source "ListViewCompatGingerbread.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static scrollListBy(Landroid/widget/ListView;I)V
    .registers 6

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v2, v3, p1

    invoke-virtual {p0, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_7
.end method
