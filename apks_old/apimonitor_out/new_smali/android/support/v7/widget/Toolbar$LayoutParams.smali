.class public Landroid/support/v7/widget/Toolbar$LayoutParams;
.super Landroid/support/v7/app/ActionBar$LayoutParams;
.source "Toolbar.java"
.field static final CUSTOM:I = 0x0
.field static final EXPANDED:I = 0x2
.field static final SYSTEM:I = 0x1
.field  mViewType:I
.method public constructor <init>(I)V
.registers 4
const/4 v0, -0x2
const/4 v1, -0x1
invoke-direct {p0, v0, v1, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;-><init>(III)V
return-void
.end method
.method public constructor <init>(II)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
const v0, 0x800013
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I
return-void
.end method
.method public constructor <init>(III)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
iput p3, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->gravity:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
return-void
.end method
.method public constructor <init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
return-void
.end method
.method public constructor <init>(Landroid/support/v7/widget/Toolbar$LayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/support/v7/app/ActionBar$LayoutParams;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
iget v0, p1, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
return-void
.end method
.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
return-void
.end method
.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->mViewType:I
invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar$LayoutParams;->copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
return-void
.end method
.method  copyMarginsFromCompat(Landroid/view/ViewGroup$MarginLayoutParams;)V
.registers 3
iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->leftMargin:I
iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->topMargin:I
iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->rightMargin:I
iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
iput v0, p0, Landroid/support/v7/widget/Toolbar$LayoutParams;->bottomMargin:I
return-void
.end method