.class Landroid/support/v4/graphics/BitmapCompatHoneycombMr1;
.super Ljava/lang/Object;
.source "BitmapCompatHoneycombMr1.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xc
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xc
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method
