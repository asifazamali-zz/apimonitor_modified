.class public final Landroid/support/v4/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final INT:[I = null

.field private static final OBJECT:[Ljava/lang/Object; = null

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static sBaseCache:[Ljava/lang/Object;

.field static sBaseCacheSize:I

.field static sTwiceBaseCache:[Ljava/lang/Object;

.field static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/support/v4/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-array v0, v1, [I

    sput-object v0, Landroid/support/v4/util/ArraySet;->INT:[I

    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/support/v4/util/ArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/ArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-nez p1, :cond_13

    sget-object v0, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    sget-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    :goto_f
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return-void

    :cond_13
    invoke-direct {p0, p1}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    goto :goto_f
.end method

.method public constructor <init>(Landroid/support/v4/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Landroid/support/v4/util/ArraySet;)V

    :cond_8
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_8
    return-void
.end method

.method private allocArrays(I)V
    .registers 7

    const/16 v1, 0x8

    if-ne p1, v1, :cond_3d

    const-class v2, Landroid/support/v4/util/ArraySet;

    monitor-enter v2

    :try_start_7
    sget-object v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_30

    sget-object v0, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    sget v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    monitor-exit v2

    :goto_2f
    return-void

    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_3a

    :cond_31
    :goto_31
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    new-array v1, p1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    goto :goto_2f

    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1

    :cond_3d
    const/4 v1, 0x4

    if-ne p1, v1, :cond_31

    const-class v2, Landroid/support/v4/util/ArraySet;

    monitor-enter v2

    :try_start_43
    sget-object v1, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_6f

    sget-object v0, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    aput-object v4, v0, v1

    sget v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    monitor-exit v2

    goto :goto_2f

    :catchall_6c
    move-exception v1

    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_43 .. :try_end_6e} :catchall_6c

    throw v1

    :cond_6f
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6c

    goto :goto_31
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .registers 8

    const/16 v3, 0xa

    const/4 v4, 0x2

    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2e

    const-class v2, Landroid/support/v4/util/ArraySet;

    monitor-enter v2

    :try_start_b
    sget v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_29

    const/4 v1, 0x0

    sget-object v3, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    const/4 v1, 0x1

    aput-object p0, p1, v1

    add-int/lit8 v0, p2, -0x1

    :goto_19
    if-lt v0, v4, :cond_21

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    :cond_21
    sput-object p1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    sget v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/v4/util/ArraySet;->sTwiceBaseCacheSize:I

    :cond_29
    monitor-exit v2

    :cond_2a
    :goto_2a
    return-void

    :catchall_2b
    move-exception v1

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_b .. :try_end_2d} :catchall_2b

    throw v1

    :cond_2e
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2a

    const-class v2, Landroid/support/v4/util/ArraySet;

    monitor-enter v2

    :try_start_35
    sget v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    if-ge v1, v3, :cond_53

    const/4 v1, 0x0

    sget-object v3, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    aput-object v3, p1, v1

    const/4 v1, 0x1

    aput-object p0, p1, v1

    add-int/lit8 v0, p2, -0x1

    :goto_43
    if-lt v0, v4, :cond_4b

    const/4 v1, 0x0

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_43

    :cond_4b
    sput-object p1, Landroid/support/v4/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    sget v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/support/v4/util/ArraySet;->sBaseCacheSize:I

    :cond_53
    monitor-exit v2

    goto :goto_2a

    :catchall_55
    move-exception v1

    monitor-exit v2
    :try_end_57
    .catchall {:try_start_35 .. :try_end_57} :catchall_55

    throw v1
.end method

.method private getCollection()Landroid/support/v4/util/MapCollections;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v4/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/support/v4/util/ArraySet$1;-><init>(Landroid/support/v4/util/ArraySet;)V

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    :cond_b
    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mCollections:Landroid/support/v4/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .registers 8

    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 v3, -0x1

    :cond_5
    :goto_5
    return v3

    :cond_6
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    if-ltz v3, :cond_5

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    add-int/lit8 v1, v3, 0x1

    :goto_1a
    if-ge v1, v0, :cond_31

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_31

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    move v3, v1

    goto :goto_5

    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_31
    add-int/lit8 v2, v3, -0x1

    :goto_33
    if-ltz v2, :cond_4a

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_4a

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    move v3, v2

    goto :goto_5

    :cond_47
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    :cond_4a
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method

.method private indexOfNull()I
    .registers 7

    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez v0, :cond_6

    const/4 v3, -0x1

    :cond_5
    :goto_5
    return v3

    :cond_6
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Landroid/support/v4/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    if-ltz v3, :cond_5

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-eqz v4, :cond_5

    add-int/lit8 v1, v3, 0x1

    :goto_17
    if-ge v1, v0, :cond_2a

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_2a

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-nez v4, :cond_27

    move v3, v1

    goto :goto_5

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2a
    add-int/lit8 v2, v3, -0x1

    :goto_2c
    if-ltz v2, :cond_3f

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_3f

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-nez v4, :cond_3c

    move v3, v2

    goto :goto_5

    :cond_3c
    add-int/lit8 v2, v2, -0x1

    goto :goto_2c

    :cond_3f
    xor-int/lit8 v3, v1, -0x1

    goto :goto_5
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    const/16 v2, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-nez p1, :cond_f

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    move-result v1

    :goto_b
    if-ltz v1, :cond_21

    move v5, v6

    :goto_e
    return v5

    :cond_f
    iget-boolean v7, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v7, :cond_1c

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_17
    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    goto :goto_b

    :cond_1c
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_17

    :cond_21
    xor-int/lit8 v1, v1, -0x1

    iget v7, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget-object v8, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v8, v8

    if-lt v7, v8, :cond_53

    iget v7, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lt v7, v2, :cond_7f

    iget v5, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget v7, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    shr-int/lit8 v7, v7, 0x1

    add-int v2, v5, v7

    :cond_36
    :goto_36
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v2}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v5, v5

    if-lez v5, :cond_4e

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v7, v4

    invoke-static {v4, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v7, v3

    invoke-static {v3, v6, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4e
    iget v5, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v4, v3, v5}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_53
    iget v5, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v5, :cond_6f

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v6, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v6, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6f
    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aput v0, v5, v1

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    iget v5, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v5, 0x1

    goto :goto_e

    :cond_7f
    iget v7, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v7, v5, :cond_36

    move v2, v5

    goto :goto_36
.end method

.method public addAll(Landroid/support/v4/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget v0, p1, Landroid/support/v4/util/ArraySet;->mSize:I

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez v2, :cond_20

    if-lez v0, :cond_1f

    iget-object v2, p1, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p1, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    :cond_1f
    return-void

    :cond_20
    const/4 v1, 0x0

    :goto_21
    if-ge v1, v0, :cond_1f

    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/support/v4/util/ArraySet;->ensureCapacity(I)V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_f

    :cond_1f
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-nez p1, :cond_12

    const/4 v0, 0x0

    :goto_5
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-lt v1, v2, :cond_20

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Array is full"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    iget-boolean v2, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v2, :cond_1b

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    goto :goto_5

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_5

    :cond_20
    if-lez v1, :cond_2e

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-le v2, v0, :cond_2e

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_2d
    return-void

    :cond_2e
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    aput v0, v2, v1

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v1

    goto :goto_2d
.end method

.method public clear()V
    .registers 4

    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eqz v0, :cond_18

    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v0, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    sget-object v0, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    :cond_18
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public ensureCapacity(I)V
    .registers 7

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_24

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lez v2, :cond_1f

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1f
    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v0, v2}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    :cond_24
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v4

    :cond_5
    instance-of v6, p1, Ljava/util/Set;

    if-eqz v6, :cond_32

    move-object v3, p1

    check-cast v3, Ljava/util/Set;

    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v6

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v7

    if-eq v6, v7, :cond_18

    move v4, v5

    goto :goto_4

    :cond_18
    const/4 v0, 0x0

    :goto_19
    :try_start_19
    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v0, v6, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_24} :catch_2c
    .catch Ljava/lang/ClassCastException; {:try_start_19 .. :try_end_24} :catch_2f

    move-result v6

    if-nez v6, :cond_29

    move v4, v5

    goto :goto_4

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :catch_2c
    move-exception v1

    move v4, v5

    goto :goto_4

    :catch_2f
    move-exception v1

    move v4, v5

    goto :goto_4

    :cond_32
    move v4, v5

    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    :goto_6
    if-ge v1, v3, :cond_e

    aget v4, v0, v1

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_7

    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->indexOfNull()I

    move-result v0

    :goto_6
    return v0

    :cond_7
    iget-boolean v0, p0, Landroid/support/v4/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_14

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_f
    invoke-direct {p0, p1, v0}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_6

    :cond_14
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_f
.end method

.method public isEmpty()Z
    .registers 2

    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/support/v4/util/ArraySet;->getCollection()Landroid/support/v4/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_b

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAll(Landroid/support/v4/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/ArraySet",
            "<+TE;>;)Z"
        }
    .end annotation

    iget v0, p1, Landroid/support/v4/util/ArraySet;->mSize:I

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    invoke-virtual {p1, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-eq v2, v3, :cond_17

    const/4 v3, 0x1

    :goto_16
    return v3

    :cond_17
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    goto :goto_5

    :cond_15
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    const/16 v0, 0x8

    const/4 v7, 0x0

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v4, p1

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_20

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v4, v5, v6}, Landroid/support/v4/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    sget-object v4, Landroid/support/v4/util/ArraySet;->INT:[I

    iput-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    sget-object v4, Landroid/support/v4/util/ArraySet;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iput v7, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    :cond_1f
    :goto_1f
    return-object v3

    :cond_20
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-le v4, v0, :cond_6c

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_6c

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-le v4, v0, :cond_3a

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget v5, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    :cond_3a
    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/util/ArraySet;->allocArrays(I)V

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-lez p1, :cond_53

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_53
    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge p1, v4, :cond_1f

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v1, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f

    :cond_6c
    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    iget v4, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge p1, v4, :cond_8e

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/support/v4/util/ArraySet;->mHashes:[I

    iget v7, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v7, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8e
    iget-object v4, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    goto :goto_1f
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    add-int/lit8 v0, v2, -0x1

    :goto_5
    if-ltz v0, :cond_18

    iget-object v2, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual {p0, v0}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    const/4 v1, 0x1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_18
    return v1
.end method

.method public size()I
    .registers 2

    iget v0, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    const/4 v3, 0x0

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const/4 v3, 0x0

    array-length v1, p1

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_1a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_1a
    iget-object v1, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    iget v2, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-le v1, v2, :cond_2b

    iget v1, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    :cond_2b
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroid/support/v4/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "{}"

    :goto_8
    return-object v3

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    mul-int/lit8 v3, v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_18
    iget v3, p0, Landroid/support/v4/util/ArraySet;->mSize:I

    if-ge v1, v3, :cond_35

    if-lez v1, :cond_23

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    invoke-virtual {p0, v1}, Landroid/support/v4/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_2f
    const-string v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_35
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
