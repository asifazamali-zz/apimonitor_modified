.class  Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;
.super Ljava/lang/Object;
.source "DrawerLayoutCompatApi21.java"
.implements Landroid/view/View$OnApplyWindowInsetsListener;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.registers 5
move-object v0, p1
check-cast v0, Landroid/support/v4/widget/DrawerLayoutImpl;
invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I
move-result v1
if-lez v1, :cond_12
const/4 v1, 0x1
:goto_a
invoke-interface {v0, p2, v1}, Landroid/support/v4/widget/DrawerLayoutImpl;->setChildInsets(Ljava/lang/Object;Z)V
invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;
move-result-object v1
return-object v1
:cond_12
const/4 v1, 0x0
goto :goto_a
.end method