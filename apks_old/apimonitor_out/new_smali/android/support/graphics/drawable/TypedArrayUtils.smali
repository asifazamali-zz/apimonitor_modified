.class  Landroid/support/graphics/drawable/TypedArrayUtils;
.super Ljava/lang/Object;
.source "TypedArrayUtils.java"
.field private static final NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z
.registers 6
invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_7
:goto_6
return p4
:cond_7
invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result p4
goto :goto_6
.end method
.method public static getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
.registers 6
invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_7
:goto_6
return p4
:cond_7
invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I
move-result p4
goto :goto_6
.end method
.method public static getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
.registers 6
invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_7
:goto_6
return p4
:cond_7
invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result p4
goto :goto_6
.end method
.method public static getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I
.registers 6
invoke-static {p1, p2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_7
:goto_6
return p4
:cond_7
invoke-virtual {p0, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I
move-result p4
goto :goto_6
.end method
.method public static hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
.registers 3
const-string v0, "http://schemas.android.com/apk/res/android"
invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method