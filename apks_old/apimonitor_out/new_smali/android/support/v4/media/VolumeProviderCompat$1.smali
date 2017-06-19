.class  Landroid/support/v4/media/VolumeProviderCompat$1;
.super Ljava/lang/Object;
.source "VolumeProviderCompat.java"
.implements Landroid/support/v4/media/VolumeProviderCompatApi21$Delegate;
.field final synthetic this$0:Landroid/support/v4/media/VolumeProviderCompat;
.method constructor <init>(Landroid/support/v4/media/VolumeProviderCompat;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/media/VolumeProviderCompat$1;->this$0:Landroid/support/v4/media/VolumeProviderCompat;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAdjustVolume(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat$1;->this$0:Landroid/support/v4/media/VolumeProviderCompat;
invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onAdjustVolume(I)V
return-void
.end method
.method public onSetVolumeTo(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat$1;->this$0:Landroid/support/v4/media/VolumeProviderCompat;
invoke-virtual {v0, p1}, Landroid/support/v4/media/VolumeProviderCompat;->onSetVolumeTo(I)V
return-void
.end method