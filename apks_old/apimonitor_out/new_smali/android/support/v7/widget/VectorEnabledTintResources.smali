.class public Landroid/support/v7/widget/VectorEnabledTintResources;
.super Landroid/content/res/Resources;
.source "VectorEnabledTintResources.java"
.field public static final MAX_SDK_WHERE_REQUIRED:I = 0x14
.field private final mContextRef:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v2
invoke-direct {p0, v0, v1, v2}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Landroid/support/v7/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public static shouldBeUsed()Z
.registers 2
invoke-static {}, Landroid/support/v7/app/AppCompatDelegate;->isCompatVectorFromResourcesEnabled()Z
move-result v0
if-eqz v0, :cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x14
if-gt v0, v1, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/VectorEnabledTintResources;->mContextRef:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_13
invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;
move-result-object v1
invoke-virtual {v1, v0, p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->onDrawableLoadedFromResources(Landroid/content/Context;Landroid/support/v7/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
move-result-object v1
:goto_12
return-object v1
:cond_13
invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
goto :goto_12
.end method
.method final superGetDrawable(I)Landroid/graphics/drawable/Drawable;
.registers 3
invoke-super {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method