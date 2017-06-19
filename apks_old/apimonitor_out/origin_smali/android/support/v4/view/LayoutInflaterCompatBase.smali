.class Landroid/support/v4/view/LayoutInflaterCompatBase;
.super Ljava/lang/Object;
.source "LayoutInflaterCompatBase.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
    .registers 3

    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    instance-of v1, v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;

    if-eqz v1, :cond_d

    check-cast v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;

    iget-object v1, v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;->mDelegateFactory:Landroid/support/v4/view/LayoutInflaterFactory;

    :goto_c
    return-object v1

    :cond_d
    const/4 v1, 0x0

    goto :goto_c
.end method

.method static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .registers 3

    if-eqz p1, :cond_b

    new-instance v0, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;

    invoke-direct {v0, p1}, Landroid/support/v4/view/LayoutInflaterCompatBase$FactoryWrapper;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    :goto_7
    invoke-virtual {p0, v0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void

    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
