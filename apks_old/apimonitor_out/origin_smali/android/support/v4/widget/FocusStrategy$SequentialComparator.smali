.class Landroid/support/v4/widget/FocusStrategy$SequentialComparator;
.super Ljava/lang/Object;
.source "FocusStrategy.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/FocusStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mIsLayoutRtl:Z

.field private final mTemp1:Landroid/graphics/Rect;

.field private final mTemp2:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(ZLandroid/support/v4/widget/FocusStrategy$BoundsAdapter;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    iput-boolean p1, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    iput-object p2, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mTemp1:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mTemp2:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    invoke-interface {v4, p1, v0}, Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    iget-object v4, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mAdapter:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    invoke-interface {v4, p2, v1}, Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;->obtainBounds(Ljava/lang/Object;Landroid/graphics/Rect;)V

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_17

    :cond_16
    :goto_16
    return v3

    :cond_17
    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1f

    move v3, v2

    goto :goto_16

    :cond_1f
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-ge v4, v5, :cond_2d

    iget-boolean v4, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v4, :cond_2b

    :goto_29
    move v3, v2

    goto :goto_16

    :cond_2b
    move v2, v3

    goto :goto_29

    :cond_2d
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_39

    iget-boolean v4, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-nez v4, :cond_16

    move v3, v2

    goto :goto_16

    :cond_39
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_16

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_47

    move v3, v2

    goto :goto_16

    :cond_47
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_55

    iget-boolean v4, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-eqz v4, :cond_53

    :goto_51
    move v3, v2

    goto :goto_16

    :cond_53
    move v2, v3

    goto :goto_51

    :cond_55
    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_61

    iget-boolean v4, p0, Landroid/support/v4/widget/FocusStrategy$SequentialComparator;->mIsLayoutRtl:Z

    if-nez v4, :cond_16

    move v3, v2

    goto :goto_16

    :cond_61
    const/4 v3, 0x0

    goto :goto_16
.end method
