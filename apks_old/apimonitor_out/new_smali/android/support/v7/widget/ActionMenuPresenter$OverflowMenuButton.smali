.class  Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "ActionMenuPresenter.java"
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
.field private final mTempPts:[F
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V
.registers 6
const/4 v2, 0x1
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;
const/4 v0, 0x0
sget v1, Landroid/support/v7/appcompat/R$attr;->actionOverflowButtonStyle:I
invoke-direct {p0, p2, v0, v1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x2
new-array v0, v0, [F
iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->mTempPts:[F
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setClickable(Z)V
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setFocusable(Z)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setVisibility(I)V
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setEnabled(Z)V
new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;
invoke-direct {v0, p0, p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton$1;-><init>(Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;Landroid/view/View;Landroid/support/v7/widget/ActionMenuPresenter;)V
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
return-void
.end method
.method public needsDividerAfter()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public needsDividerBefore()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public performClick()Z
.registers 3
const/4 v1, 0x1
invoke-super {p0}, Landroid/support/v7/widget/AppCompatImageView;->performClick()Z
move-result v0
if-eqz v0, :cond_8
:goto_7
return v1
:cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->playSoundEffect(I)V
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter;->showOverflowMenu()Z
goto :goto_7
.end method
.method protected setFrame(IIII)Z
.registers 19
invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/AppCompatImageView;->setFrame(IIII)Z
move-result v3
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v4, :cond_45
if-eqz v0, :cond_45
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getWidth()I
move-result v9
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getHeight()I
move-result v6
invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I
move-result v10
div-int/lit8 v5, v10, 0x2
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingLeft()I
move-result v10
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingRight()I
move-result v11
sub-int v7, v10, v11
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingTop()I
move-result v10
invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;->getPaddingBottom()I
move-result v11
sub-int v8, v10, v11
add-int v10, v9, v7
div-int/lit8 v1, v10, 0x2
add-int v10, v6, v8
div-int/lit8 v2, v10, 0x2
sub-int v10, v1, v5
sub-int v11, v2, v5
add-int v12, v1, v5
add-int v13, v2, v5
invoke-static {v0, v10, v11, v12, v13}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
:cond_45
return v3
.end method