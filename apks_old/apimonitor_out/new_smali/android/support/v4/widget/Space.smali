.class public Landroid/support/v4/widget/Space;
.super Landroid/view/View;
.source "Space.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p0}, Landroid/support/v4/widget/Space;->getVisibility()I
move-result v0
if-nez v0, :cond_d
const/4 v0, 0x4
invoke-virtual {p0, v0}, Landroid/support/v4/widget/Space;->setVisibility(I)V
:cond_d
return-void
.end method
.method private static getDefaultSize2(II)I
.registers 5
move v0, p0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
sparse-switch v1, :sswitch_data_16
:goto_c
return v0
:sswitch_d
move v0, p0
goto :goto_c
:sswitch_f
invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_c
:sswitch_14
move v0, v2
goto :goto_c
:sswitch_data_16
.sparse-switch
-0x80000000 -> :sswitch_f
0x0 -> :sswitch_d
0x40000000 -> :sswitch_14
.end sparse-switch
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 2
return-void
.end method
.method protected onMeasure(II)V
.registers 5
invoke-virtual {p0}, Landroid/support/v4/widget/Space;->getSuggestedMinimumWidth()I
move-result v0
invoke-static {v0, p1}, Landroid/support/v4/widget/Space;->getDefaultSize2(II)I
move-result v0
invoke-virtual {p0}, Landroid/support/v4/widget/Space;->getSuggestedMinimumHeight()I
move-result v1
invoke-static {v1, p2}, Landroid/support/v4/widget/Space;->getDefaultSize2(II)I
move-result v1
invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/Space;->setMeasuredDimension(II)V
return-void
.end method