.class public Landroid/support/v7/widget/LinearLayoutCompat;
.super Landroid/view/ViewGroup;
.source "LinearLayoutCompat.java"
.field public static final HORIZONTAL:I = 0x0
.field private static final INDEX_BOTTOM:I = 0x2
.field private static final INDEX_CENTER_VERTICAL:I = 0x0
.field private static final INDEX_FILL:I = 0x3
.field private static final INDEX_TOP:I = 0x1
.field public static final SHOW_DIVIDER_BEGINNING:I = 0x1
.field public static final SHOW_DIVIDER_END:I = 0x4
.field public static final SHOW_DIVIDER_MIDDLE:I = 0x2
.field public static final SHOW_DIVIDER_NONE:I = 0x0
.field public static final VERTICAL:I = 0x1
.field private static final VERTICAL_GRAVITY_COUNT:I = 0x4
.field private mBaselineAligned:Z
.field private mBaselineAlignedChildIndex:I
.field private mBaselineChildTop:I
.field private mDivider:Landroid/graphics/drawable/Drawable;
.field private mDividerHeight:I
.field private mDividerPadding:I
.field private mDividerWidth:I
.field private mGravity:I
.field private mMaxAscent:[I
.field private mMaxDescent:[I
.field private mOrientation:I
.field private mShowDividers:I
.field private mTotalLength:I
.field private mUseLargestChild:Z
.field private mWeightSum:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 11
const/4 v4, 0x1
const/4 v6, -0x1
const/4 v5, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z
iput v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I
iput v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I
const v3, 0x800033
iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
sget-object v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat:[I
invoke-static {p1, p2, v3, p3, v5}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_orientation:I
invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v2
if-ltz v2, :cond_22
invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->setOrientation(I)V
:cond_22
sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_gravity:I
invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v2
if-ltz v2, :cond_2d
invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V
:cond_2d
sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAligned:I
invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z
move-result v1
if-nez v1, :cond_38
invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setBaselineAligned(Z)V
:cond_38
sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_weightSum:I
const/high16 v4, -0x4080
invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getFloat(IF)F
move-result v3
iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F
sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_android_baselineAlignedChildIndex:I
invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v3
iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I
sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_measureWithLargestChild:I
invoke-virtual {v0, v3, v5}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z
move-result v3
iput-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z
sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_divider:I
invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_showDividers:I
invoke-virtual {v0, v3, v5}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v3
iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I
sget v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutCompat_dividerPadding:I
invoke-virtual {v0, v3, v5}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I
move-result v3
iput v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
return-void
.end method
.method private forceUniformHeight(II)V
.registers 12
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredHeight()I
move-result v0
const/high16 v2, 0x4000
invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v4
const/4 v6, 0x0
:goto_c
if-ge v6, p1, :cond_38
invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v2, 0x8
if-eq v0, v2, :cond_35
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v7
check-cast v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
const/4 v2, -0x1
if-ne v0, v2, :cond_35
iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I
move-result v0
iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
move-object v0, p0
move v2, p2
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V
iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
:cond_35
add-int/lit8 v6, v6, 0x1
goto :goto_c
:cond_38
return-void
.end method
.method private forceUniformWidth(II)V
.registers 12
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I
move-result v0
const/high16 v4, 0x4000
invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
const/4 v6, 0x0
:goto_c
if-ge v6, p1, :cond_38
invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v0
const/16 v4, 0x8
if-eq v0, v4, :cond_35
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v7
check-cast v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
iget v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
const/4 v4, -0x1
if-ne v0, v4, :cond_35
iget v8, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I
move-result v0
iput v0, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
move-object v0, p0
move v4, p2
move v5, v3
invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V
iput v8, v7, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
:cond_35
add-int/lit8 v6, v6, 0x1
goto :goto_c
:cond_38
return-void
.end method
.method private setChildFrame(Landroid/view/View;IIII)V
.registers 8
add-int v0, p2, p4
add-int v1, p3, p5
invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V
return-void
.end method
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
.registers 3
instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
return v0
.end method
.method  drawDividersHorizontal(Landroid/graphics/Canvas;)V
.registers 10
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I
move-result v1
invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v3
const/4 v2, 0x0
:goto_9
if-ge v2, v1, :cond_41
invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_32
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v6
const/16 v7, 0x8
if-eq v6, v7, :cond_32
invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v6
if-eqz v6, :cond_32
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
if-eqz v3, :cond_35
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v6
iget v7, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int v5, v6, v7
:goto_2f
invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V
:cond_32
add-int/lit8 v2, v2, 0x1
goto :goto_9
:cond_35
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v6
iget v7, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
sub-int/2addr v6, v7
iget v7, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
sub-int v5, v6, v7
goto :goto_2f
:cond_41
invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v6
if-eqz v6, :cond_58
add-int/lit8 v6, v1, -0x1
invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_67
if-eqz v3, :cond_59
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v5
:goto_55
invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->drawVerticalDivider(Landroid/graphics/Canvas;I)V
:cond_58
return-void
:cond_59
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I
move-result v6
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I
move-result v7
sub-int/2addr v6, v7
iget v7, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
sub-int v5, v6, v7
goto :goto_55
:cond_67
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
if-eqz v3, :cond_7b
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v6
iget v7, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
sub-int/2addr v6, v7
iget v7, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
sub-int v5, v6, v7
goto :goto_55
:cond_7b
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v6
iget v7, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int v5, v6, v7
goto :goto_55
.end method
.method  drawDividersVertical(Landroid/graphics/Canvas;)V
.registers 10
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I
move-result v2
const/4 v3, 0x0
:goto_5
if-ge v3, v2, :cond_32
invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_2f
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v6
const/16 v7, 0x8
if-eq v6, v7, :cond_2f
invoke-virtual {p0, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v6
if-eqz v6, :cond_2f
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v6
iget v7, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
sub-int/2addr v6, v7
iget v7, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I
sub-int v5, v6, v7
invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V
:cond_2f
add-int/lit8 v3, v3, 0x1
goto :goto_5
:cond_32
invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v6
if-eqz v6, :cond_51
add-int/lit8 v6, v2, -0x1
invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v1
const/4 v0, 0x0
if-nez v1, :cond_52
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I
move-result v6
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v7
sub-int/2addr v6, v7
iget v7, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I
sub-int v0, v6, v7
:goto_4e
invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawHorizontalDivider(Landroid/graphics/Canvas;I)V
:cond_51
return-void
:cond_52
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
check-cast v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
invoke-virtual {v1}, Landroid/view/View;->getBottom()I
move-result v6
iget v7, v4, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
add-int v0, v6, v7
goto :goto_4e
.end method
.method  drawHorizontalDivider(Landroid/graphics/Canvas;I)V
.registers 7
iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v1
iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I
add-int/2addr v1, v2
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getWidth()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I
move-result v3
sub-int/2addr v2, v3
iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I
sub-int/2addr v2, v3
iget v3, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I
add-int/2addr v3, p2
invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method  drawVerticalDivider(Landroid/graphics/Canvas;I)V
.registers 8
iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v1
iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I
add-int/2addr v1, v2
iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
add-int/2addr v2, p2
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getHeight()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v4
sub-int/2addr v3, v4
iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I
sub-int/2addr v3, v4
invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method protected generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.registers 4
const/4 v2, -0x2
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I
if-nez v0, :cond_b
new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V
:goto_a
return-object v0
:cond_b
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I
const/4 v1, 0x1
if-ne v0, v1, :cond_17
new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
const/4 v1, -0x1
invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V
goto :goto_a
:cond_17
const/4 v0, 0x0
goto :goto_a
.end method
.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->generateDefaultLayoutParams()Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.registers 4
new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-object v0
.end method
.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
.registers 3
new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
invoke-direct {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-result-object v0
return-object v0
.end method
.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-result-object v0
return-object v0
.end method
.method public getBaseline()I
.registers 9
const/4 v5, -0x1
iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I
if-gez v6, :cond_a
invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I
move-result v5
:cond_9
:goto_9
return v5
:cond_a
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I
move-result v6
iget v7, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I
if-gt v6, v7, :cond_1a
new-instance v5, Ljava/lang/RuntimeException;
const-string v6, "mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds."
invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v5
:cond_1a
iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I
invoke-virtual {p0, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getBaseline()I
move-result v1
if-ne v1, v5, :cond_32
iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I
if-eqz v6, :cond_9
new-instance v5, Ljava/lang/RuntimeException;
const-string v6, "mBaselineAlignedChildIndex of LinearLayout points to a View that doesn\'t know how to get its baseline."
invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v5
:cond_32
iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I
iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I
const/4 v6, 0x1
if-ne v5, v6, :cond_44
iget v5, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
and-int/lit8 v4, v5, 0x70
const/16 v5, 0x30
if-eq v4, v5, :cond_44
sparse-switch v4, :sswitch_data_7c
:goto_44
:cond_44
invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
iget v5, v3, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
add-int/2addr v5, v2
add-int/2addr v5, v1
goto :goto_9
:sswitch_4f
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I
move-result v5
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I
move-result v6
sub-int/2addr v5, v6
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v6
sub-int/2addr v5, v6
iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
sub-int v2, v5, v6
goto :goto_44
:sswitch_62
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getBottom()I
move-result v5
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getTop()I
move-result v6
sub-int/2addr v5, v6
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v6
sub-int/2addr v5, v6
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v6
sub-int/2addr v5, v6
iget v6, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
sub-int/2addr v5, v6
div-int/lit8 v5, v5, 0x2
add-int/2addr v2, v5
goto :goto_44
:sswitch_data_7c
.sparse-switch
0x10 -> :sswitch_62
0x50 -> :sswitch_4f
.end sparse-switch
.end method
.method public getBaselineAlignedChildIndex()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I
return v0
.end method
.method  getChildrenSkipCount(Landroid/view/View;I)I
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public getDividerDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getDividerPadding()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I
return v0
.end method
.method public getDividerWidth()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
return v0
.end method
.method public getGravity()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
return v0
.end method
.method  getLocationOffset(Landroid/view/View;)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method  getNextLocationOffset(Landroid/view/View;)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public getOrientation()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I
return v0
.end method
.method public getShowDividers()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I
return v0
.end method
.method  getVirtualChildAt(I)Landroid/view/View;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method  getVirtualChildCount()I
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I
move-result v0
return v0
.end method
.method public getWeightSum()F
.registers 2
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F
return v0
.end method
.method protected hasDividerBeforeChildAt(I)Z
.registers 7
const/4 v2, 0x1
const/4 v3, 0x0
if-nez p1, :cond_d
iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I
and-int/lit8 v4, v4, 0x1
if-eqz v4, :cond_b
:cond_a
:goto_a
return v2
:cond_b
move v2, v3
goto :goto_a
:cond_d
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I
move-result v4
if-ne p1, v4, :cond_1b
iget v4, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I
and-int/lit8 v4, v4, 0x4
if-nez v4, :cond_a
move v2, v3
goto :goto_a
:cond_1b
iget v2, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I
and-int/lit8 v2, v2, 0x2
if-eqz v2, :cond_38
const/4 v0, 0x0
add-int/lit8 v1, p1, -0x1
:goto_24
if-ltz v1, :cond_33
invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v2
const/16 v3, 0x8
if-eq v2, v3, :cond_35
const/4 v0, 0x1
:cond_33
move v2, v0
goto :goto_a
:cond_35
add-int/lit8 v1, v1, -0x1
goto :goto_24
:cond_38
move v2, v3
goto :goto_a
.end method
.method public isBaselineAligned()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z
return v0
.end method
.method public isMeasureWithLargestChildEnabled()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z
return v0
.end method
.method  layoutHorizontal(IIII)V
.registers 35
invoke-static/range {p0 .. p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v20
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v27
sub-int v18, p4, p2
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v2
sub-int v10, v18, v2
sub-int v2, v18, v27
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v4
sub-int v13, v2, v4
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I
move-result v14
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
const v4, 0x800007
and-int v23, v2, v4
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
and-int/lit8 v26, v2, 0x70
move-object/from16 v0, p0
iget-boolean v8, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I
move-object/from16 v24, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I
move-object/from16 v25, v0
invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v21
move/from16 v0, v23
move/from16 v1, v21
invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v2
sparse-switch v2, :sswitch_data_13a
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v12
:goto_4e
const/16 v28, 0x0
const/16 v16, 0x1
if-eqz v20, :cond_58
add-int/lit8 v28, v14, -0x1
const/16 v16, -0x1
:cond_58
const/16 v19, 0x0
:goto_5a
move/from16 v0, v19
if-ge v0, v14, :cond_139
mul-int v2, v16, v19
add-int v11, v28, v2
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v3
if-nez v3, :cond_96
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I
move-result v2
add-int/2addr v12, v2
:goto_71
:cond_71
add-int/lit8 v19, v19, 0x1
goto :goto_5a
:sswitch_74
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v2
add-int v2, v2, p3
sub-int v2, v2, p1
move-object/from16 v0, p0
iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
sub-int v12, v2, v4
goto :goto_4e
:sswitch_83
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v2
sub-int v4, p3, p1
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v29, v0
sub-int v4, v4, v29
div-int/lit8 v4, v4, 0x2
add-int v12, v2, v4
goto :goto_4e
:cond_96
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v2
const/16 v4, 0x8
if-eq v2, v4, :cond_71
invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I
move-result v6
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v7
const/4 v9, -0x1
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v22
check-cast v22, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
if-eqz v8, :cond_ba
move-object/from16 v0, v22
iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
const/4 v4, -0x1
if-eq v2, v4, :cond_ba
invoke-virtual {v3}, Landroid/view/View;->getBaseline()I
move-result v9
:cond_ba
move-object/from16 v0, v22
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I
move/from16 v17, v0
if-gez v17, :cond_c4
move/from16 v17, v26
:cond_c4
and-int/lit8 v2, v17, 0x70
sparse-switch v2, :sswitch_data_144
move/from16 v5, v27
:goto_cb
:cond_cb
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v2
if-eqz v2, :cond_d8
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
add-int/2addr v12, v2
:cond_d8
move-object/from16 v0, v22
iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int/2addr v12, v2
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I
move-result v2
add-int v4, v12, v2
move-object/from16 v2, p0
invoke-direct/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V
move-object/from16 v0, v22
iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v2, v6
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v4
add-int/2addr v2, v4
add-int/2addr v12, v2
move-object/from16 v0, p0
invoke-virtual {v0, v3, v11}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I
move-result v2
add-int v19, v19, v2
goto/16 :goto_71
:sswitch_101
move-object/from16 v0, v22
iget v2, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
add-int v5, v27, v2
const/4 v2, -0x1
if-eq v9, v2, :cond_cb
const/4 v2, 0x1
aget v2, v24, v2
sub-int/2addr v2, v9
add-int/2addr v5, v2
goto :goto_cb
:sswitch_110
sub-int v2, v13, v7
div-int/lit8 v2, v2, 0x2
add-int v2, v2, v27
move-object/from16 v0, v22
iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
add-int/2addr v2, v4
move-object/from16 v0, v22
iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
sub-int v5, v2, v4
goto :goto_cb
:sswitch_122
sub-int v2, v10, v7
move-object/from16 v0, v22
iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
sub-int v5, v2, v4
const/4 v2, -0x1
if-eq v9, v2, :cond_cb
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
sub-int v15, v2, v9
const/4 v2, 0x2
aget v2, v25, v2
sub-int/2addr v2, v15
sub-int/2addr v5, v2
goto :goto_cb
:cond_139
return-void
:sswitch_data_144
.sparse-switch
0x10 -> :sswitch_110
0x30 -> :sswitch_101
0x50 -> :sswitch_122
.end sparse-switch
:sswitch_data_13a
.sparse-switch
0x1 -> :sswitch_83
0x5 -> :sswitch_74
.end sparse-switch
.end method
.method  layoutVertical(IIII)V
.registers 26
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v18
sub-int v19, p3, p1
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I
move-result v1
sub-int v8, v19, v1
sub-int v1, v19, v18
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I
move-result v4
sub-int v9, v1, v4
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I
move-result v11
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
and-int/lit8 v16, v1, 0x70
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
const v4, 0x800007
and-int v17, v1, v4
sparse-switch v16, :sswitch_data_da
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v10
:goto_2e
const/4 v13, 0x0
:goto_2f
if-ge v13, v11, :cond_d8
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v2
if-nez v2, :cond_65
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I
move-result v1
add-int/2addr v10, v1
:goto_40
:cond_40
add-int/lit8 v13, v13, 0x1
goto :goto_2f
:sswitch_43
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v1
add-int v1, v1, p4
sub-int v1, v1, p2
move-object/from16 v0, p0
iget v4, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
sub-int v10, v1, v4
goto :goto_2e
:sswitch_52
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v1
sub-int v4, p4, p2
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v20, v0
sub-int v4, v4, v20
div-int/lit8 v4, v4, 0x2
add-int v10, v1, v4
goto :goto_2e
:cond_65
invoke-virtual {v2}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v4, 0x8
if-eq v1, v4, :cond_40
invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I
move-result v5
invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I
move-result v6
invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v15
check-cast v15, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
iget v12, v15, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I
if-gez v12, :cond_81
move/from16 v12, v17
:cond_81
invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v14
invoke-static {v12, v14}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I
move-result v7
and-int/lit8 v1, v7, 0x7
sparse-switch v1, :sswitch_data_e4
iget v1, v15, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int v3, v18, v1
:goto_92
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v1
if-eqz v1, :cond_9f
move-object/from16 v0, p0
iget v1, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I
add-int/2addr v10, v1
:cond_9f
iget v1, v15, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
add-int/2addr v10, v1
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getLocationOffset(Landroid/view/View;)I
move-result v1
add-int v4, v10, v1
move-object/from16 v1, p0
invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/LinearLayoutCompat;->setChildFrame(Landroid/view/View;IIII)V
iget v1, v15, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
add-int/2addr v1, v6
move-object/from16 v0, p0
invoke-virtual {v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v4
add-int/2addr v1, v4
add-int/2addr v10, v1
move-object/from16 v0, p0
invoke-virtual {v0, v2, v13}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I
move-result v1
add-int/2addr v13, v1
goto/16 :goto_40
:sswitch_c3
sub-int v1, v9, v5
div-int/lit8 v1, v1, 0x2
add-int v1, v1, v18
iget v4, v15, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int/2addr v1, v4
iget v4, v15, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
sub-int v3, v1, v4
goto :goto_92
:sswitch_d1
sub-int v1, v8, v5
iget v4, v15, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
sub-int v3, v1, v4
goto :goto_92
:cond_d8
return-void
nop
:sswitch_data_da
.sparse-switch
0x10 -> :sswitch_52
0x50 -> :sswitch_43
.end sparse-switch
:sswitch_data_e4
.sparse-switch
0x1 -> :sswitch_c3
0x5 -> :sswitch_d1
.end sparse-switch
.end method
.method  measureChildBeforeLayout(Landroid/view/View;IIIII)V
.registers 13
move-object v0, p0
move-object v1, p1
move v2, p3
move v3, p4
move v4, p5
move v5, p6
invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildWithMargins(Landroid/view/View;IIII)V
return-void
.end method
.method  measureHorizontal(II)V
.registers 50
const/4 v3, 0x0
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
const/16 v35, 0x0
const/16 v18, 0x0
const/4 v11, 0x0
const/16 v43, 0x0
const/4 v10, 0x1
const/16 v40, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I
move-result v20
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v44
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v25
const/16 v31, 0x0
const/16 v38, 0x0
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I
if-eqz v3, :cond_2b
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I
if-nez v3, :cond_39
:cond_2b
const/4 v3, 0x4
new-array v3, v3, [I
move-object/from16 v0, p0
iput-object v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I
const/4 v3, 0x4
new-array v3, v3, [I
move-object/from16 v0, p0
iput-object v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I
:cond_39
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxAscent:[I
move-object/from16 v33, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mMaxDescent:[I
move-object/from16 v34, v0
const/4 v3, 0x0
const/4 v6, 0x1
const/4 v7, 0x2
const/4 v8, 0x3
const/4 v9, -0x1
aput v9, v33, v8
aput v9, v33, v7
aput v9, v33, v6
aput v9, v33, v3
const/4 v3, 0x0
const/4 v6, 0x1
const/4 v7, 0x2
const/4 v8, 0x3
const/4 v9, -0x1
aput v9, v34, v8
aput v9, v34, v7
aput v9, v34, v6
aput v9, v34, v3
move-object/from16 v0, p0
iget-boolean v13, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z
move/from16 v41, v0
const/high16 v3, 0x4000
move/from16 v0, v44
if-ne v0, v3, :cond_92
const/16 v27, 0x1
:goto_71
const/high16 v28, -0x8000
const/4 v5, 0x0
:goto_74
move/from16 v0, v20
if-ge v5, v0, :cond_24b
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v4
if-nez v4, :cond_95
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I
move-result v6
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:goto_8f
add-int/lit8 v5, v5, 0x1
goto :goto_74
:cond_92
const/16 v27, 0x0
goto :goto_71
:cond_95
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v6, 0x8
if-ne v3, v6, :cond_a5
move-object/from16 v0, p0
invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I
move-result v3
add-int/2addr v5, v3
goto :goto_8f
:cond_a5
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v3
if-eqz v3, :cond_ba
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:cond_ba
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v29
check-cast v29, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
add-float v40, v40, v3
const/high16 v3, 0x4000
move/from16 v0, v44
if-ne v0, v3, :cond_1a7
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
if-nez v3, :cond_1a7
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v6, 0x0
cmpl-float v3, v3, v6
if-lez v3, :cond_1a7
if-eqz v27, :cond_186
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
move-object/from16 v0, v29
iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v6, v7
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:goto_ef
if-eqz v13, :cond_1a3
const/4 v3, 0x0
const/4 v6, 0x0
invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v23
move/from16 v0, v23
move/from16 v1, v23
invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V
:goto_fe
:cond_fe
const/16 v32, 0x0
const/high16 v3, 0x4000
move/from16 v0, v25
if-eq v0, v3, :cond_111
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
const/4 v6, -0x1
if-ne v3, v6, :cond_111
const/16 v31, 0x1
const/16 v32, 0x1
:cond_111
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
add-int v30, v3, v6
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
add-int v16, v3, v30
invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
move/from16 v0, v18
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v18
if-eqz v13, :cond_158
invoke-virtual {v4}, Landroid/view/View;->getBaseline()I
move-result v14
const/4 v3, -0x1
if-eq v14, v3, :cond_158
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I
if-gez v3, :cond_231
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
:goto_13e
and-int/lit8 v24, v3, 0x70
shr-int/lit8 v3, v24, 0x4
and-int/lit8 v3, v3, -0x2
shr-int/lit8 v26, v3, 0x1
aget v3, v33, v26
invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I
move-result v3
aput v3, v33, v26
aget v3, v34, v26
sub-int v6, v16, v14
invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I
move-result v3
aput v3, v34, v26
:cond_158
move/from16 v0, v35
move/from16 v1, v16
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v35
if-eqz v10, :cond_237
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
const/4 v6, -0x1
if-ne v3, v6, :cond_237
const/4 v10, 0x1
:goto_16a
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v6, 0x0
cmpl-float v3, v3, v6
if-lez v3, :cond_23e
if-eqz v32, :cond_23a
:goto_175
move/from16 v0, v43
move/from16 v1, v30
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v43
:goto_17d
move-object/from16 v0, p0
invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I
move-result v3
add-int/2addr v5, v3
goto/16 :goto_8f
:cond_186
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v39, v0
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int v3, v3, v39
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v3, v6
move/from16 v0, v39
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
goto/16 :goto_ef
:cond_1a3
const/16 v38, 0x1
goto/16 :goto_fe
:cond_1a7
const/high16 v36, -0x8000
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
if-nez v3, :cond_1bf
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v6, 0x0
cmpl-float v3, v3, v6
if-lez v3, :cond_1bf
const/16 v36, 0x0
const/4 v3, -0x2
move-object/from16 v0, v29
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
:cond_1bf
const/4 v3, 0x0
cmpl-float v3, v40, v3
if-nez v3, :cond_20b
move-object/from16 v0, p0
iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:goto_1c8
const/4 v9, 0x0
move-object/from16 v3, p0
move/from16 v6, p1
move/from16 v8, p2
invoke-virtual/range {v3 .. v9}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V
const/high16 v3, -0x8000
move/from16 v0, v36
if-eq v0, v3, :cond_1de
move/from16 v0, v36
move-object/from16 v1, v29
iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
:cond_1de
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v19
if-eqz v27, :cond_20d
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int v6, v6, v19
move-object/from16 v0, v29
iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v6, v7
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v7
add-int/2addr v6, v7
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:goto_1ff
if-eqz v41, :cond_fe
move/from16 v0, v19
move/from16 v1, v28
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v28
goto/16 :goto_fe
:cond_20b
const/4 v7, 0x0
goto :goto_1c8
:cond_20d
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v39, v0
add-int v3, v39, v19
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v3, v6
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v6
add-int/2addr v3, v6
move/from16 v0, v39
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
goto :goto_1ff
:cond_231
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I
goto/16 :goto_13e
:cond_237
const/4 v10, 0x0
goto/16 :goto_16a
:cond_23a
move/from16 v30, v16
goto/16 :goto_175
:cond_23e
if-eqz v32, :cond_248
:goto_240
move/from16 v0, v30
invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I
move-result v11
goto/16 :goto_17d
:cond_248
move/from16 v30, v16
goto :goto_240
:cond_24b
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
if-lez v3, :cond_268
move-object/from16 v0, p0
move/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v3
if-eqz v3, :cond_268
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:cond_268
const/4 v3, 0x1
aget v3, v33, v3
const/4 v6, -0x1
if-ne v3, v6, :cond_280
const/4 v3, 0x0
aget v3, v33, v3
const/4 v6, -0x1
if-ne v3, v6, :cond_280
const/4 v3, 0x2
aget v3, v33, v3
const/4 v6, -0x1
if-ne v3, v6, :cond_280
const/4 v3, 0x3
aget v3, v33, v3
const/4 v6, -0x1
if-eq v3, v6, :cond_2b8
:cond_280
const/4 v3, 0x3
aget v3, v33, v3
const/4 v6, 0x0
aget v6, v33, v6
const/4 v7, 0x1
aget v7, v33, v7
const/4 v8, 0x2
aget v8, v33, v8
invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I
move-result v7
invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I
move-result v6
invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I
move-result v12
const/4 v3, 0x3
aget v3, v34, v3
const/4 v6, 0x0
aget v6, v34, v6
const/4 v7, 0x1
aget v7, v34, v7
const/4 v8, 0x2
aget v8, v34, v8
invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I
move-result v7
invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I
move-result v6
invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I
move-result v22
add-int v3, v12, v22
move/from16 v0, v35
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v35
:cond_2b8
if-eqz v41, :cond_33e
const/high16 v3, -0x8000
move/from16 v0, v44
if-eq v0, v3, :cond_2c2
if-nez v44, :cond_33e
:cond_2c2
const/4 v3, 0x0
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
const/4 v5, 0x0
:goto_2c8
move/from16 v0, v20
if-ge v5, v0, :cond_33e
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v4
if-nez v4, :cond_2e6
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I
move-result v6
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:goto_2e3
add-int/lit8 v5, v5, 0x1
goto :goto_2c8
:cond_2e6
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v6, 0x8
if-ne v3, v6, :cond_2f6
move-object/from16 v0, p0
invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I
move-result v3
add-int/2addr v5, v3
goto :goto_2e3
:cond_2f6
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v29
check-cast v29, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
if-eqz v27, :cond_31a
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int v6, v6, v28
move-object/from16 v0, v29
iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v6, v7
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v7
add-int/2addr v6, v7
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
goto :goto_2e3
:cond_31a
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v39, v0
add-int v3, v39, v28
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v3, v6
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v6
add-int/2addr v3, v6
move/from16 v0, v39
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
goto :goto_2e3
:cond_33e
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I
move-result v7
add-int/2addr v6, v7
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v45, v0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I
move-result v3
move/from16 v0, v45
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v45
const/4 v3, 0x0
move/from16 v0, v45
move/from16 v1, p1
invoke-static {v0, v1, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v46
const v3, 0xffffff
and-int v45, v46, v3
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
sub-int v21, v45, v3
if-nez v38, :cond_37d
if-eqz v21, :cond_5a7
const/4 v3, 0x0
cmpl-float v3, v40, v3
if-lez v3, :cond_5a7
:cond_37d
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F
const/4 v6, 0x0
cmpl-float v3, v3, v6
if-lez v3, :cond_3c5
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F
move/from16 v42, v0
:goto_38c
const/4 v3, 0x0
const/4 v6, 0x1
const/4 v7, 0x2
const/4 v8, 0x3
const/4 v9, -0x1
aput v9, v33, v8
aput v9, v33, v7
aput v9, v33, v6
aput v9, v33, v3
const/4 v3, 0x0
const/4 v6, 0x1
const/4 v7, 0x2
const/4 v8, 0x3
const/4 v9, -0x1
aput v9, v34, v8
aput v9, v34, v7
aput v9, v34, v6
aput v9, v34, v3
const/16 v35, -0x1
const/4 v3, 0x0
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
const/4 v5, 0x0
:goto_3ae
move/from16 v0, v20
if-ge v5, v0, :cond_505
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_3c2
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v6, 0x8
if-ne v3, v6, :cond_3c8
:goto_3c2
:cond_3c2
add-int/lit8 v5, v5, 0x1
goto :goto_3ae
:cond_3c5
move/from16 v42, v40
goto :goto_38c
:cond_3c8
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v29
check-cast v29, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-object/from16 v0, v29
iget v15, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v3, 0x0
cmpl-float v3, v15, v3
if-lez v3, :cond_431
move/from16 v0, v21
int-to-float v3, v0
mul-float/2addr v3, v15
div-float v3, v3, v42
float-to-int v0, v3
move/from16 v37, v0
sub-float v42, v42, v15
sub-int v21, v21, v37
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v6
add-int/2addr v3, v6
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
move/from16 v0, p2
invoke-static {v0, v3, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I
move-result v17
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
if-nez v3, :cond_40d
const/high16 v3, 0x4000
move/from16 v0, v44
if-eq v0, v3, :cond_4b9
:cond_40d
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
add-int v19, v3, v37
if-gez v19, :cond_417
const/16 v19, 0x0
:cond_417
const/high16 v3, 0x4000
move/from16 v0, v19
invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
move/from16 v0, v17
invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V
:goto_424
invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
const/high16 v6, -0x100
and-int/2addr v3, v6
move/from16 v0, v18
invoke-static {v0, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v18
:cond_431
if-eqz v27, :cond_4cd
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v6
move-object/from16 v0, v29
iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int/2addr v6, v7
move-object/from16 v0, v29
iget v7, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v6, v7
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v7
add-int/2addr v6, v7
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:goto_451
const/high16 v3, 0x4000
move/from16 v0, v25
if-eq v0, v3, :cond_4f6
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
const/4 v6, -0x1
if-ne v3, v6, :cond_4f6
const/16 v32, 0x1
:goto_460
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
add-int v30, v3, v6
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
add-int v16, v3, v30
move/from16 v0, v35
move/from16 v1, v16
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v35
if-eqz v32, :cond_4fa
:goto_47a
move/from16 v0, v30
invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I
move-result v11
if-eqz v10, :cond_4fe
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
const/4 v6, -0x1
if-ne v3, v6, :cond_4fe
const/4 v10, 0x1
:goto_48a
if-eqz v13, :cond_3c2
invoke-virtual {v4}, Landroid/view/View;->getBaseline()I
move-result v14
const/4 v3, -0x1
if-eq v14, v3, :cond_3c2
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I
if-gez v3, :cond_500
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
:goto_49d
and-int/lit8 v24, v3, 0x70
shr-int/lit8 v3, v24, 0x4
and-int/lit8 v3, v3, -0x2
shr-int/lit8 v26, v3, 0x1
aget v3, v33, v26
invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I
move-result v3
aput v3, v33, v26
aget v3, v34, v26
sub-int v6, v16, v14
invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I
move-result v3
aput v3, v34, v26
goto/16 :goto_3c2
:cond_4b9
if-lez v37, :cond_4ca
:goto_4bb
const/high16 v3, 0x4000
move/from16 v0, v37
invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
move/from16 v0, v17
invoke-virtual {v4, v3, v0}, Landroid/view/View;->measure(II)V
goto/16 :goto_424
:cond_4ca
const/16 v37, 0x0
goto :goto_4bb
:cond_4cd
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v39, v0
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
add-int v3, v3, v39
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v29
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v3, v6
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v6
add-int/2addr v3, v6
move/from16 v0, v39
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
goto/16 :goto_451
:cond_4f6
const/16 v32, 0x0
goto/16 :goto_460
:cond_4fa
move/from16 v30, v16
goto/16 :goto_47a
:cond_4fe
const/4 v10, 0x0
goto :goto_48a
:cond_500
move-object/from16 v0, v29
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I
goto :goto_49d
:cond_505
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I
move-result v7
add-int/2addr v6, v7
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
const/4 v3, 0x1
aget v3, v33, v3
const/4 v6, -0x1
if-ne v3, v6, :cond_52f
const/4 v3, 0x0
aget v3, v33, v3
const/4 v6, -0x1
if-ne v3, v6, :cond_52f
const/4 v3, 0x2
aget v3, v33, v3
const/4 v6, -0x1
if-ne v3, v6, :cond_52f
const/4 v3, 0x3
aget v3, v33, v3
const/4 v6, -0x1
if-eq v3, v6, :cond_567
:cond_52f
const/4 v3, 0x3
aget v3, v33, v3
const/4 v6, 0x0
aget v6, v33, v6
const/4 v7, 0x1
aget v7, v33, v7
const/4 v8, 0x2
aget v8, v33, v8
invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I
move-result v7
invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I
move-result v6
invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I
move-result v12
const/4 v3, 0x3
aget v3, v34, v3
const/4 v6, 0x0
aget v6, v34, v6
const/4 v7, 0x1
aget v7, v34, v7
const/4 v8, 0x2
aget v8, v34, v8
invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I
move-result v7
invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I
move-result v6
invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I
move-result v22
add-int v3, v12, v22
move/from16 v0, v35
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v35
:cond_567
if-nez v10, :cond_571
const/high16 v3, 0x4000
move/from16 v0, v25
if-eq v0, v3, :cond_571
move/from16 v35, v11
:cond_571
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v6
add-int/2addr v3, v6
add-int v35, v35, v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I
move-result v3
move/from16 v0, v35
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v35
const/high16 v3, -0x100
and-int v3, v3, v18
or-int v3, v3, v46
shl-int/lit8 v6, v18, 0x10
move/from16 v0, v35
move/from16 v1, p2
invoke-static {v0, v1, v6}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v6
move-object/from16 v0, p0
invoke-virtual {v0, v3, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V
if-eqz v31, :cond_5a6
move-object/from16 v0, p0
move/from16 v1, v20
move/from16 v2, p1
invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformHeight(II)V
:cond_5a6
return-void
:cond_5a7
move/from16 v0, v43
invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I
move-result v11
if-eqz v41, :cond_567
const/high16 v3, 0x4000
move/from16 v0, v44
if-eq v0, v3, :cond_567
const/4 v5, 0x0
:goto_5b6
move/from16 v0, v20
if-ge v5, v0, :cond_567
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_5ca
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v6, 0x8
if-ne v3, v6, :cond_5cd
:cond_5ca
:goto_5ca
add-int/lit8 v5, v5, 0x1
goto :goto_5b6
:cond_5cd
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v29
check-cast v29, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-object/from16 v0, v29
iget v15, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v3, 0x0
cmpl-float v3, v15, v3
if-lez v3, :cond_5ca
const/high16 v3, 0x4000
move/from16 v0, v28
invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v6
const/high16 v7, 0x4000
invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V
goto :goto_5ca
.end method
.method  measureNullChild(I)I
.registers 3
const/4 v0, 0x0
return v0
.end method
.method  measureVertical(II)V
.registers 41
const/4 v3, 0x0
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
const/16 v27, 0x0
const/4 v15, 0x0
const/4 v11, 0x0
const/16 v36, 0x0
const/4 v10, 0x1
const/16 v33, 0x0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildCount()I
move-result v17
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v37
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v19
const/16 v25, 0x0
const/16 v31, 0x0
move-object/from16 v0, p0
iget v12, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z
move/from16 v34, v0
const/high16 v22, -0x8000
const/4 v5, 0x0
:goto_2b
move/from16 v0, v17
if-ge v5, v0, :cond_19d
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v4
if-nez v4, :cond_49
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I
move-result v6
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:goto_46
add-int/lit8 v5, v5, 0x1
goto :goto_2b
:cond_49
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v6, 0x8
if-ne v3, v6, :cond_59
move-object/from16 v0, p0
invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I
move-result v3
add-int/2addr v5, v3
goto :goto_46
:cond_59
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v3
if-eqz v3, :cond_6e
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:cond_6e
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
add-float v33, v33, v3
const/high16 v3, 0x4000
move/from16 v0, v19
if-ne v0, v3, :cond_cd
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
if-nez v3, :cond_cd
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v6, 0x0
cmpl-float v3, v3, v6
if-lez v3, :cond_cd
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v32, v0
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
add-int v3, v3, v32
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
add-int/2addr v3, v6
move/from16 v0, v32
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
const/16 v31, 0x1
:cond_ac
:goto_ac
if-ltz v12, :cond_ba
add-int/lit8 v3, v5, 0x1
if-ne v12, v3, :cond_ba
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineChildTop:I
:cond_ba
if-ge v5, v12, :cond_137
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v6, 0x0
cmpl-float v3, v3, v6
if-lez v3, :cond_137
new-instance v3, Ljava/lang/RuntimeException;
const-string v6, "A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won\'t work.  Either remove the weight, or don\'t set mBaselineAlignedChildIndex."
invoke-direct {v3, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v3
:cond_cd
const/high16 v29, -0x8000
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
if-nez v3, :cond_e5
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v6, 0x0
cmpl-float v3, v3, v6
if-lez v3, :cond_e5
const/16 v29, 0x0
const/4 v3, -0x2
move-object/from16 v0, v23
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
:cond_e5
const/4 v7, 0x0
const/4 v3, 0x0
cmpl-float v3, v33, v3
if-nez v3, :cond_135
move-object/from16 v0, p0
iget v9, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:goto_ef
move-object/from16 v3, p0
move/from16 v6, p1
move/from16 v8, p2
invoke-virtual/range {v3 .. v9}, Landroid/support/v7/widget/LinearLayoutCompat;->measureChildBeforeLayout(Landroid/view/View;IIIII)V
const/high16 v3, -0x8000
move/from16 v0, v29
if-eq v0, v3, :cond_104
move/from16 v0, v29
move-object/from16 v1, v23
iput v0, v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
:cond_104
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v14
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v32, v0
add-int v3, v32, v14
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
add-int/2addr v3, v6
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v6
add-int/2addr v3, v6
move/from16 v0, v32
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
if-eqz v34, :cond_ac
move/from16 v0, v22
invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I
move-result v22
goto/16 :goto_ac
:cond_135
const/4 v9, 0x0
goto :goto_ef
:cond_137
const/16 v26, 0x0
const/high16 v3, 0x4000
move/from16 v0, v37
if-eq v0, v3, :cond_14a
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
const/4 v6, -0x1
if-ne v3, v6, :cond_14a
const/16 v25, 0x1
const/16 v26, 0x1
:cond_14a
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int v24, v3, v6
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
add-int v28, v3, v24
invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I
move-result v27
invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
invoke-static {v15, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v15
if-eqz v10, :cond_18c
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
const/4 v6, -0x1
if-ne v3, v6, :cond_18c
const/4 v10, 0x1
:goto_170
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v6, 0x0
cmpl-float v3, v3, v6
if-lez v3, :cond_191
if-eqz v26, :cond_18e
:goto_17b
move/from16 v0, v36
move/from16 v1, v24
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v36
:goto_183
move-object/from16 v0, p0
invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I
move-result v3
add-int/2addr v5, v3
goto/16 :goto_46
:cond_18c
const/4 v10, 0x0
goto :goto_170
:cond_18e
move/from16 v24, v28
goto :goto_17b
:cond_191
if-eqz v26, :cond_19a
:goto_193
move/from16 v0, v24
invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I
move-result v11
goto :goto_183
:cond_19a
move/from16 v24, v28
goto :goto_193
:cond_19d
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
if-lez v3, :cond_1ba
move-object/from16 v0, p0
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->hasDividerBeforeChildAt(I)Z
move-result v3
if-eqz v3, :cond_1ba
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:cond_1ba
if-eqz v34, :cond_222
const/high16 v3, -0x8000
move/from16 v0, v19
if-eq v0, v3, :cond_1c4
if-nez v19, :cond_222
:cond_1c4
const/4 v3, 0x0
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
const/4 v5, 0x0
:goto_1ca
move/from16 v0, v17
if-ge v5, v0, :cond_222
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v4
if-nez v4, :cond_1e8
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->measureNullChild(I)I
move-result v6
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:goto_1e5
add-int/lit8 v5, v5, 0x1
goto :goto_1ca
:cond_1e8
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v6, 0x8
if-ne v3, v6, :cond_1f8
move-object/from16 v0, p0
invoke-virtual {v0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildrenSkipCount(Landroid/view/View;I)I
move-result v3
add-int/2addr v5, v3
goto :goto_1e5
:cond_1f8
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v32, v0
add-int v3, v32, v22
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
add-int/2addr v3, v6
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v6
add-int/2addr v3, v6
move/from16 v0, v32
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
goto :goto_1e5
:cond_222
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v7
add-int/2addr v6, v7
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v20, v0
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumHeight()I
move-result v3
move/from16 v0, v20
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v20
const/4 v3, 0x0
move/from16 v0, v20
move/from16 v1, p2
invoke-static {v0, v1, v3}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v21
const v3, 0xffffff
and-int v20, v21, v3
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
sub-int v18, v20, v3
if-nez v31, :cond_261
if-eqz v18, :cond_3b6
const/4 v3, 0x0
cmpl-float v3, v33, v3
if-lez v3, :cond_3b6
:cond_261
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F
const/4 v6, 0x0
cmpl-float v3, v3, v6
if-lez v3, :cond_28b
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F
move/from16 v35, v0
:goto_270
const/4 v3, 0x0
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
const/4 v5, 0x0
:goto_276
move/from16 v0, v17
if-ge v5, v0, :cond_36a
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v4
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v6, 0x8
if-ne v3, v6, :cond_28e
:goto_288
add-int/lit8 v5, v5, 0x1
goto :goto_276
:cond_28b
move/from16 v35, v33
goto :goto_270
:cond_28e
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-object/from16 v0, v23
iget v13, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v3, 0x0
cmpl-float v3, v13, v3
if-lez v3, :cond_2f1
move/from16 v0, v18
int-to-float v3, v0
mul-float/2addr v3, v13
div-float v3, v3, v35
float-to-int v0, v3
move/from16 v30, v0
sub-float v35, v35, v13
sub-int v18, v18, v30
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I
move-result v6
add-int/2addr v3, v6
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
move/from16 v0, p1
invoke-static {v0, v3, v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildMeasureSpec(III)I
move-result v16
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->height:I
if-nez v3, :cond_2d3
const/high16 v3, 0x4000
move/from16 v0, v19
if-eq v0, v3, :cond_34f
:cond_2d3
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
add-int v14, v3, v30
if-gez v14, :cond_2dc
const/4 v14, 0x0
:cond_2dc
const/high16 v3, 0x4000
invoke-static {v14, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
move/from16 v0, v16
invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V
:goto_2e7
invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v3
and-int/lit16 v3, v3, -0x100
invoke-static {v15, v3}, Landroid/support/v7/widget/ViewUtils;->combineMeasuredStates(II)I
move-result v15
:cond_2f1
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->leftMargin:I
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->rightMargin:I
add-int v24, v3, v6
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
add-int v28, v3, v24
invoke-static/range {v27 .. v28}, Ljava/lang/Math;->max(II)I
move-result v27
const/high16 v3, 0x4000
move/from16 v0, v37
if-eq v0, v3, :cond_362
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
const/4 v6, -0x1
if-ne v3, v6, :cond_362
const/16 v26, 0x1
:goto_314
if-eqz v26, :cond_365
:goto_316
move/from16 v0, v24
invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I
move-result v11
if-eqz v10, :cond_368
move-object/from16 v0, v23
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->width:I
const/4 v6, -0x1
if-ne v3, v6, :cond_368
const/4 v10, 0x1
:goto_326
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
move/from16 v32, v0
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
add-int v3, v3, v32
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->topMargin:I
add-int/2addr v3, v6
move-object/from16 v0, v23
iget v6, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->bottomMargin:I
add-int/2addr v3, v6
move-object/from16 v0, p0
invoke-virtual {v0, v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getNextLocationOffset(Landroid/view/View;)I
move-result v6
add-int/2addr v3, v6
move/from16 v0, v32
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
goto/16 :goto_288
:cond_34f
if-lez v30, :cond_35f
:goto_351
const/high16 v3, 0x4000
move/from16 v0, v30
invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
move/from16 v0, v16
invoke-virtual {v4, v0, v3}, Landroid/view/View;->measure(II)V
goto :goto_2e7
:cond_35f
const/16 v30, 0x0
goto :goto_351
:cond_362
const/16 v26, 0x0
goto :goto_314
:cond_365
move/from16 v24, v28
goto :goto_316
:cond_368
const/4 v10, 0x0
goto :goto_326
:cond_36a
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingTop()I
move-result v6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingBottom()I
move-result v7
add-int/2addr v6, v7
add-int/2addr v3, v6
move-object/from16 v0, p0
iput v3, v0, Landroid/support/v7/widget/LinearLayoutCompat;->mTotalLength:I
:cond_37c
if-nez v10, :cond_386
const/high16 v3, 0x4000
move/from16 v0, v37
if-eq v0, v3, :cond_386
move/from16 v27, v11
:cond_386
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingLeft()I
move-result v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getPaddingRight()I
move-result v6
add-int/2addr v3, v6
add-int v27, v27, v3
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getSuggestedMinimumWidth()I
move-result v3
move/from16 v0, v27
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v27
move/from16 v0, v27
move/from16 v1, p1
invoke-static {v0, v1, v15}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v3
move-object/from16 v0, p0
move/from16 v1, v21
invoke-virtual {v0, v3, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasuredDimension(II)V
if-eqz v25, :cond_3b5
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, p2
invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->forceUniformWidth(II)V
:cond_3b5
return-void
:cond_3b6
move/from16 v0, v36
invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I
move-result v11
if-eqz v34, :cond_37c
const/high16 v3, 0x4000
move/from16 v0, v19
if-eq v0, v3, :cond_37c
const/4 v5, 0x0
:goto_3c5
move/from16 v0, v17
if-ge v5, v0, :cond_37c
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->getVirtualChildAt(I)Landroid/view/View;
move-result-object v4
if-eqz v4, :cond_3d9
invoke-virtual {v4}, Landroid/view/View;->getVisibility()I
move-result v3
const/16 v6, 0x8
if-ne v3, v6, :cond_3dc
:goto_3d9
:cond_3d9
add-int/lit8 v5, v5, 0x1
goto :goto_3c5
:cond_3dc
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v23
check-cast v23, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
move-object/from16 v0, v23
iget v13, v0, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->weight:F
const/4 v3, 0x0
cmpl-float v3, v13, v3
if-lez v3, :cond_3d9
invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I
move-result v3
const/high16 v6, 0x4000
invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
const/high16 v6, 0x4000
move/from16 v0, v22
invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v6
invoke-virtual {v4, v3, v6}, Landroid/view/View;->measure(II)V
goto :goto_3d9
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I
const/4 v1, 0x1
if-ne v0, v1, :cond_e
invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersVertical(Landroid/graphics/Canvas;)V
goto :goto_4
:cond_e
invoke-virtual {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->drawDividersHorizontal(Landroid/graphics/Canvas;)V
goto :goto_4
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_12
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
:cond_12
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_12
invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
const-class v0, Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
:cond_12
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 8
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I
const/4 v1, 0x1
if-ne v0, v1, :cond_9
invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutVertical(IIII)V
:goto_8
return-void
:cond_9
invoke-virtual {p0, p2, p3, p4, p5}, Landroid/support/v7/widget/LinearLayoutCompat;->layoutHorizontal(IIII)V
goto :goto_8
.end method
.method protected onMeasure(II)V
.registers 5
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I
const/4 v1, 0x1
if-ne v0, v1, :cond_9
invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureVertical(II)V
:goto_8
return-void
:cond_9
invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measureHorizontal(II)V
goto :goto_8
.end method
.method public setBaselineAligned(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAligned:Z
return-void
.end method
.method public setBaselineAlignedChildIndex(I)V
.registers 5
if-ltz p1, :cond_8
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I
move-result v0
if-lt p1, v0, :cond_2b
:cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "base aligned child index out of range (0, "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2b
iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mBaselineAlignedChildIndex:I
return-void
.end method
.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;
if-ne p1, v1, :cond_6
:goto_5
return-void
:cond_6
iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDivider:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_20
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I
:goto_16
if-nez p1, :cond_19
const/4 v0, 0x1
:cond_19
invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->setWillNotDraw(Z)V
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V
goto :goto_5
:cond_20
iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerWidth:I
iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerHeight:I
goto :goto_16
.end method
.method public setDividerPadding(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mDividerPadding:I
return-void
.end method
.method public setGravity(I)V
.registers 3
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
if-eq v0, p1, :cond_19
const v0, 0x800007
and-int/2addr v0, p1
if-nez v0, :cond_e
const v0, 0x800003
or-int/2addr p1, v0
:cond_e
and-int/lit8 v0, p1, 0x70
if-nez v0, :cond_14
or-int/lit8 p1, p1, 0x30
:cond_14
iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V
:cond_19
return-void
.end method
.method public setHorizontalGravity(I)V
.registers 5
const v2, 0x800007
and-int v0, p1, v2
iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
and-int/2addr v1, v2
if-eq v1, v0, :cond_16
iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
const v2, -0x800008
and-int/2addr v1, v2
or-int/2addr v1, v0
iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V
:cond_16
return-void
.end method
.method public setMeasureWithLargestChildEnabled(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mUseLargestChild:Z
return-void
.end method
.method public setOrientation(I)V
.registers 3
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I
if-eq v0, p1, :cond_9
iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mOrientation:I
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V
:cond_9
return-void
.end method
.method public setShowDividers(I)V
.registers 3
iget v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I
if-eq p1, v0, :cond_7
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V
:cond_7
iput p1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mShowDividers:I
return-void
.end method
.method public setVerticalGravity(I)V
.registers 4
and-int/lit8 v0, p1, 0x70
iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
and-int/lit8 v1, v1, 0x70
if-eq v1, v0, :cond_12
iget v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
and-int/lit8 v1, v1, -0x71
or-int/2addr v1, v0
iput v1, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mGravity:I
invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->requestLayout()V
:cond_12
return-void
.end method
.method public setWeightSum(F)V
.registers 3
const/4 v0, 0x0
invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F
move-result v0
iput v0, p0, Landroid/support/v7/widget/LinearLayoutCompat;->mWeightSum:F
return-void
.end method
.method public shouldDelayChildPressedState()Z
.registers 2
const/4 v0, 0x0
return v0
.end method