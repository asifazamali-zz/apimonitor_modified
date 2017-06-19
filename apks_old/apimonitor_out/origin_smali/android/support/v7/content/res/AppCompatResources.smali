.class public final Landroid/support/v7/content/res/AppCompatResources;
.super Ljava/lang/Object;
.source "AppCompatResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatResources"

.field private static final TL_TYPED_VALUE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/TypedValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final sColorStateCacheLock:Ljava/lang/Object;

.field private static final sColorStateCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/support/v7/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColorStateListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .registers 7
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    sget-object v2, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_17

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sget-object v1, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    new-instance v1, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;-><init>(Landroid/content/res/ColorStateList;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v2

    return-void

    :catchall_29
    move-exception v1

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw v1
.end method

.method private static getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 7
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v3, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCacheLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    sget-object v2, Landroid/support/v7/content/res/AppCompatResources;->sColorStateCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_32

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;

    if-eqz v1, :cond_32

    iget-object v2, v1, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, v1, Landroid/support/v7/content/res/AppCompatResources$ColorStateListCacheEntry;->value:Landroid/content/res/ColorStateList;

    monitor-exit v3

    :goto_2e
    return-object v2

    :cond_2f
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_32
    monitor-exit v3

    const/4 v2, 0x0

    goto :goto_2e

    :catchall_35
    move-exception v2

    monitor-exit v3
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 5
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end parameter

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :cond_a
    :goto_a
    return-object v0

    :cond_b
    invoke-static {p0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getCachedColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_a

    invoke-static {p0, p1}, Landroid/support/v7/content/res/AppCompatResources;->inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-static {p0, p1, v0}, Landroid/support/v7/content/res/AppCompatResources;->addColorStateListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    goto :goto_a

    :cond_1b
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_a
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 3
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static getTypedValue()Landroid/util/TypedValue;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v1, Landroid/support/v7/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/TypedValue;

    if-nez v0, :cond_14

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sget-object v1, Landroid/support/v7/content/res/AppCompatResources;->TL_TYPED_VALUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method private static inflateColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v3, 0x0

    invoke-static {p0, p1}, Landroid/support/v7/content/res/AppCompatResources;->isColorInt(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_8

    :goto_7
    return-object v3

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v1, v2, v4}, Landroid/support/v7/content/res/AppCompatColorStateListInflater;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_19

    move-result-object v3

    goto :goto_7

    :catch_19
    move-exception v0

    const-string v4, "AppCompatResources"

    const-string v5, "Failed to inflate ColorStateList, leaving it to the framework"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method private static isColorInt(Landroid/content/Context;I)Z
    .registers 7
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end parameter

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/content/res/AppCompatResources;->getTypedValue()Landroid/util/TypedValue;

    move-result-object v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_19

    iget v3, v1, Landroid/util/TypedValue;->type:I

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_19

    :goto_18
    return v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method
