.class  Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;
.super Landroid/support/v4/app/ActivityOptionsCompat;
.source "ActivityOptionsCompat.java"
.field private final mImpl:Landroid/support/v4/app/ActivityOptionsCompat21;
.method constructor <init>(Landroid/support/v4/app/ActivityOptionsCompat21;)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/ActivityOptionsCompat;-><init>()V
iput-object p1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat21;
return-void
.end method
.method public toBundle()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat21;
invoke-virtual {v0}, Landroid/support/v4/app/ActivityOptionsCompat21;->toBundle()Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public update(Landroid/support/v4/app/ActivityOptionsCompat;)V
.registers 5
instance-of v1, p1, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;
if-eqz v1, :cond_e
move-object v0, p1
check-cast v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;
iget-object v1, p0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat21;
iget-object v2, v0, Landroid/support/v4/app/ActivityOptionsCompat$ActivityOptionsImpl21;->mImpl:Landroid/support/v4/app/ActivityOptionsCompat21;
invoke-virtual {v1, v2}, Landroid/support/v4/app/ActivityOptionsCompat21;->update(Landroid/support/v4/app/ActivityOptionsCompat21;)V
:cond_e
return-void
.end method