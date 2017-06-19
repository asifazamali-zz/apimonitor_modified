.class public Landroid/support/v4/media/MediaBrowserCompatUtils;
.super Ljava/lang/Object;
.source "MediaBrowserCompatUtils.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static areSameOptions(Landroid/os/Bundle;Landroid/os/Bundle;)Z
.registers 7
const/4 v1, 0x0
const/4 v0, 0x1
const/4 v4, -0x1
if-ne p0, p1, :cond_6
:goto_5
:cond_5
return v0
:cond_6
if-nez p0, :cond_1a
const-string v2, "android.media.browse.extra.PAGE"
invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
if-ne v2, v4, :cond_18
const-string v2, "android.media.browse.extra.PAGE_SIZE"
invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
if-eq v2, v4, :cond_5
:cond_18
move v0, v1
goto :goto_5
:cond_1a
if-nez p1, :cond_2e
const-string v2, "android.media.browse.extra.PAGE"
invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
if-ne v2, v4, :cond_2c
const-string v2, "android.media.browse.extra.PAGE_SIZE"
invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
if-eq v2, v4, :cond_5
:cond_2c
move v0, v1
goto :goto_5
:cond_2e
const-string v2, "android.media.browse.extra.PAGE"
invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
const-string v3, "android.media.browse.extra.PAGE"
invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v3
if-ne v2, v3, :cond_4a
const-string v2, "android.media.browse.extra.PAGE_SIZE"
invoke-virtual {p0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
const-string v3, "android.media.browse.extra.PAGE_SIZE"
invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v3
if-eq v2, v3, :cond_5
:cond_4a
move v0, v1
goto :goto_5
.end method
.method public static hasDuplicatedItems(Landroid/os/Bundle;Landroid/os/Bundle;)Z
.registers 13
const/4 v8, 0x1
const/4 v9, -0x1
if-nez p0, :cond_23
move v2, v9
:goto_5
if-nez p1, :cond_2a
move v3, v9
:goto_8
if-nez p0, :cond_31
move v4, v9
:goto_b
if-nez p1, :cond_38
move v5, v9
:goto_e
if-eq v2, v9, :cond_12
if-ne v4, v9, :cond_3f
:cond_12
const/4 v6, 0x0
const v0, 0x7fffffff
:goto_16
if-eq v3, v9, :cond_1a
if-ne v5, v9, :cond_46
:cond_1a
const/4 v7, 0x0
const v1, 0x7fffffff
:goto_1e
if-gt v6, v7, :cond_4d
if-gt v7, v0, :cond_4d
:cond_22
:goto_22
return v8
:cond_23
const-string v10, "android.media.browse.extra.PAGE"
invoke-virtual {p0, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v2
goto :goto_5
:cond_2a
const-string v10, "android.media.browse.extra.PAGE"
invoke-virtual {p1, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v3
goto :goto_8
:cond_31
const-string v10, "android.media.browse.extra.PAGE_SIZE"
invoke-virtual {p0, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v4
goto :goto_b
:cond_38
const-string v10, "android.media.browse.extra.PAGE_SIZE"
invoke-virtual {p1, v10, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v5
goto :goto_e
:cond_3f
mul-int v6, v4, v2
add-int v10, v6, v4
add-int/lit8 v0, v10, -0x1
goto :goto_16
:cond_46
mul-int v7, v5, v3
add-int v9, v7, v5
add-int/lit8 v1, v9, -0x1
goto :goto_1e
:cond_4d
if-gt v6, v1, :cond_51
if-le v1, v0, :cond_22
:cond_51
const/4 v8, 0x0
goto :goto_22
.end method