.class  Landroid/support/v4/view/ViewCompatJellybeanMr2;
.super Ljava/lang/Object;
.source "ViewCompatJellybeanMr2.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
.registers 2
invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;
move-result-object v0
return-object v0
.end method
.method public static isInLayout(Landroid/view/View;)Z
.registers 2
invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z
move-result v0
return v0
.end method
.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
.registers 2
invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V
return-void
.end method