.class  Landroid/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"
.implements Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
.registers 3
invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
.registers 3
invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method public getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
.registers 3
invoke-static {p1}, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
move-result-object v0
return-object v0
.end method
.method public setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
return-void
.end method
.method public setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/widget/CompoundButtonCompatGingerbread;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
return-void
.end method