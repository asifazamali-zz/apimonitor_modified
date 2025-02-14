.class final Landroid/support/v7/content/res/AppCompatColorStateListInflater;
.super Ljava/lang/Object;
.source "AppCompatColorStateListInflater.java"


# static fields
.field private static final DEFAULT_COLOR:I = -0x10000


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 7
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x2

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    :cond_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_e

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    :cond_e
    if-eq v1, v3, :cond_18

    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "No start tag found"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_18
    invoke-static {p0, p1, v0, p2}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    return-object v2
.end method

.method private static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 8
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "selector"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": invalid color state list tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2d
    invoke-static {p0, p1, p2, p3}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    return-object v1
.end method

.method private static inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 30
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v24

    add-int/lit8 v14, v24, 0x1

    const/high16 v11, -0x1

    const/16 v24, 0x14

    move/from16 v0, v24

    new-array v0, v0, [[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v9, v0, [I

    const/16 v17, 0x0

    :cond_1b
    :goto_1b
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_109

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-ge v12, v14, :cond_35

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_109

    :cond_35
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    if-gt v12, v14, :cond_1b

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    const-string v25, "item"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1b

    sget-object v24, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v24, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_color:I

    const v25, -0xff01

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    const/high16 v6, 0x3f80

    sget v24, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_alpha:I

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v24

    if-eqz v24, :cond_c4

    sget v24, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_android_alpha:I

    move/from16 v0, v24

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    :cond_7a
    :goto_7a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v15, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/4 v13, 0x0

    move/from16 v16, v15

    :goto_8b
    move/from16 v0, v18

    if-ge v13, v0, :cond_dd

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v19

    const v24, 0x10101a5

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_13b

    const v24, 0x101031f

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_13b

    sget v24, Landroid/support/v7/appcompat/R$attr;->alpha:I

    move/from16 v0, v19

    move/from16 v1, v24

    if-eq v0, v1, :cond_13b

    add-int/lit8 v15, v16, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-interface {v0, v13, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(IZ)Z

    move-result v24

    if-eqz v24, :cond_d7

    :goto_bd
    aput v19, v20, v16

    :goto_bf
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    goto :goto_8b

    :cond_c4
    sget v24, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_alpha:I

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v24

    if-eqz v24, :cond_7a

    sget v24, Landroid/support/v7/appcompat/R$styleable;->ColorStateListItem_alpha:I

    move/from16 v0, v24

    invoke-virtual {v5, v0, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    goto :goto_7a

    :cond_d7
    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    goto :goto_bd

    :cond_dd
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/StateSet;->trimStateSet([II)[I

    move-result-object v20

    invoke-static {v7, v6}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->modulateColorAlpha(IF)I

    move-result v8

    if-eqz v17, :cond_f2

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    if-nez v24, :cond_f3

    :cond_f2
    move v11, v8

    :cond_f3
    move/from16 v0, v17

    invoke-static {v9, v0, v8}, Landroid/support/v7/content/res/GrowingArrayUtils;->append([III)[I

    move-result-object v9

    move-object/from16 v0, v21

    move/from16 v1, v17

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/support/v7/content/res/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[I

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1b

    :cond_109
    move/from16 v0, v17

    new-array v10, v0, [I

    move/from16 v0, v17

    new-array v0, v0, [[I

    move-object/from16 v22, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v17

    invoke-static {v9, v0, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move-object/from16 v2, v22

    move/from16 v3, v25

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v24, Landroid/content/res/ColorStateList;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v10}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v24

    :cond_13b
    move/from16 v15, v16

    goto :goto_bf
.end method

.method private static modulateColorAlpha(IF)I
    .registers 3

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    return v0
.end method

.method private static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_8

    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_7
.end method
