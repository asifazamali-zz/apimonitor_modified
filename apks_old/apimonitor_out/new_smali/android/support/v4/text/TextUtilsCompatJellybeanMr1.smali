.class  Landroid/support/v4/text/TextUtilsCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "TextUtilsCompatJellybeanMr1.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
.registers 2
.parameter
.end parameter
invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I
move-result v0
return v0
.end method
.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
.registers 2
.parameter
.end parameter
invoke-static {p0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method