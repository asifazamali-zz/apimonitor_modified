.class  Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;
.source "DrawableCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V
return-void
.end method
.method public applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
return-void
.end method
.method public canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
move-result v0
return v0
.end method
.method public clearColorFilter(Landroid/graphics/drawable/Drawable;)V
.registers 2
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->clearColorFilter(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
move-result-object v0
return-object v0
.end method
.method public inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
.registers 6
invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
return-void
.end method
.method public setHotspot(Landroid/graphics/drawable/Drawable;FF)V
.registers 4
invoke-static {p1, p2, p3}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V
return-void
.end method
.method public setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
.registers 6
invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
return-void
.end method
.method public setTint(Landroid/graphics/drawable/Drawable;I)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setTint(Landroid/graphics/drawable/Drawable;I)V
return-void
.end method
.method public setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
return-void
.end method
.method public setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
return-void
.end method
.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 3
invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method