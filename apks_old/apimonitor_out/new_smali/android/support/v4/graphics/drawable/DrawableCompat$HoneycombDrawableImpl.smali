.class  Landroid/support/v4/graphics/drawable/DrawableCompat$HoneycombDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;
.source "DrawableCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$BaseDrawableImpl;-><init>()V
return-void
.end method
.method public jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
.registers 2
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->jumpToCurrentState(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatHoneycomb;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method