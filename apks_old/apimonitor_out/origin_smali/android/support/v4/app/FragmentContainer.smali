.class public abstract Landroid/support/v4/app/FragmentContainer;
.super Ljava/lang/Object;
.source "FragmentContainer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFindViewById(I)Landroid/view/View;
    .parameter
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public abstract onHasView()Z
.end method
