.class public final Landroid/support/v4/graphics/PaintCompat;
.super Ljava/lang/Object;
.source "PaintCompat.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
.registers 4
.parameter
.end parameter
.parameter
.end parameter
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-lt v0, v1, :cond_b
invoke-static {p0, p1}, Landroid/support/v4/graphics/PaintCompatApi23;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
move-result v0
:goto_a
return v0
:cond_b
invoke-static {p0, p1}, Landroid/support/v4/graphics/PaintCompatGingerbread;->hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
move-result v0
goto :goto_a
.end method