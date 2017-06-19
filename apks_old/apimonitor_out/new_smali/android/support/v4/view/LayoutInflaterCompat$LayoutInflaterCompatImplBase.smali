.class  Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImplBase;
.super Ljava/lang/Object;
.source "LayoutInflaterCompat.java"
.implements Landroid/support/v4/view/LayoutInflaterCompat$LayoutInflaterCompatImpl;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
.registers 3
invoke-static {p1}, Landroid/support/v4/view/LayoutInflaterCompatBase;->getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
move-result-object v0
return-object v0
.end method
.method public setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
.registers 3
invoke-static {p1, p2}, Landroid/support/v4/view/LayoutInflaterCompatBase;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
return-void
.end method