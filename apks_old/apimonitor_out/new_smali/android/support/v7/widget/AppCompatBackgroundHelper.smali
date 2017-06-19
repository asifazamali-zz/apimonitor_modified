.class  Landroid/support/v7/widget/AppCompatBackgroundHelper;
.super Ljava/lang/Object;
.source "AppCompatBackgroundHelper.java"
.field private mBackgroundResId:I
.field private mBackgroundTint:Landroid/support/v7/widget/TintInfo;
.field private final mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;
.field private mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
.field private mTmpInfo:Landroid/support/v7/widget/TintInfo;
.field private final mView:Landroid/view/View;
.method constructor <init>(Landroid/view/View;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I
iput-object p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;
return-void
.end method
.method private applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
.registers 7
.parameter
.end parameter
const/4 v3, 0x1
iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;
if-nez v4, :cond_c
new-instance v4, Landroid/support/v7/widget/TintInfo;
invoke-direct {v4}, Landroid/support/v7/widget/TintInfo;-><init>()V
iput-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;
:cond_c
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mTmpInfo:Landroid/support/v7/widget/TintInfo;
invoke-virtual {v0}, Landroid/support/v7/widget/TintInfo;->clear()V
iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
move-result-object v2
if-eqz v2, :cond_1d
iput-boolean v3, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
iput-object v2, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
:cond_1d
iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
move-result-object v1
if-eqz v1, :cond_29
iput-boolean v3, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z
iput-object v1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;
:cond_29
iget-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
if-nez v4, :cond_31
iget-boolean v4, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z
if-eqz v4, :cond_3b
:cond_31
iget-object v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getDrawableState()[I
move-result-object v4
invoke-static {p1, v0, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
:goto_3a
return v3
:cond_3b
const/4 v3, 0x0
goto :goto_3a
.end method
.method private shouldApplyFrameworkTintUsingColorFilter()Z
.registers 5
const/16 v3, 0x15
const/4 v1, 0x1
const/4 v2, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-ge v0, v3, :cond_a
move v1, v2
:cond_9
:goto_9
return v1
:cond_a
if-eq v0, v3, :cond_9
iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-nez v3, :cond_9
move v1, v2
goto :goto_9
.end method
.method  applySupportBackgroundTint()V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_14
invoke-direct {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->shouldApplyFrameworkTintUsingColorFilter()Z
move-result v1
if-eqz v1, :cond_15
invoke-direct {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applyFrameworkTintUsingColorFilter(Landroid/graphics/drawable/Drawable;)Z
move-result v1
if-eqz v1, :cond_15
:cond_14
:goto_14
return-void
:cond_15
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-eqz v1, :cond_25
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
goto :goto_14
:cond_25
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-eqz v1, :cond_14
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I
move-result-object v2
invoke-static {v0, v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
goto :goto_14
.end method
.method  getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method  getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iget-object v0, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method  loadFromAttributes(Landroid/util/AttributeSet;I)V
.registers 8
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v2
sget-object v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper:[I
const/4 v4, 0x0
invoke-static {v2, p1, v3, p2, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
:try_start_d
sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I
invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_31
sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_android_background:I
const/4 v3, -0x1
invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v2
iput v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;
iget-object v3, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v3
iget v4, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I
invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v1
if-eqz v1, :cond_31
invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
:cond_31
sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I
invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_44
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTint:I
invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v3
invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
:cond_44
sget v2, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I
invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_5d
iget-object v2, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
sget v3, Landroid/support/v7/appcompat/R$styleable;->ViewBackgroundHelper_backgroundTintMode:I
const/4 v4, -0x1
invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v3
const/4 v4, 0x0
invoke-static {v3, v4}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
move-result-object v3
invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
:try_end_5d
.catchall {:try_start_d .. :try_end_5d} :catchall_61
:cond_5d
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
return-void
:catchall_61
move-exception v2
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
throw v2
.end method
.method  onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
const/4 v0, -0x1
iput v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V
return-void
.end method
.method  onSetBackgroundResource(I)V
.registers 4
iput p1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundResId:I
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;
if-eqz v0, :cond_19
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mDrawableManager:Landroid/support/v7/widget/AppCompatDrawableManager;
iget-object v1, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
:goto_12
invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V
return-void
:cond_19
const/4 v0, 0x0
goto :goto_12
.end method
.method  setInternalBackgroundTint(Landroid/content/res/ColorStateList;)V
.registers 4
if-eqz p1, :cond_1a
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-nez v0, :cond_d
new-instance v0, Landroid/support/v7/widget/TintInfo;
invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
:cond_d
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
:goto_16
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V
return-void
:cond_1a
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mInternalBackgroundTint:Landroid/support/v7/widget/TintInfo;
goto :goto_16
.end method
.method  setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v7/widget/TintInfo;
invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
:cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V
return-void
.end method
.method  setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v7/widget/TintInfo;
invoke-direct {v0}, Landroid/support/v7/widget/TintInfo;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
:cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
iput-object p1, v0, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;
iget-object v0, p0, Landroid/support/v7/widget/AppCompatBackgroundHelper;->mBackgroundTint:Landroid/support/v7/widget/TintInfo;
const/4 v1, 0x1
iput-boolean v1, v0, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V
return-void
.end method