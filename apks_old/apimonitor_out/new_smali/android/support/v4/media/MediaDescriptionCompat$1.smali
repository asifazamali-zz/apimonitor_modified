.class final Landroid/support/v4/media/MediaDescriptionCompat$1;
.super Ljava/lang/Object;
.source "MediaDescriptionCompat.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-ge v0, v1, :cond_c
new-instance v0, Landroid/support/v4/media/MediaDescriptionCompat;
invoke-direct {v0, p1}, Landroid/support/v4/media/MediaDescriptionCompat;-><init>(Landroid/os/Parcel;)V
:goto_b
return-object v0
:cond_c
invoke-static {p1}, Landroid/support/v4/media/MediaDescriptionCompatApi21;->fromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->fromMediaDescription(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;
move-result-object v0
goto :goto_b
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/MediaDescriptionCompat;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Landroid/support/v4/media/MediaDescriptionCompat;
.registers 3
new-array v0, p1, [Landroid/support/v4/media/MediaDescriptionCompat;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/media/MediaDescriptionCompat$1;->newArray(I)[Landroid/support/v4/media/MediaDescriptionCompat;
move-result-object v0
return-object v0
.end method