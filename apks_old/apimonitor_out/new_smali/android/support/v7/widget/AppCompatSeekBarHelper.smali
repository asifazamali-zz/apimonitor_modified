.class  Landroid/support/v7/widget/AppCompatSeekBarHelper;
.super Landroid/support/v7/widget/AppCompatProgressBarHelper;
.source "AppCompatSeekBarHelper.java"
.field private mHasTickMarkTint:Z
.field private mHasTickMarkTintMode:Z
.field private mTickMark:Landroid/graphics/drawable/Drawable;
.field private mTickMarkTintList:Landroid/content/res/ColorStateList;
.field private mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;
.field private final mView:Landroid/widget/SeekBar;
.method constructor <init>(Landroid/widget/SeekBar;)V
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;)V
iput-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;
iput-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
return-void
.end method
.method private applyTickMarkTint()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_41
iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z
if-nez v0, :cond_c
iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z
if-eqz v0, :cond_41
:cond_c
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z
if-eqz v0, :cond_23
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;
invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
:cond_23
iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z
if-eqz v0, :cond_2e
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;
invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
:cond_2e
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_41
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_41
return-void
.end method
.method  drawTickMarks(Landroid/graphics/Canvas;)V
.registers 13
const/4 v2, 0x1
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
if-eqz v8, :cond_6b
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I
move-result v0
if-le v0, v2, :cond_6b
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v7
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
if-ltz v7, :cond_66
div-int/lit8 v3, v7, 0x2
:goto_1d
if-ltz v1, :cond_21
div-int/lit8 v2, v1, 0x2
:cond_21
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
neg-int v9, v3
neg-int v10, v2
invoke-virtual {v8, v9, v10, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v8}, Landroid/widget/SeekBar;->getWidth()I
move-result v8
iget-object v9, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v9}, Landroid/widget/SeekBar;->getPaddingLeft()I
move-result v9
sub-int/2addr v8, v9
iget-object v9, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v9}, Landroid/widget/SeekBar;->getPaddingRight()I
move-result v9
sub-int/2addr v8, v9
int-to-float v8, v8
int-to-float v9, v0
div-float v6, v8, v9
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v5
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v8}, Landroid/widget/SeekBar;->getPaddingLeft()I
move-result v8
int-to-float v8, v8
iget-object v9, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v9}, Landroid/widget/SeekBar;->getHeight()I
move-result v9
div-int/lit8 v9, v9, 0x2
int-to-float v9, v9
invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V
const/4 v4, 0x0
:goto_58
if-gt v4, v0, :cond_68
iget-object v8, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
const/4 v8, 0x0
invoke-virtual {p1, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V
add-int/lit8 v4, v4, 0x1
goto :goto_58
:cond_66
move v3, v2
goto :goto_1d
:cond_68
invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V
:cond_6b
return-void
.end method
.method  drawableStateChanged()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_1b
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v1
if-eqz v1, :cond_1b
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move-result v1
if-eqz v1, :cond_1b
iget-object v1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_1b
return-void
.end method
.method  getTickMark()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method  getTickMarkTintList()Landroid/content/res/ColorStateList;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;
return-object v0
.end method
.method  getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;
return-object v0
.end method
.method  jumpDrawablesToCurrentState()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
:cond_9
return-void
.end method
.method  loadFromAttributes(Landroid/util/AttributeSet;I)V
.registers 10
const/4 v6, 0x1
invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V
iget-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v3}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;
move-result-object v3
sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar:[I
const/4 v5, 0x0
invoke-static {v3, p1, v4, p2, v5}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_android_thumb:I
invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_1e
iget-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
:cond_1e
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMark:I
invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->setTickMark(Landroid/graphics/drawable/Drawable;)V
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I
invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_40
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTintMode:I
const/4 v4, -0x1
invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v3
iget-object v4, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;
invoke-static {v3, v4}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;
iput-boolean v6, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z
:cond_40
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I
invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_52
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatSeekBar_tickMarkTint:I
invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;
iput-boolean v6, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z
:cond_52
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V
return-void
.end method
.method  setTickMark(Landroid/graphics/drawable/Drawable;)V
.registers 4
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_a
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMark:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_2e
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I
move-result v0
invoke-static {p1, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v0}, Landroid/widget/SeekBar;->getDrawableState()[I
move-result-object v0
invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_2b
invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V
:cond_2e
iget-object v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mView:Landroid/widget/SeekBar;
invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V
return-void
.end method
.method  setTickMarkTintList(Landroid/content/res/ColorStateList;)V
.registers 3
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintList:Landroid/content/res/ColorStateList;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTint:Z
invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V
return-void
.end method
.method  setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 3
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mTickMarkTintMode:Landroid/graphics/PorterDuff$Mode;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/AppCompatSeekBarHelper;->mHasTickMarkTintMode:Z
invoke-direct {p0}, Landroid/support/v7/widget/AppCompatSeekBarHelper;->applyTickMarkTint()V
return-void
.end method