.class  Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;
.source "DrawableWrapperLollipop.java"
.method constructor <init>(Landroid/graphics/drawable/Drawable;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
return-void
.end method
.method public getDirtyBounds()Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getDirtyBounds()Landroid/graphics/Rect;
move-result-object v0
return-object v0
.end method
.method public getOutline(Landroid/graphics/Outline;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V
return-void
.end method
.method protected isCompatTintEnabled()Z
.registers 5
const/4 v1, 0x0
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x15
if-ne v2, v3, :cond_16
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;
instance-of v2, v0, Landroid/graphics/drawable/GradientDrawable;
if-nez v2, :cond_15
instance-of v2, v0, Landroid/graphics/drawable/DrawableContainer;
if-nez v2, :cond_15
instance-of v2, v0, Landroid/graphics/drawable/InsetDrawable;
if-eqz v2, :cond_16
:cond_15
const/4 v1, 0x1
:cond_16
return v1
.end method
.method  mutateConstantState()Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
.registers 4
new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop$DrawableWrapperStateLollipop;
iget-object v1, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mState:Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop$DrawableWrapperStateLollipop;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
return-object v0
.end method
.method public setHotspot(FF)V
.registers 4
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V
return-void
.end method
.method public setHotspotBounds(IIII)V
.registers 6
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V
return-void
.end method
.method public setState([I)Z
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setState([I)Z
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->invalidateSelf()V
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public setTint(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->isCompatTintEnabled()Z
move-result v0
if-eqz v0, :cond_a
invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setTint(I)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V
goto :goto_9
.end method
.method public setTintList(Landroid/content/res/ColorStateList;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->isCompatTintEnabled()Z
move-result v0
if-eqz v0, :cond_a
invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setTintList(Landroid/content/res/ColorStateList;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V
goto :goto_9
.end method
.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->isCompatTintEnabled()Z
move-result v0
if-eqz v0, :cond_a
invoke-super {p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperKitKat;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Landroid/support/v4/graphics/drawable/DrawableWrapperLollipop;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V
goto :goto_9
.end method