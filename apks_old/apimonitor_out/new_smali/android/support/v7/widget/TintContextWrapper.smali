.class public Landroid/support/v7/widget/TintContextWrapper;
.super Landroid/content/ContextWrapper;
.source "TintContextWrapper.java"
.field private static final CACHE_LOCK:Ljava/lang/Object;
.field private static sCache:Ljava/util/ArrayList;
.field private final mResources:Landroid/content/res/Resources;
.field private final mTheme:Landroid/content/res/Resources$Theme;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Landroid/support/v7/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
.parameter
.end parameter
invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V
invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z
move-result v0
if-eqz v0, :cond_26
new-instance v0, Landroid/support/v7/widget/VectorEnabledTintResources;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/VectorEnabledTintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V
iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;
iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;
invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;
iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;
invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
:goto_25
return-void
:cond_26
new-instance v0, Landroid/support/v7/widget/TintResources;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/TintResources;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V
iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;
goto :goto_25
.end method
.method private static shouldWrap(Landroid/content/Context;)Z
.registers 4
.parameter
.end parameter
const/4 v0, 0x0
instance-of v1, p0, Landroid/support/v7/widget/TintContextWrapper;
if-nez v1, :cond_15
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
instance-of v1, v1, Landroid/support/v7/widget/TintResources;
if-nez v1, :cond_15
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
instance-of v1, v1, Landroid/support/v7/widget/VectorEnabledTintResources;
if-eqz v1, :cond_16
:goto_15
:cond_15
return v0
:cond_16
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x15
if-lt v1, v2, :cond_22
invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z
move-result v1
if-eqz v1, :cond_15
:cond_22
const/4 v0, 0x1
goto :goto_15
.end method
.method public static wrap(Landroid/content/Context;)Landroid/content/Context;
.registers 7
.parameter
.end parameter
invoke-static {p0}, Landroid/support/v7/widget/TintContextWrapper;->shouldWrap(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_74
sget-object v4, Landroid/support/v7/widget/TintContextWrapper;->CACHE_LOCK:Ljava/lang/Object;
monitor-enter v4
:try_start_9
sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;
if-nez v3, :cond_25
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
sput-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;
:cond_14
new-instance v2, Landroid/support/v7/widget/TintContextWrapper;
invoke-direct {v2, p0}, Landroid/support/v7/widget/TintContextWrapper;-><init>(Landroid/content/Context;)V
sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;
new-instance v5, Ljava/lang/ref/WeakReference;
invoke-direct {v5, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
monitor-exit v4
:goto_24
return-object v2
:cond_25
sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v0, v3, -0x1
:goto_2d
if-ltz v0, :cond_47
sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_3f
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
if-nez v3, :cond_44
:cond_3f
sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
:cond_44
add-int/lit8 v0, v0, -0x1
goto :goto_2d
:cond_47
sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v0, v3, -0x1
:goto_4f
if-ltz v0, :cond_14
sget-object v3, Landroid/support/v7/widget/TintContextWrapper;->sCache:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_6f
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/widget/TintContextWrapper;
move-object v2, v3
:goto_62
if-eqz v2, :cond_71
invoke-virtual {v2}, Landroid/support/v7/widget/TintContextWrapper;->getBaseContext()Landroid/content/Context;
move-result-object v3
if-ne v3, p0, :cond_71
monitor-exit v4
goto :goto_24
:catchall_6c
move-exception v3
monitor-exit v4
:try_end_6e
.catchall {:try_start_9 .. :try_end_6e} :catchall_6c
throw v3
:cond_6f
const/4 v2, 0x0
goto :goto_62
:cond_71
add-int/lit8 v0, v0, -0x1
goto :goto_4f
:cond_74
move-object v2, p0
goto :goto_24
.end method
.method public getAssets()Landroid/content/res/AssetManager;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;
invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
return-object v0
.end method
.method public getResources()Landroid/content/res/Resources;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mResources:Landroid/content/res/Resources;
return-object v0
.end method
.method public getTheme()Landroid/content/res/Resources$Theme;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;
if-nez v0, :cond_9
invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;
goto :goto_8
.end method
.method public setTheme(I)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;
if-nez v0, :cond_8
invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V
:goto_7
return-void
:cond_8
iget-object v0, p0, Landroid/support/v7/widget/TintContextWrapper;->mTheme:Landroid/content/res/Resources$Theme;
const/4 v1, 0x1
invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
goto :goto_7
.end method