.class public final Landroid/support/v4/content/res/ConfigurationHelper;
.super Ljava/lang/Object;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;,
        Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;,
        Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;,
        Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_e

    new-instance v1, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;

    invoke-direct {v1}, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;-><init>()V

    sput-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    :goto_d
    return-void

    :cond_e
    const/16 v1, 0xd

    if-lt v0, v1, :cond_1a

    new-instance v1, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;

    invoke-direct {v1}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>()V

    sput-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_d

    :cond_1a
    new-instance v1, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;

    invoke-direct {v1}, Landroid/support/v4/content/res/ConfigurationHelper$GingerbreadImpl;-><init>()V

    sput-object v1, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDensityDpi(Landroid/content/res/Resources;)I
    .registers 2
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getScreenHeightDp(Landroid/content/res/Resources;)I
    .registers 2
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 2
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

.method public static getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
    .registers 2
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    sget-object v0, Landroid/support/v4/content/res/ConfigurationHelper;->IMPL:Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/content/res/ConfigurationHelper$ConfigurationHelperImpl;->getSmallestScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method
