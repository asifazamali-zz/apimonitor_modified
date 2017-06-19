.class  Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;
.source "DrawableCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$JellybeanMr1DrawableImpl;-><init>()V
return-void
.end method
.method public getAlpha(Landroid/graphics/drawable/Drawable;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->getAlpha(Landroid/graphics/drawable/Drawable;)I
move-result v0
return v0
.end method
.method public isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z
move-result v0
return v0
.end method
.method public setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V
return-void
.end method
.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatKitKat;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method