.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl24"
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    return-void
.end method


# virtual methods
.method public getLaunchBounds()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat24;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActivityOptionsCompat24;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat;
    .registers 4
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    new-instance v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/ActivityOptionsCompat24;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/support/v4/app/ActivityOptionsCompat24;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;-><init>(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat24;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .registers 5

    instance-of v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    if-eqz v1, :cond_e

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;

    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    iget-object v2, v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl24;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat24;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat24;->update(Landroid/support/v4/app/ActivityOptionsCompat24;)V

    :cond_e
    return-void
.end method
