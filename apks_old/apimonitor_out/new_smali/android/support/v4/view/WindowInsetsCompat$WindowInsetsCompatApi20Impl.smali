.class  Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatApi20Impl;
.super Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;
.source "WindowInsetsCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/view/WindowInsetsCompat$WindowInsetsCompatBaseImpl;-><init>()V
return-void
.end method
.method public consumeSystemWindowInsets(Ljava/lang/Object;)Landroid/support/v4/view/WindowInsetsCompat;
.registers 4
new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;
invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->consumeSystemWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSourceWindowInsets(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getSystemWindowInsetBottom(Ljava/lang/Object;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetBottom(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getSystemWindowInsetLeft(Ljava/lang/Object;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetLeft(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getSystemWindowInsetRight(Ljava/lang/Object;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetRight(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getSystemWindowInsetTop(Ljava/lang/Object;)I
.registers 3
invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->getSystemWindowInsetTop(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public hasInsets(Ljava/lang/Object;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->hasInsets(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public hasSystemWindowInsets(Ljava/lang/Object;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->hasSystemWindowInsets(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isRound(Ljava/lang/Object;)Z
.registers 3
invoke-static {p1}, Landroid/support/v4/view/WindowInsetsCompatApi20;->isRound(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public replaceSystemWindowInsets(Ljava/lang/Object;IIII)Landroid/support/v4/view/WindowInsetsCompat;
.registers 8
new-instance v0, Landroid/support/v4/view/WindowInsetsCompat;
invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/view/WindowInsetsCompatApi20;->replaceSystemWindowInsets(Ljava/lang/Object;IIII)Ljava/lang/Object;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/view/WindowInsetsCompat;-><init>(Ljava/lang/Object;)V
return-object v0
.end method