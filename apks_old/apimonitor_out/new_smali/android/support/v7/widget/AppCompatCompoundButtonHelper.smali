.class  Landroid/support/v7/widget/AppCompatCompoundButtonHelper;
.super Ljava/lang/Object;
.source "AppCompatCompoundButtonHelper.java"
.field private mButtonTintList:Landroid/content/res/ColorStateList;
.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;
.field private mHasButtonTint:Z
.field private mHasButtonTintMode:Z
.field private mSkipNextApply:Z
.field private final mView:Landroid/widget/CompoundButton;
.method constructor <init>(Landroid/widget/CompoundButton;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;
iput-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z
iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
return-void
.end method
.method  applyButtonTint()V
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
invoke-static {v1}, Landroid/support/v4/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_3e
iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z
if-nez v1, :cond_10
iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z
if-eqz v1, :cond_3e
:cond_10
invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z
if-eqz v1, :cond_21
iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;
invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
:cond_21
iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z
if-eqz v1, :cond_2a
iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;
invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
:cond_2a
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v1
if-eqz v1, :cond_39
iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_39
iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_3e
return-void
.end method
.method  getCompoundPaddingLeft(I)I
.registers 5
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x11
if-ge v1, v2, :cond_13
iget-object v1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
invoke-static {v1}, Landroid/support/v4/widget/CompoundButtonCompat;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
add-int/2addr p1, v1
:cond_13
return p1
.end method
.method  getSupportButtonTintList()Landroid/content/res/ColorStateList;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;
return-object v0
.end method
.method  getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;
return-object v0
.end method
.method  loadFromAttributes(Landroid/util/AttributeSet;I)V
.registers 8
const/4 v4, 0x0
iget-object v2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
invoke-virtual {v2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
move-result-object v2
sget-object v3, Landroid/support/v7/appcompat/R$styleable;->CompoundButton:[I
invoke-virtual {v2, p1, v3, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
:try_start_d
sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_android_button:I
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_2d
sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_android_button:I
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
if-eqz v1, :cond_2d
iget-object v2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
iget-object v3, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
invoke-virtual {v3}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_2d
sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTint:I
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_40
iget-object v2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
sget v3, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTint:I
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v3
invoke-static {v2, v3}, Landroid/support/v4/widget/CompoundButtonCompat;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
:cond_40
sget v2, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTintMode:I
invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_59
iget-object v2, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mView:Landroid/widget/CompoundButton;
sget v3, Landroid/support/v7/appcompat/R$styleable;->CompoundButton_buttonTintMode:I
const/4 v4, -0x1
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v3
const/4 v4, 0x0
invoke-static {v3, v4}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
move-result-object v3
invoke-static {v2, v3}, Landroid/support/v4/widget/CompoundButtonCompat;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
:try_end_59
.catchall {:try_start_d .. :try_end_59} :catchall_5d
:cond_59
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
:catchall_5d
move-exception v2
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
throw v2
.end method
.method  onSetButtonDrawable()V
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z
if-eqz v0, :cond_8
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z
:goto_7
return-void
:cond_8
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mSkipNextApply:Z
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V
goto :goto_7
.end method
.method  setSupportButtonTintList(Landroid/content/res/ColorStateList;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintList:Landroid/content/res/ColorStateList;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTint:Z
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V
return-void
.end method
.method  setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 3
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->mHasButtonTintMode:Z
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatCompoundButtonHelper;->applyButtonTint()V
return-void
.end method