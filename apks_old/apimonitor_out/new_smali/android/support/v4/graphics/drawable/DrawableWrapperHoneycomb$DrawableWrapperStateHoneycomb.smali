.class  Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb$DrawableWrapperStateHoneycomb;
.super Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;
.source "DrawableWrapperHoneycomb.java"
.method constructor <init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
return-void
.end method
.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
.registers 3
.parameter
.end parameter
new-instance v0, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;
invoke-direct {v0, p0, p1}, Landroid/support/v4/graphics/drawable/DrawableWrapperHoneycomb;-><init>(Landroid/support/v4/graphics/drawable/DrawableWrapperGingerbread$DrawableWrapperState;Landroid/content/res/Resources;)V
return-object v0
.end method