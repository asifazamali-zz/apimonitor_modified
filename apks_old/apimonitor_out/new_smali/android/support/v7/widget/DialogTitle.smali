.class public Landroid/support/v7/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected onMeasure(II)V
.registers 14
const/4 v10, 0x0
invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
invoke-virtual {p0}, Landroid/support/v7/widget/DialogTitle;->getLayout()Landroid/text/Layout;
move-result-object v2
if-eqz v2, :cond_42
invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I
move-result v3
if-lez v3, :cond_42
add-int/lit8 v5, v3, -0x1
invoke-virtual {v2, v5}, Landroid/text/Layout;->getEllipsisCount(I)I
move-result v1
if-lez v1, :cond_42
invoke-virtual {p0, v10}, Landroid/support/v7/widget/DialogTitle;->setSingleLine(Z)V
const/4 v5, 0x2
invoke-virtual {p0, v5}, Landroid/support/v7/widget/DialogTitle;->setMaxLines(I)V
invoke-virtual {p0}, Landroid/support/v7/widget/DialogTitle;->getContext()Landroid/content/Context;
move-result-object v5
const/4 v6, 0x0
sget-object v7, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I
const v8, 0x1010041
const v9, 0x1030044
invoke-virtual {v5, v6, v7, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
sget v5, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I
invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v4
if-eqz v4, :cond_3c
int-to-float v5, v4
invoke-virtual {p0, v10, v5}, Landroid/support/v7/widget/DialogTitle;->setTextSize(IF)V
:cond_3c
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V
:cond_42
return-void
.end method