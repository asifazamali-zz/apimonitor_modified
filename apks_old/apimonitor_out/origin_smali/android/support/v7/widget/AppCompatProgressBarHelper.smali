.class Landroid/support/v7/widget/AppCompatProgressBarHelper;
.super Ljava/lang/Object;
.source "AppCompatProgressBarHelper.java"


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mSampleTile:Landroid/graphics/Bitmap;

.field private final mView:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x3bt 0x1t 0x1t 0x1t
        0x3ct 0x1t 0x1t 0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/widget/ProgressBar;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    return-void
.end method

.method private getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .registers 4

    const/4 v2, 0x0

    const/16 v1, 0x8

    new-array v0, v1, [F

    fill-array-data v0, :array_e

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_e
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
    .end array-data
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .registers 18

    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    if-eqz v12, :cond_20

    move-object/from16 v12, p1

    check-cast v12, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v12}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->getWrappedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1d

    move/from16 v0, p2

    invoke-direct {p0, v7, v0}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    move-object/from16 v12, p1

    check-cast v12, Landroid/support/v4/graphics/drawable/DrawableWrapper;

    invoke-interface {v12, v7}, Landroid/support/v4/graphics/drawable/DrawableWrapper;->setWrappedDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    move-object/from16 v8, p1

    :cond_1f
    :goto_1f
    return-object v8

    :cond_20
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v12, :cond_63

    move-object/from16 v2, p1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    new-array v9, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    :goto_31
    if-ge v5, v1, :cond_51

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v6

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    const v12, 0x102000d

    if-eq v6, v12, :cond_45

    const v12, 0x102000f

    if-ne v6, v12, :cond_4f

    :cond_45
    const/4 v12, 0x1

    :goto_46
    invoke-direct {p0, v13, v12}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    aput-object v12, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_4f
    const/4 v12, 0x0

    goto :goto_46

    :cond_51
    new-instance v8, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v8, v9}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v5, 0x0

    :goto_57
    if-ge v5, v1, :cond_1f

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v12

    invoke-virtual {v8, v5, v12}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    :cond_63
    move-object/from16 v0, p1

    instance-of v12, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_1d

    move-object/from16 v3, p1

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    iget-object v12, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    if-nez v12, :cond_77

    iput-object v11, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    :cond_77
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p0}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->getDrawableShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v12

    invoke-direct {v10, v12}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    new-instance v4, Landroid/graphics/BitmapShader;

    sget-object v12, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v4, v11, v12, v13}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    if-eqz p2, :cond_a9

    new-instance v12, Landroid/graphics/drawable/ClipDrawable;

    const/4 v13, 0x3

    const/4 v14, 0x1

    invoke-direct {v12, v10, v13, v14}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    move-object v10, v12

    :cond_a9
    move-object v8, v10

    goto/16 :goto_1f
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 10

    const/16 v7, 0x2710

    instance-of v5, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v5, :cond_36

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v0

    new-instance v4, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v0, :cond_32

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_32
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v4

    :cond_36
    return-object p1
.end method


# virtual methods
.method getSampleTime()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mSampleTile:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method loadFromAttributes(Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/support/v7/widget/AppCompatProgressBarHelper;->TINT_ATTRS:[I

    invoke-static {v2, p1, v3, p2, v4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1c

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1c
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawableIfKnown(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatProgressBarHelper;->mView:Landroid/widget/ProgressBar;

    invoke-direct {p0, v1, v4}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2c
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    return-void
.end method
