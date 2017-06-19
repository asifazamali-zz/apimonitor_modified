.class  Landroid/support/v4/media/MediaDescriptionCompatApi23;
.super Landroid/support/v4/media/MediaDescriptionCompatApi21;
.source "MediaDescriptionCompatApi23.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/media/MediaDescriptionCompatApi21;-><init>()V
return-void
.end method
.method public static getMediaUri(Ljava/lang/Object;)Landroid/net/Uri;
.registers 2
check-cast p0, Landroid/media/MediaDescription;
invoke-virtual {p0}, Landroid/media/MediaDescription;->getMediaUri()Landroid/net/Uri;
move-result-object v0
return-object v0
.end method