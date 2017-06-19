.class final Landroid/support/v4/media/session/MediaSessionCompat$Token$1;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"
.implements Landroid/os/Parcelable$Creator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 5
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x15
if-lt v1, v2, :cond_11
const/4 v1, 0x0
invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
:goto_b
new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$Token;
invoke-direct {v1, v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V
return-object v1
:cond_11
invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
goto :goto_b
.end method
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
move-result-object v0
return-object v0
.end method
.method public newArray(I)[Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 3
new-array v0, p1, [Landroid/support/v4/media/session/MediaSessionCompat$Token;
return-object v0
.end method
.method public bridge synthetic newArray(I)[Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;->newArray(I)[Landroid/support/v4/media/session/MediaSessionCompat$Token;
move-result-object v0
return-object v0
.end method