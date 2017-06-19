.class public final Landroid/support/v4/media/session/MediaSessionCompat$Token;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final mInner:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;
invoke-direct {v0}, Landroid/support/v4/media/session/MediaSessionCompat$Token$1;-><init>()V
sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
return-void
.end method
.method public static fromToken(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
.registers 3
if-eqz p0, :cond_8
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-ge v0, v1, :cond_a
:cond_8
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;
invoke-static {p0}, Landroid/support/v4/media/session/MediaSessionCompatApi21;->verifyToken(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-direct {v0, v1}, Landroid/support/v4/media/session/MediaSessionCompat$Token;-><init>(Ljava/lang/Object;)V
goto :goto_9
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
instance-of v3, p1, Landroid/support/v4/media/session/MediaSessionCompat$Token;
if-nez v3, :cond_b
move v1, v2
goto :goto_4
:cond_b
move-object v0, p1
check-cast v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;
iget-object v3, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
if-nez v3, :cond_18
iget-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
if-eqz v3, :cond_4
move v1, v2
goto :goto_4
:cond_18
iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
if-nez v1, :cond_1e
move v1, v2
goto :goto_4
:cond_1e
iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
iget-object v2, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
goto :goto_4
.end method
.method public getToken()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_e
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
check-cast v0, Landroid/os/Parcelable;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
:goto_d
return-void
:cond_e
iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mInner:Ljava/lang/Object;
check-cast v0, Landroid/os/IBinder;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
goto :goto_d
.end method