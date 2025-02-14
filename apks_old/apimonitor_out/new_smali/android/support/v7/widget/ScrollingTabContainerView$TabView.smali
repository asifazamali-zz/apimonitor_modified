.class  Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "ScrollingTabContainerView.java"
.implements Landroid/view/View$OnLongClickListener;
.field private final BG_ATTRS:[I
.field private mCustomView:Landroid/view/View;
.field private mIconView:Landroid/widget/ImageView;
.field private mTab:Landroid/support/v7/app/ActionBar$Tab;
.field private mTextView:Landroid/widget/TextView;
.field final synthetic this$0:Landroid/support/v7/widget/ScrollingTabContainerView;
.method public constructor <init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/support/v7/app/ActionBar$Tab;Z)V
.registers 10
const/4 v4, 0x0
const/4 v3, 0x0
iput-object p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;
sget v1, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I
invoke-direct {p0, p2, v4, v1}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v1, 0x1
new-array v1, v1, [I
const v2, 0x10100d4
aput v2, v1, v3
iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I
iput-object p3, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->BG_ATTRS:[I
sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarTabStyle:I
invoke-static {p2, v4, v1, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v1
if-eqz v1, :cond_2a
invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_2a
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
if-eqz p4, :cond_35
const v1, 0x800013
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setGravity(I)V
:cond_35
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->update()V
return-void
.end method
.method public bindTab(Landroid/support/v7/app/ActionBar$Tab;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->update()V
return-void
.end method
.method public getTab()Landroid/support/v7/app/ActionBar$Tab;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;
return-object v0
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
const-class v0, Landroid/support/v7/app/ActionBar$Tab;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_12
const-class v0, Landroid/support/v7/app/ActionBar$Tab;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
:cond_12
return-void
.end method
.method public onLongClick(Landroid/view/View;)Z
.registers 11
const/4 v7, 0x0
const/4 v6, 0x2
new-array v3, v6, [I
invoke-virtual {p0, v3}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getLocationOnScreen([I)V
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getWidth()I
move-result v5
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getHeight()I
move-result v2
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v6
iget v4, v6, Landroid/util/DisplayMetrics;->widthPixels:I
iget-object v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;
invoke-virtual {v6}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v6
invoke-static {v1, v6, v7}, Ldroidbox/android/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
const/16 v6, 0x31
aget v7, v3, v7
div-int/lit8 v8, v5, 0x2
add-int/2addr v7, v8
div-int/lit8 v8, v4, 0x2
sub-int/2addr v7, v8
invoke-virtual {v0, v6, v7, v2}, Landroid/widget/Toast;->setGravity(III)V
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const/4 v6, 0x1
return v6
.end method
.method public onMeasure(II)V
.registers 5
invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;
iget v0, v0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I
if-lez v0, :cond_20
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getMeasuredWidth()I
move-result v0
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;
iget v1, v1, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I
if-le v0, v1, :cond_20
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->this$0:Landroid/support/v7/widget/ScrollingTabContainerView;
iget v0, v0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I
const/high16 v1, 0x4000
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v0
invoke-super {p0, v0, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V
:cond_20
return-void
.end method
.method public setSelected(Z)V
.registers 4
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->isSelected()Z
move-result v1
if-eq v1, p1, :cond_13
const/4 v0, 0x1
:goto_7
invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->setSelected(Z)V
if-eqz v0, :cond_12
if-eqz p1, :cond_12
const/4 v1, 0x4
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->sendAccessibilityEvent(I)V
:cond_12
return-void
:cond_13
const/4 v0, 0x0
goto :goto_7
.end method
.method public update()V
.registers 16
const/16 v14, 0x10
const/16 v11, 0x8
const/4 v13, -0x2
const/4 v9, 0x0
const/4 v12, 0x0
iget-object v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTab:Landroid/support/v7/app/ActionBar$Tab;
invoke-virtual {v6}, Landroid/support/v7/app/ActionBar$Tab;->getCustomView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_39
invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eq v1, p0, :cond_1f
if-eqz v1, :cond_1c
check-cast v1, Landroid/view/ViewGroup;
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_1c
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V
:cond_1f
iput-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;
iget-object v9, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
if-eqz v9, :cond_2a
iget-object v9, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
invoke-virtual {v9, v11}, Landroid/widget/TextView;->setVisibility(I)V
:cond_2a
iget-object v9, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
if-eqz v9, :cond_38
iget-object v9, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v9, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_38
:goto_38
return-void
:cond_39
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;
if-eqz v10, :cond_44
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;
invoke-virtual {p0, v10}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->removeView(Landroid/view/View;)V
iput-object v12, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mCustomView:Landroid/view/View;
:cond_44
invoke-virtual {v6}, Landroid/support/v7/app/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v6}, Landroid/support/v7/app/ActionBar$Tab;->getText()Ljava/lang/CharSequence;
move-result-object v7
if-eqz v3, :cond_c8
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
if-nez v10, :cond_6a
new-instance v4, Landroid/support/v7/widget/AppCompatImageView;
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;
move-result-object v10
invoke-direct {v4, v10}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V
new-instance v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
invoke-direct {v5, v13, v13}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V
iput v14, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I
invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0, v4, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;I)V
iput-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
:cond_6a
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
invoke-virtual {v10, v9}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_74
:goto_74
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v10
if-nez v10, :cond_d7
const/4 v2, 0x1
:goto_7b
if-eqz v2, :cond_d9
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
if-nez v10, :cond_a0
new-instance v8, Landroid/support/v7/widget/AppCompatTextView;
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getContext()Landroid/content/Context;
move-result-object v10
sget v11, Landroid/support/v7/appcompat/R$attr;->actionBarTabTextStyle:I
invoke-direct {v8, v10, v12, v11}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v8, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
new-instance v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
invoke-direct {v5, v13, v13}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V
iput v14, v5, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;->gravity:I
invoke-virtual {v8, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0, v8}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->addView(Landroid/view/View;)V
iput-object v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
:cond_a0
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
invoke-virtual {v10, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
invoke-virtual {v10, v9}, Landroid/widget/TextView;->setVisibility(I)V
:cond_aa
:goto_aa
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
if-eqz v10, :cond_b7
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
invoke-virtual {v6}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v11
invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
:cond_b7
if-nez v2, :cond_e8
invoke-virtual {v6}, Landroid/support/v7/app/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v10
invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v10
if-nez v10, :cond_e8
invoke-virtual {p0, p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
goto/16 :goto_38
:cond_c8
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
if-eqz v10, :cond_74
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mIconView:Landroid/widget/ImageView;
invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_74
:cond_d7
move v2, v9
goto :goto_7b
:cond_d9
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
if-eqz v10, :cond_aa
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v10, p0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->mTextView:Landroid/widget/TextView;
invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_aa
:cond_e8
invoke-virtual {p0, v12}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
invoke-virtual {p0, v9}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setLongClickable(Z)V
goto/16 :goto_38
.end method