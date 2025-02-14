.class public Landroid/support/v7/view/menu/ActionMenuItemView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "ActionMenuItemView.java"
.implements Landroid/support/v7/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/support/v7/widget/ActionMenuView$ActionMenuChildView;
.field private static final MAX_ICON_SIZE:I = 0x20
.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"
.field private mAllowTextWithIcon:Z
.field private mExpandedFormat:Z
.field private mForwardingListener:Landroid/support/v7/widget/ForwardingListener;
.field private mIcon:Landroid/graphics/drawable/Drawable;
.field  mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
.field  mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
.field private mMaxIconSize:I
.field private mMinWidth:I
.field  mPopupCallback:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;
.field private mSavedPaddingLeft:I
.field private mTitle:Ljava/lang/CharSequence;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 10
const/4 v5, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z
move-result v3
iput-boolean v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z
sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView:[I
invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionMenuItemView_android_minWidth:I
invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v3
iput v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v3
iget v1, v3, Landroid/util/DisplayMetrics;->density:F
const/high16 v3, 0x4200
mul-float/2addr v3, v1
const/high16 v4, 0x3f00
add-float/2addr v3, v4
float-to-int v3, v3
iput v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I
invoke-virtual {p0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
const/4 v3, -0x1
iput v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I
invoke-virtual {p0, v5}, Landroid/support/v7/view/menu/ActionMenuItemView;->setSaveEnabled(Z)V
return-void
.end method
.method private shouldAllowTextWithIcon()Z
.registers 6
const/16 v4, 0x1e0
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenWidthDp(Landroid/content/res/Resources;)I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I
move-result v1
if-ge v2, v4, :cond_2b
const/16 v3, 0x280
if-lt v2, v3, :cond_26
if-ge v1, v4, :cond_2b
:cond_26
iget v3, v0, Landroid/content/res/Configuration;->orientation:I
const/4 v4, 0x2
if-ne v3, v4, :cond_2d
:cond_2b
const/4 v3, 0x1
:goto_2c
return v3
:cond_2d
const/4 v3, 0x0
goto :goto_2c
.end method
.method private updateTextButtonVisibility()V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_29
move v0, v1
:goto_b
iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_1f
iget-object v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->showsTextAsAction()Z
move-result v3
if-eqz v3, :cond_20
iget-boolean v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z
if-nez v3, :cond_1f
iget-boolean v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z
if-eqz v3, :cond_20
:cond_1f
move v2, v1
:cond_20
and-int/2addr v0, v2
if-eqz v0, :cond_2b
iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;
:goto_25
invoke-virtual {p0, v1}, Landroid/support/v7/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_29
move v0, v2
goto :goto_b
:cond_2b
const/4 v1, 0x0
goto :goto_25
.end method
.method public getItemData()Landroid/support/v7/view/menu/MenuItemImpl;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
return-object v0
.end method
.method public hasText()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V
.registers 4
iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p1, p0}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitleForItemView(Landroid/support/v7/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->getItemId()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setId(I)V
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isVisible()Z
move-result v0
if-eqz v0, :cond_3a
const/4 v0, 0x0
:goto_1e
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setVisibility(I)V
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->isEnabled()Z
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setEnabled(Z)V
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;
if-nez v0, :cond_39
new-instance v0, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
invoke-direct {v0, p0}, Landroid/support/v7/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
iput-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;
:cond_39
return-void
:cond_3a
const/16 v0, 0x8
goto :goto_1e
.end method
.method public needsDividerAfter()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z
move-result v0
return v0
.end method
.method public needsDividerBefore()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
iget-object v1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-interface {v0, v1}, Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroid/support/v7/view/menu/MenuItemImpl;)Z
:cond_b
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->shouldAllowTextWithIcon()Z
move-result v0
iput-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z
invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V
return-void
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 15
const/4 v10, 0x1
const/4 v9, 0x0
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z
move-result v11
if-eqz v11, :cond_9
:goto_8
return v9
:cond_9
const/4 v11, 0x2
new-array v6, v11, [I
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p0, v6}, Landroid/support/v7/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V
invoke-virtual {p0, v2}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getWidth()I
move-result v8
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getHeight()I
move-result v3
aget v11, v6, v10
div-int/lit8 v12, v3, 0x2
add-int v4, v11, v12
aget v11, v6, v9
div-int/lit8 v12, v8, 0x2
add-int v5, v11, v12
invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v11
if-nez v11, :cond_41
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v11
invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v11
iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I
sub-int v5, v7, v5
:cond_41
iget-object v11, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v11}, Landroid/support/v7/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;
move-result-object v11
invoke-static {v1, v11, v9}, Ldroidbox/android/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v2}, Landroid/graphics/Rect;->height()I
move-result v11
if-ge v4, v11, :cond_62
const v9, 0x800035
aget v11, v6, v10
add-int/2addr v11, v3
iget v12, v2, Landroid/graphics/Rect;->top:I
sub-int/2addr v11, v12
invoke-virtual {v0, v9, v5, v11}, Landroid/widget/Toast;->setGravity(III)V
:goto_5d
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
move v9, v10
goto :goto_8
:cond_62
const/16 v11, 0x51
invoke-virtual {v0, v11, v9, v3}, Landroid/widget/Toast;->setGravity(III)V
goto :goto_5d
.end method
.method protected onMeasure(II)V
.registers 15
const/high16 v11, 0x4000
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->hasText()Z
move-result v3
if-eqz v3, :cond_1d
iget v7, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I
if-ltz v7, :cond_1d
iget v7, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I
move-result v8
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I
move-result v9
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I
move-result v10
invoke-super {p0, v7, v8, v9, v10}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V
:cond_1d
invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v6
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getMeasuredWidth()I
move-result v1
const/high16 v7, -0x8000
if-ne v5, v7, :cond_6d
iget v7, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I
invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I
move-result v2
:goto_36
if-eq v5, v11, :cond_45
iget v7, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I
if-lez v7, :cond_45
if-ge v1, v2, :cond_45
invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v7
invoke-super {p0, v7, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V
:cond_45
if-nez v3, :cond_6c
iget-object v7, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;
if-eqz v7, :cond_6c
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getMeasuredWidth()I
move-result v4
iget-object v7, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;
invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v7
invoke-virtual {v7}, Landroid/graphics/Rect;->width()I
move-result v0
sub-int v7, v4, v0
div-int/lit8 v7, v7, 0x2
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingTop()I
move-result v8
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingRight()I
move-result v9
invoke-virtual {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->getPaddingBottom()I
move-result v10
invoke-super {p0, v7, v8, v9, v10}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V
:cond_6c
return-void
:cond_6d
iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMinWidth:I
goto :goto_36
.end method
.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 3
const/4 v0, 0x0
invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatTextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->hasSubMenu()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mForwardingListener:Landroid/support/v7/widget/ForwardingListener;
invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
goto :goto_15
.end method
.method public prefersCondensedTitle()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public setCheckable(Z)V
.registers 2
return-void
.end method
.method public setChecked(Z)V
.registers 2
return-void
.end method
.method public setExpandedFormat(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z
if-eq v0, p1, :cond_f
iput-boolean p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mExpandedFormat:Z
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemData:Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v0}, Landroid/support/v7/view/menu/MenuItemImpl;->actionFormatChanged()V
:cond_f
return-void
.end method
.method public setIcon(Landroid/graphics/drawable/Drawable;)V
.registers 9
const/4 v6, 0x0
const/4 v5, 0x0
iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_2f
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v2
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
iget v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I
if-le v2, v3, :cond_1d
iget v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I
int-to-float v3, v3
int-to-float v4, v2
div-float v1, v3, v4
iget v2, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I
int-to-float v3, v0
mul-float/2addr v3, v1
float-to-int v0, v3
:cond_1d
iget v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I
if-le v0, v3, :cond_2c
iget v3, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I
int-to-float v3, v3
int-to-float v4, v0
div-float v1, v3, v4
iget v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mMaxIconSize:I
int-to-float v3, v2
mul-float/2addr v3, v1
float-to-int v2, v3
:cond_2c
invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_2f
invoke-virtual {p0, p1, v5, v5, v5}, Landroid/support/v7/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V
return-void
.end method
.method public setItemInvoker(Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mItemInvoker:Landroid/support/v7/view/menu/MenuBuilder$ItemInvoker;
return-void
.end method
.method public setPadding(IIII)V
.registers 5
iput p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I
invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;->setPadding(IIII)V
return-void
.end method
.method public setPopupCallback(Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mPopupCallback:Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;
return-void
.end method
.method public setShortcut(ZC)V
.registers 3
return-void
.end method
.method public setTitle(Ljava/lang/CharSequence;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;
iget-object v0, p0, Landroid/support/v7/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;
invoke-virtual {p0, v0}, Landroid/support/v7/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V
invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V
return-void
.end method
.method public showsIcon()Z
.registers 2
const/4 v0, 0x1
return v0
.end method