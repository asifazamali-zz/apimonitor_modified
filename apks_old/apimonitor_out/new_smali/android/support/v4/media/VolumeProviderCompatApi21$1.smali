.class final Landroid/support/v4/media/VolumeProviderCompatApi21$1;
.super Landroid/media/VolumeProvider;
.source "VolumeProviderCompatApi21.java"
.field final synthetic val$delegate:Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;
.method constructor <init>(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)V
.registers 5
iput-object p4, p0, Landroid/support/v4/media/VolumeProviderCompatApi21$1;->val$delegate:Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;
invoke-direct {p0, p1, p2, p3}, Landroid/media/VolumeProvider;-><init>(III)V
return-void
.end method
.method public onAdjustVolume(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompatApi21$1;->val$delegate:Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;
invoke-interface {v0, p1}, Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;->onAdjustVolume(I)V
return-void
.end method
.method public onSetVolumeTo(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompatApi21$1;->val$delegate:Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;
invoke-interface {v0, p1}, Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;->onSetVolumeTo(I)V
return-void
.end method