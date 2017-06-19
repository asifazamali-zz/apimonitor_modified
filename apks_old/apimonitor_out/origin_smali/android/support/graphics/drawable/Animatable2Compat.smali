.class public interface abstract Landroid/support/graphics/drawable/Animatable2Compat;
.super Ljava/lang/Object;
.source "Animatable2Compat.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;
    }
.end annotation


# virtual methods
.method public abstract clearAnimationCallbacks()V
.end method

.method public abstract registerAnimationCallback(Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
.end method

.method public abstract unregisterAnimationCallback(Landroid/support/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
.end method
