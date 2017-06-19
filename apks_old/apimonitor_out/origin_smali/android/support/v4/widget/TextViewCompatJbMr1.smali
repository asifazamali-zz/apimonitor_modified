.class Landroid/support/v4/widget/TextViewCompatJbMr1;
.super Ljava/lang/Object;
.source "TextViewCompatJbMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
    .registers 8
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v5

    if-ne v5, v2, :cond_18

    :goto_9
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v2, :cond_17

    aget-object v3, v0, v6

    aget-object v1, v0, v4

    aput-object v3, v0, v4

    aput-object v1, v0, v6

    :cond_17
    return-object v0

    :cond_18
    move v2, v4

    goto :goto_9
.end method

.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_7
    if-eqz v0, :cond_12

    move-object v1, p3

    :goto_a
    if-eqz v0, :cond_14

    :goto_c
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    :cond_12
    move-object v1, p1

    goto :goto_a

    :cond_14
    move-object p1, p3

    goto :goto_c
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
    .registers 7
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_7
    if-eqz v0, :cond_12

    move v1, p3

    :goto_a
    if-eqz v0, :cond_14

    :goto_c
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    :cond_12
    move v1, p1

    goto :goto_a

    :cond_14
    move p1, p3

    goto :goto_c
.end method

.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 7
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_10

    :goto_7
    if-eqz v0, :cond_12

    move-object v1, p3

    :goto_a
    if-eqz v0, :cond_14

    :goto_c
    invoke-virtual {p0, v1, p2, p1, p4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_10
    const/4 v0, 0x0

    goto :goto_7

    :cond_12
    move-object v1, p1

    goto :goto_a

    :cond_14
    move-object p1, p3

    goto :goto_c
.end method
