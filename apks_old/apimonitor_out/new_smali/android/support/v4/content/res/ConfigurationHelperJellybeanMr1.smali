.class  Landroid/support/v4/content/res/ConfigurationHelperJellybeanMr1;
.super Ljava/lang/Object;
.source "ConfigurationHelperJellybeanMr1.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static getDensityDpi(Landroid/content/res/Resources;)I
.registers 2
.parameter
.end parameter
invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I
return v0
.end method