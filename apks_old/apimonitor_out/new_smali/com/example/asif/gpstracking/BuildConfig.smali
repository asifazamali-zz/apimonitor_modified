.class public final Lcom/example/asif/gpstracking/BuildConfig;
.super Ljava/lang/Object;
.source "BuildConfig.java"
.field public static final APPLICATION_ID:Ljava/lang/String; = "com.example.asif.gpstracking"
.field public static final BUILD_TYPE:Ljava/lang/String; = "debug"
.field public static final DEBUG:Z = false
.field public static final FLAVOR:Ljava/lang/String; = ""
.field public static final VERSION_CODE:I = 0x1
.field public static final VERSION_NAME:Ljava/lang/String; = "1.0"
.method static constructor <clinit>()V
.registers 1
const-string v0, "true"
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
sput-boolean v0, Lcom/example/asif/gpstracking/BuildConfig;->DEBUG:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method