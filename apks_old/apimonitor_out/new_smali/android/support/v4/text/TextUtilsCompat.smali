.class public final Landroid/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"
.field static ARAB_SCRIPT_SUBTAG:Ljava/lang/String;
.field static HEBR_SCRIPT_SUBTAG:Ljava/lang/String;
.field private static final IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
.field public static final ROOT:Ljava/util/Locale;
.method static constructor <clinit>()V
.registers 4
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_21
new-instance v1, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;
invoke-direct {v1}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>()V
sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
:goto_d
new-instance v1, Ljava/util/Locale;
const-string v2, ""
const-string v3, ""
invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;
const-string v1, "Arab"
sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;
const-string v1, "Hebr"
sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;
return-void
:cond_21
new-instance v1, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
invoke-direct {v1}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
goto :goto_d
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
.registers 2
.parameter
.end parameter
sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I
move-result v0
return v0
.end method
.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
.registers 2
.parameter
.end parameter
sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
invoke-virtual {v0, p0}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method