.class  Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
.source "DrawableCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;-><init>()V
return-void
.end method
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
move-result v0
if-ltz v0, :cond_7
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
.registers 4
invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
move-result v0
return v0
.end method