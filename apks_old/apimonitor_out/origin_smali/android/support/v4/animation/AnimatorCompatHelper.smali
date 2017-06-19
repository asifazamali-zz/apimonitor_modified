.class public final Landroid/support/v4/animation/AnimatorCompatHelper;
.super Ljava/lang/Object;
.source "AnimatorCompatHelper.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/animation/AnimatorProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;

    invoke-direct {v0}, Landroid/support/v4/animation/HoneycombMr1AnimatorCompatProvider;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    :goto_d
    return-void

    :cond_e
    new-instance v0, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider;

    invoke-direct {v0}, Landroid/support/v4/animation/GingerbreadAnimatorCompatProvider;-><init>()V

    sput-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearInterpolator(Landroid/view/View;)V
    .registers 2

    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    invoke-interface {v0, p0}, Landroid/support/v4/animation/AnimatorProvider;->clearInterpolator(Landroid/view/View;)V

    return-void
.end method

.method public static emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;
    .registers 1

    sget-object v0, Landroid/support/v4/animation/AnimatorCompatHelper;->IMPL:Landroid/support/v4/animation/AnimatorProvider;

    invoke-interface {v0}, Landroid/support/v4/animation/AnimatorProvider;->emptyValueAnimator()Landroid/support/v4/animation/ValueAnimatorCompat;

    move-result-object v0

    return-object v0
.end method
