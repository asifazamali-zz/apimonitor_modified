.class  Landroid/support/v4/graphics/PaintCompatGingerbread;
.super Ljava/lang/Object;
.source "PaintCompatGingerbread.java"
.field private static final TOFU_STRING:Ljava/lang/String; = "\udb3f\udffd"
.field private static final sRectThreadLocal:Ljava/lang/ThreadLocal;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/ThreadLocal;
invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V
sput-object v0, Landroid/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static hasGlyph(Landroid/graphics/Paint;Ljava/lang/String;)Z
.registers 14
.parameter
.end parameter
.parameter
.end parameter
const/4 v8, 0x1
const/4 v9, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-ne v2, v8, :cond_14
invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C
move-result v7
invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z
move-result v7
if-eqz v7, :cond_14
move v9, v8
:cond_13
:goto_13
return v9
:cond_14
const-string v7, "\udb3f\udffd"
invoke-virtual {p0, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
move-result v3
invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F
move-result v6
const/4 v7, 0x0
cmpl-float v7, v6, v7
if-eqz v7, :cond_13
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v7
invoke-virtual {p1, v9, v7}, Ljava/lang/String;->codePointCount(II)I
move-result v7
if-le v7, v8, :cond_4d
const/high16 v7, 0x4000
mul-float/2addr v7, v3
cmpl-float v7, v6, v7
if-gtz v7, :cond_13
const/4 v5, 0x0
const/4 v1, 0x0
:goto_36
if-ge v1, v2, :cond_49
invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I
move-result v7
invoke-static {v7}, Ljava/lang/Character;->charCount(I)I
move-result v0
add-int v7, v1, v0
invoke-virtual {p0, p1, v1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F
move-result v7
add-float/2addr v5, v7
add-int/2addr v1, v0
goto :goto_36
:cond_49
cmpl-float v7, v6, v5
if-gez v7, :cond_13
:cond_4d
cmpl-float v7, v6, v3
if-eqz v7, :cond_53
move v9, v8
goto :goto_13
:cond_53
invoke-static {}, Landroid/support/v4/graphics/PaintCompatGingerbread;->obtainEmptyRects()Landroid/support/v4/util/Pair;
move-result-object v4
const-string v10, "\udb3f\udffd"
const-string v7, "\udb3f\udffd"
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v11
iget-object v7, v4, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v7, Landroid/graphics/Rect;
invoke-virtual {p0, v10, v9, v11, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
iget-object v7, v4, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v7, Landroid/graphics/Rect;
invoke-virtual {p0, p1, v9, v2, v7}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
iget-object v7, v4, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v7, Landroid/graphics/Rect;
iget-object v10, v4, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
invoke-virtual {v7, v10}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_7c
move v7, v8
:goto_7a
move v9, v7
goto :goto_13
:cond_7c
move v7, v9
goto :goto_7a
.end method
.method private static obtainEmptyRects()Landroid/support/v4/util/Pair;
.registers 3
sget-object v1, Landroid/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;
invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/Pair;
if-nez v0, :cond_1f
new-instance v0, Landroid/support/v4/util/Pair;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
invoke-direct {v0, v1, v2}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
sget-object v1, Landroid/support/v4/graphics/PaintCompatGingerbread;->sRectThreadLocal:Ljava/lang/ThreadLocal;
invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
:goto_1e
return-object v0
:cond_1f
iget-object v1, v0, Landroid/support/v4/util/Pair;->first:Ljava/lang/Object;
check-cast v1, Landroid/graphics/Rect;
invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
iget-object v1, v0, Landroid/support/v4/util/Pair;->second:Ljava/lang/Object;
check-cast v1, Landroid/graphics/Rect;
invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V
goto :goto_1e
.end method