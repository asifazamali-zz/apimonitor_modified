.class  Landroid/support/v4/view/LayoutInflaterCompatLollipop;
.super Ljava/lang/Object;
.source "LayoutInflaterCompatLollipop.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
.registers 3
if-eqz p1, :cond_b
new-instance v0, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;
invoke-direct {v0, p1}, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V
:goto_7
invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method