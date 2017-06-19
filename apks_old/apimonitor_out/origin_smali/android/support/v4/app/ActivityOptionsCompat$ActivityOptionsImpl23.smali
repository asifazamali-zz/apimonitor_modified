.class Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityOptionsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityOptionsImpl23"
.end annotation


# instance fields
.field private final mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ActivityOptionsCompat23;)V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    return-void
.end method


# virtual methods
.method public requestUsageTimeReport(Landroid/app/PendingIntent;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/ActivityOptionsCompat23;->requestUsageTimeReport(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat23;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
    .registers 5

    instance-of v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    if-eqz v1, :cond_e

    move-object v0, p1

    check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;

    iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    iget-object v2, v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl23;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat23;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat23;->update(Landroid/support/v4/app/ActivityOptionsCompat23;)V

    :cond_e
    return-void
.end method
