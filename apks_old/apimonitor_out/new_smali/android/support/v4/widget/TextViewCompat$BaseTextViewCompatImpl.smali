.class  Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;
.super Ljava/lang/Object;
.source "TextViewCompat.java"
.implements Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
.registers 3
.parameter
.end parameter
invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatGingerbread;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getMaxLines(Landroid/widget/TextView;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatGingerbread;->getMaxLines(Landroid/widget/TextView;)I
move-result v0
return v0
.end method
.method public getMinLines(Landroid/widget/TextView;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatGingerbread;->getMinLines(Landroid/widget/TextView;)I
move-result v0
return v0
.end method
.method public setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
return-void
.end method
.method public setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p1, p2, p3, p4, p5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setTextAppearance(Landroid/widget/TextView;I)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p1, p2}, Landroid/support/v4/widget/TextViewCompatGingerbread;->setTextAppearance(Landroid/widget/TextView;I)V
return-void
.end method