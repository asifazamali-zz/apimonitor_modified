.class  Landroid/support/v4/content/res/ConfigurationHelperHoneycombMr2;
.super Ljava/lang/Object;
.source "ConfigurationHelperHoneycombMr2.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static getScreenHeightDp(Landroid/content/res/Resources;)I
.registers 2
.parameter
.end parameter
invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->screenHeightDp:I
return v0
.end method
.method static getScreenWidthDp(Landroid/content/res/Resources;)I
.registers 2
.parameter
.end parameter
invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I
return v0
.end method
.method static getSmallestScreenWidthDp(Landroid/content/res/Resources;)I
.registers 2
.parameter
.end parameter
invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I
return v0
.end method