.class  Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;
.super Landroid/graphics/drawable/Drawable;
.source "DrawableWrapperGingerbread.java"
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/support/v4/graphics/drawable/DrawableWrapper;
.implements Landroid/support/v4/graphics/drawable/TintAwareDrawable;
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;
.field private mColorFilterSet:Z
.field private mCurrentColor:I
.field private mCurrentMode:Landroid/graphics/PorterDuff$Mode;
.field  mDrawable:Landroid/graphics/drawable/Drawable;
.field private mMutated:Z
.field  mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
sput-object v0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;
return-void
.end method
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
.registers 3
.parameter
.end parameter
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
invoke-virtual {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
invoke-direct {p0, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->updateLocalState(Landroid/content/res/Resources;)V
return-void
.end method
.method private updateLocalState(Landroid/content/res/Resources;)V
.registers 4
.parameter
.end parameter
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
if-eqz v1, :cond_15
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;
if-eqz v1, :cond_15
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
iget-object v1, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;
invoke-virtual {p0, v1, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->newDrawableFromState(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_15
return-void
.end method
.method private updateTint([I)Z
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->isCompatTintEnabled()Z
move-result v5
if-nez v5, :cond_9
:goto_8
:cond_8
return v3
:cond_9
iget-object v5, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
iget-object v1, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;
iget-object v5, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
iget-object v2, v5, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;
if-eqz v1, :cond_34
if-eqz v2, :cond_34
invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I
move-result v5
invoke-virtual {v1, p1, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I
move-result v0
iget-boolean v5, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mColorFilterSet:Z
if-eqz v5, :cond_29
iget v5, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mCurrentColor:I
if-ne v0, v5, :cond_29
iget-object v5, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;
if-eq v2, v5, :cond_8
:cond_29
invoke-virtual {p0, v0, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
iput v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mCurrentColor:I
iput-object v2, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mCurrentMode:Landroid/graphics/PorterDuff$Mode;
iput-boolean v4, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mColorFilterSet:Z
move v3, v4
goto :goto_8
:cond_34
iput-boolean v3, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mColorFilterSet:Z
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->clearColorFilter()V
goto :goto_8
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method public getChangingConfigurations()I
.registers 3
invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
move-result v1
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->getChangingConfigurations()I
move-result v0
:goto_e
or-int/2addr v0, v1
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I
move-result v1
or-int/2addr v0, v1
return v0
:cond_17
const/4 v0, 0x0
goto :goto_e
.end method
.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->canConstantState()Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->getChangingConfigurations()I
move-result v1
iput v1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mChangingConfigurations:I
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
:goto_16
return-object v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method public getCurrent()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getIntrinsicHeight()I
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
return v0
.end method
.method public getIntrinsicWidth()I
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
return v0
.end method
.method public getMinimumHeight()I
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I
move-result v0
return v0
.end method
.method public getMinimumWidth()I
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I
move-result v0
return v0
.end method
.method public getOpacity()I
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v0
return v0
.end method
.method public getPadding(Landroid/graphics/Rect;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
move-result v0
return v0
.end method
.method public getState()[I
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I
move-result-object v0
return-object v0
.end method
.method public getTransparentRegion()Landroid/graphics/Region;
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;
move-result-object v0
return-object v0
.end method
.method public final getWrappedDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 2
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->invalidateSelf()V
return-void
.end method
.method protected isCompatTintEnabled()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isStateful()Z
.registers 3
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->isCompatTintEnabled()Z
move-result v1
if-eqz v1, :cond_20
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
if-eqz v1, :cond_20
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
iget-object v0, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;
:goto_e
if-eqz v0, :cond_16
invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z
move-result v1
if-nez v1, :cond_1e
:cond_16
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v1
if-eqz v1, :cond_22
:cond_1e
const/4 v1, 0x1
:goto_1f
return v1
:cond_20
const/4 v0, 0x0
goto :goto_e
:cond_22
const/4 v1, 0x0
goto :goto_1f
.end method
.method public mutate()Landroid/graphics/drawable/Drawable;
.registers 3
iget-boolean v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mMutated:Z
if-nez v0, :cond_2e
invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-ne v0, p0, :cond_2e
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_19
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
:cond_19
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
if-eqz v0, :cond_2b
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_2f
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v0
:goto_29
iput-object v0, v1, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;
:cond_2b
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mMutated:Z
:cond_2e
return-object p0
:cond_2f
const/4 v0, 0x0
goto :goto_29
.end method
.method  mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
.registers 4
new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperStateBase;
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperStateBase;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
return-object v0
.end method
.method protected newDrawableFromState(Landroid/graphics/drawable/Drawable$ConstantState;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.registers 4
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method protected onBoundsChange(Landroid/graphics/Rect;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
:cond_9
return-void
.end method
.method protected onLevelChange(I)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
move-result v0
return v0
.end method
.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
.registers 6
invoke-virtual {p0, p2, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->scheduleSelf(Ljava/lang/Runnable;J)V
return-void
.end method
.method public setAlpha(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
return-void
.end method
.method public setChangingConfigurations(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
.method public setDither(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V
return-void
.end method
.method public setFilterBitmap(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V
return-void
.end method
.method public setState([I)Z
.registers 4
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move-result v0
invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->updateTint([I)Z
move-result v1
if-nez v1, :cond_e
if-eqz v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public setTint(I)V
.registers 3
invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setTintList(Landroid/content/res/ColorStateList;)V
return-void
.end method
.method public setTintList(Landroid/content/res/ColorStateList;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
iput-object p1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTint:Landroid/content/res/ColorStateList;
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->getState()[I
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->updateTint([I)Z
return-void
.end method
.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
iput-object p1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mTintMode:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->getState()[I
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->updateTint([I)Z
return-void
.end method
.method public setVisible(ZZ)Z
.registers 4
invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
move-result v0
if-eqz v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public final setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_a
iput-object p1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mDrawable:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_3a
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z
move-result v0
const/4 v1, 0x1
invoke-virtual {p0, v0, v1}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setVisible(ZZ)Z
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setState([I)Z
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setLevel(I)Z
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->setBounds(Landroid/graphics/Rect;)V
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
if-eqz v0, :cond_3a
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;->mDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;
:cond_3a
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->invalidateSelf()V
return-void
.end method
.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
.registers 3
invoke-virtual {p0, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread;->unscheduleSelf(Ljava/lang/Runnable;)V
return-void
.end method