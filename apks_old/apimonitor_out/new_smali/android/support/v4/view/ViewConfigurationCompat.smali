.class public final Landroid/support/v4/view/ViewConfigurationCompat;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"
.field static final IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;
invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$IcsViewConfigurationVersionImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
:goto_d
return-void
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_1c
new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;
invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$HoneycombViewConfigurationVersionImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
goto :goto_d
:cond_1c
new-instance v0, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;
invoke-direct {v0}, Landroid/support/v4/view/ViewConfigurationCompat$BaseViewConfigurationVersionImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
goto :goto_d
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I
.registers 2
invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I
move-result v0
return v0
.end method
.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
.registers 2
sget-object v0, Landroid/support/v4/view/ViewConfigurationCompat;->IMPL:Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/ViewConfigurationCompat$ViewConfigurationVersionImpl;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
move-result v0
return v0
.end method