.class  Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;
.super Landroid/support/v7/widget/ListPopupWindow;
.source "AppCompatSpinner.java"
.field  mAdapter:Landroid/widget/ListAdapter;
.field private mHintText:Ljava/lang/CharSequence;
.field private final mVisibleRect:Landroid/graphics/Rect;
.field final synthetic this$0:Landroid/support/v7/widget/AppCompatSpinner;
.method public constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-direct {p0, p2, p3, p4}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;
invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setAnchorView(Landroid/view/View;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setModal(Z)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setPromptPosition(I)V
new-instance v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;
invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$1;-><init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/support/v7/widget/AppCompatSpinner;)V
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return-void
.end method
.method static synthetic access$001(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
.registers 1
invoke-super {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V
return-void
.end method
.method  computeContentWidth()V
.registers 11
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
const/4 v3, 0x0
if-eqz v0, :cond_8b
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget-object v7, v7, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-static {v7}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v7
if-eqz v7, :cond_83
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget-object v7, v7, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
iget v3, v7, Landroid/graphics/Rect;->right:I
:goto_1c
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->getPaddingLeft()I
move-result v4
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->getPaddingRight()I
move-result v5
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->getWidth()I
move-result v6
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget v7, v7, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
const/4 v8, -0x2
if-ne v7, v8, :cond_99
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;
check-cast v7, Landroid/widget/SpinnerAdapter;
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v9
invoke-virtual {v8, v7, v9}, Landroid/support/v7/widget/AppCompatSpinner;->compatMeasureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
move-result v1
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {v7}, Landroid/support/v7/widget/AppCompatSpinner;->getContext()Landroid/content/Context;
move-result-object v7
invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v7
iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget-object v8, v8, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->left:I
sub-int/2addr v7, v8
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget-object v8, v8, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
iget v8, v8, Landroid/graphics/Rect;->right:I
sub-int v2, v7, v8
if-le v1, v2, :cond_65
move v1, v2
:cond_65
sub-int v7, v6, v4
sub-int/2addr v7, v5
invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I
move-result v7
invoke-virtual {p0, v7}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V
:goto_6f
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-static {v7}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v7
if-eqz v7, :cond_af
sub-int v7, v6, v5
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getWidth()I
move-result v8
sub-int/2addr v7, v8
add-int/2addr v3, v7
:goto_7f
invoke-virtual {p0, v3}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setHorizontalOffset(I)V
return-void
:cond_83
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget-object v7, v7, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
neg-int v3, v7
goto :goto_1c
:cond_8b
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget-object v7, v7, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget-object v8, v8, Landroid/support/v7/widget/AppCompatSpinner;->mTempRect:Landroid/graphics/Rect;
const/4 v9, 0x0
iput v9, v8, Landroid/graphics/Rect;->right:I
iput v9, v7, Landroid/graphics/Rect;->left:I
goto :goto_1c
:cond_99
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget v7, v7, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
const/4 v8, -0x1
if-ne v7, v8, :cond_a7
sub-int v7, v6, v4
sub-int/2addr v7, v5
invoke-virtual {p0, v7}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V
goto :goto_6f
:cond_a7
iget-object v7, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
iget v7, v7, Landroid/support/v7/widget/AppCompatSpinner;->mDropDownWidth:I
invoke-virtual {p0, v7}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setContentWidth(I)V
goto :goto_6f
:cond_af
add-int/2addr v3, v4
goto :goto_7f
.end method
.method public getHintText()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;
return-object v0
.end method
.method  isVisibleToUser(Landroid/view/View;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;
invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 2
invoke-super {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;
return-void
.end method
.method public setPromptText(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;
return-void
.end method
.method public show()V
.registers 6
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->isShowing()Z
move-result v3
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->computeContentWidth()V
const/4 v4, 0x2
invoke-virtual {p0, v4}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setInputMethodMode(I)V
invoke-super {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->getListView()Landroid/widget/ListView;
move-result-object v1
const/4 v4, 0x1
invoke-virtual {v1, v4}, Landroid/widget/ListView;->setChoiceMode(I)V
iget-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I
move-result v4
invoke-virtual {p0, v4}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setSelection(I)V
if-eqz v3, :cond_22
:cond_21
:goto_21
return-void
:cond_22
iget-object v4, p0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {v4}, Landroid/support/v7/widget/AppCompatSpinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;
move-result-object v2
if-eqz v2, :cond_21
new-instance v0, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;
invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$2;-><init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;)V
invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
new-instance v4, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;
invoke-direct {v4, p0, v0}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup$3;-><init>(Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
invoke-virtual {p0, v4}, Landroid/support/v7/widget/AppCompatSpinner$DropdownPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
goto :goto_21
.end method