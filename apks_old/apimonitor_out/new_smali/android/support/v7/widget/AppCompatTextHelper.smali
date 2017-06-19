.class  Landroid/support/v7/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "AppCompatTextHelper.java"
.field private mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;
.field private mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;
.field private mDrawableRightTint:Landroid/support/v7/widget/TintInfo;
.field private mDrawableTopTint:Landroid/support/v7/widget/TintInfo;
.field final mView:Landroid/widget/TextView;
.method constructor <init>(Landroid/widget/TextView;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
return-void
.end method
.method static create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_c
new-instance v0, Landroid/support/v7/widget/AppCompatTextHelperV17;
invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelperV17;-><init>(Landroid/widget/TextView;)V
:goto_b
return-object v0
:cond_c
new-instance v0, Landroid/support/v7/widget/AppCompatTextHelper;
invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatTextHelper;-><init>(Landroid/widget/TextView;)V
goto :goto_b
.end method
.method protected static createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
.registers 6
invoke-virtual {p1, p0, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v1
if-eqz v1, :cond_11
new-instance v0, Landroid/support/v7/widget/TintInfo;
invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V
const/4 v2, 0x1
iput-boolean v2, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method final applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
.registers 4
if-eqz p1, :cond_d
if-eqz p2, :cond_d
iget-object v0, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getDrawableState()[I
move-result-object v0
invoke-static {p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
:cond_d
return-void
.end method
.method  applyCompoundDrawablesTints()V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;
if-nez v1, :cond_10
iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;
if-nez v1, :cond_10
iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;
if-nez v1, :cond_10
iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;
if-eqz v1, :cond_36
:cond_10
iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
move-result-object v0
const/4 v1, 0x0
aget-object v1, v0, v1
iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;
invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
const/4 v1, 0x1
aget-object v1, v0, v1
iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;
invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
const/4 v1, 0x2
aget-object v1, v0, v1
iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;
invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
const/4 v1, 0x3
aget-object v1, v0, v1
iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;
invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawableTint(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;)V
:cond_36
return-void
.end method
.method  loadFromAttributes(Landroid/util/AttributeSet;I)V
.registers 16
const/16 v12, 0x17
const/4 v11, -0x1
const/4 v10, 0x0
iget-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;
move-result-object v4
invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;
move-result-object v5
sget-object v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper:[I
invoke-static {v4, p1, v9, p2, v10}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I
invoke-virtual {v0, v9, v11}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v3
sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_2e
sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I
invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v9
invoke-static {v4, v5, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
move-result-object v9
iput-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableLeftTint:Landroid/support/v7/widget/TintInfo;
:cond_2e
sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_42
sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I
invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v9
invoke-static {v4, v5, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
move-result-object v9
iput-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableTopTint:Landroid/support/v7/widget/TintInfo;
:cond_42
sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_56
sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I
invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v9
invoke-static {v4, v5, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
move-result-object v9
iput-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableRightTint:Landroid/support/v7/widget/TintInfo;
:cond_56
sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_6a
sget v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I
invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v9
invoke-static {v4, v5, v9}, Landroid/support/v7/widget/AppCompatTextHelper;->createTintInfo(Landroid/content/Context;Landroid/support/v7/widget/AppCompatDrawableManager;I)Landroid/support/v7/widget/TintInfo;
move-result-object v9
iput-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mDrawableBottomTint:Landroid/support/v7/widget/TintInfo;
:cond_6a
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
iget-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;
move-result-object v9
instance-of v6, v9, Landroid/text/method/PasswordTransformationMethod;
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
if-eq v3, v11, :cond_b5
sget-object v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I
invoke-static {v4, v3, v9}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
if-nez v6, :cond_92
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_92
const/4 v2, 0x1
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I
invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z
move-result v1
:cond_92
sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
if-ge v9, v12, :cond_b2
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_a4
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v7
:cond_a4
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_b2
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v8
:cond_b2
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
:cond_b5
sget-object v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I
invoke-static {v4, p1, v9, p2, v10}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
if-nez v6, :cond_cc
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_cc
const/4 v2, 0x1
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I
invoke-virtual {v0, v9, v10}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z
move-result v1
:cond_cc
sget v9, Landroid/os/Build$VERSION;->SDK_INT:I
if-ge v9, v12, :cond_ec
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_de
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v7
:cond_de
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v9
if-eqz v9, :cond_ec
sget v9, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColorHint:I
invoke-virtual {v0, v9}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v8
:cond_ec
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
if-eqz v7, :cond_f6
iget-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
:cond_f6
if-eqz v8, :cond_fd
iget-object v9, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
invoke-virtual {v9, v8}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V
:cond_fd
if-nez v6, :cond_104
if-eqz v2, :cond_104
invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V
:cond_104
return-void
.end method
.method  onSetTextAppearance(Landroid/content/Context;I)V
.registers 7
sget-object v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I
invoke-static {p1, p2, v2}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I
invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_18
sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z
move-result v2
invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatTextHelper;->setAllCaps(Z)V
:cond_18
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x17
if-ge v2, v3, :cond_33
sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I
invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_33
sget v2, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I
invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v1
if-eqz v1, :cond_33
iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
:cond_33
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
return-void
.end method
.method  setAllCaps(Z)V
.registers 5
iget-object v1, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
if-eqz p1, :cond_13
new-instance v0, Landroid/support/v7/text/AllCapsTransformationMethod;
iget-object v2, p0, Landroid/support/v7/widget/AppCompatTextHelper;->mView:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V
:goto_f
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_f
.end method