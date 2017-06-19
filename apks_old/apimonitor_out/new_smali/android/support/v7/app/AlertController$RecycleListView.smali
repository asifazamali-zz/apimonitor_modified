.class public Landroid/support/v7/app/AlertController$RecycleListView;
.super Landroid/widget/ListView;
.source "AlertController.java"
.field private final mPaddingBottomNoButtons:I
.field private final mPaddingTopNoTitle:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AlertController$RecycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, -0x1
invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
sget-object v1, Landroid/support/v7/appcompat/R$styleable;->RecycleListView:[I
invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
sget v1, Landroid/support/v7/appcompat/R$styleable;->RecycleListView_paddingBottomNoButtons:I
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v1
iput v1, p0, Landroid/support/v7/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I
sget v1, Landroid/support/v7/appcompat/R$styleable;->RecycleListView_paddingTopNoTitle:I
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v1
iput v1, p0, Landroid/support/v7/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I
return-void
.end method
.method public setHasDecor(ZZ)V
.registers 7
if-eqz p2, :cond_4
if-nez p1, :cond_1b
:cond_4
invoke-virtual {p0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingLeft()I
move-result v1
if-eqz p1, :cond_1c
invoke-virtual {p0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingTop()I
move-result v3
:goto_e
invoke-virtual {p0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingRight()I
move-result v2
if-eqz p2, :cond_1f
invoke-virtual {p0}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingBottom()I
move-result v0
:goto_18
invoke-virtual {p0, v1, v3, v2, v0}, Landroid/support/v7/app/AlertController$RecycleListView;->setPadding(IIII)V
:cond_1b
return-void
:cond_1c
iget v3, p0, Landroid/support/v7/app/AlertController$RecycleListView;->mPaddingTopNoTitle:I
goto :goto_e
:cond_1f
iget v0, p0, Landroid/support/v7/app/AlertController$RecycleListView;->mPaddingBottomNoButtons:I
goto :goto_18
.end method