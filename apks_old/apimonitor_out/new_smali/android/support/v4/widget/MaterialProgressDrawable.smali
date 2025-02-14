.class  Landroid/support/v4/widget/MaterialProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "MaterialProgressDrawable.java"
.implements Landroid/graphics/drawable/Animatable;
.field private static final ANIMATION_DURATION:I = 0x534
.field private static final ARROW_HEIGHT:I = 0x5
.field private static final ARROW_HEIGHT_LARGE:I = 0x6
.field private static final ARROW_OFFSET_ANGLE:F = 5.0f
.field private static final ARROW_WIDTH:I = 0xa
.field private static final ARROW_WIDTH_LARGE:I = 0xc
.field private static final CENTER_RADIUS:F = 8.75f
.field private static final CENTER_RADIUS_LARGE:F = 12.5f
.field private static final CIRCLE_DIAMETER:I = 0x28
.field private static final CIRCLE_DIAMETER_LARGE:I = 0x38
.field private static final COLORS:[I = null
.field private static final COLOR_START_DELAY_OFFSET:F = 0.75f
.field static final DEFAULT:I = 0x1
.field private static final END_TRIM_START_DELAY_OFFSET:F = 0.5f
.field private static final FULL_ROTATION:F = 1080.0f
.field static final LARGE:I = 0x0
.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator; = null
.field static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator; = null
.field private static final MAX_PROGRESS_ARC:F = 0.8f
.field private static final NUM_POINTS:F = 5.0f
.field private static final START_TRIM_DURATION_OFFSET:F = 0.5f
.field private static final STROKE_WIDTH:F = 2.5f
.field private static final STROKE_WIDTH_LARGE:F = 3.0f
.field private mAnimation:Landroid/view/animation/Animation;
.field private final mAnimators:Ljava/util/ArrayList;
.field private final mCallback:Landroid/graphics/drawable/Drawable$Callback;
.field  mFinishing:Z
.field private mHeight:D
.field private mParent:Landroid/view/View;
.field private mResources:Landroid/content/res/Resources;
.field private final mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
.field private mRotation:F
.field  mRotationCount:F
.field private mWidth:D
.method static constructor <clinit>()V
.registers 3
new-instance v0, Landroid/view/animation/LinearInterpolator;
invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V
sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;
new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;
invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V
sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const/high16 v2, -0x100
aput v2, v0, v1
sput-object v0, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I
return-void
.end method
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
.registers 5
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;
new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$3;
invoke-direct {v0, p0}, Landroid/support/v4/widget/MaterialProgressDrawable$3;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;)V
iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;
iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;
new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mCallback:Landroid/graphics/drawable/Drawable$Callback;
invoke-direct {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V
iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
sget-object v1, Landroid/support/v4/widget/MaterialProgressDrawable;->COLORS:[I
invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateSizes(I)V
invoke-direct {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setupAnimators()V
return-void
.end method
.method private evaluateColorChange(FII)I
.registers 16
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
move-result v8
shr-int/lit8 v10, v8, 0x18
and-int/lit16 v5, v10, 0xff
shr-int/lit8 v10, v8, 0x10
and-int/lit16 v9, v10, 0xff
shr-int/lit8 v10, v8, 0x8
and-int/lit16 v7, v10, 0xff
and-int/lit16 v6, v8, 0xff
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I
move-result v3
shr-int/lit8 v10, v3, 0x18
and-int/lit16 v0, v10, 0xff
shr-int/lit8 v10, v3, 0x10
and-int/lit16 v4, v10, 0xff
shr-int/lit8 v10, v3, 0x8
and-int/lit16 v2, v10, 0xff
and-int/lit16 v1, v3, 0xff
sub-int v10, v0, v5
int-to-float v10, v10
mul-float/2addr v10, p1
float-to-int v10, v10
add-int/2addr v10, v5
shl-int/lit8 v10, v10, 0x18
sub-int v11, v4, v9
int-to-float v11, v11
mul-float/2addr v11, p1
float-to-int v11, v11
add-int/2addr v11, v9
shl-int/lit8 v11, v11, 0x10
or-int/2addr v10, v11
sub-int v11, v2, v7
int-to-float v11, v11
mul-float/2addr v11, p1
float-to-int v11, v11
add-int/2addr v11, v7
shl-int/lit8 v11, v11, 0x8
or-int/2addr v10, v11
sub-int v11, v1, v6
int-to-float v11, v11
mul-float/2addr v11, p1
float-to-int v11, v11
add-int/2addr v11, v6
or-int/2addr v10, v11
return v10
.end method
.method private getRotation()F
.registers 2
iget v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F
return v0
.end method
.method private setSizeParameters(DDDDFF)V
.registers 18
iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
iget-object v3, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mResources:Landroid/content/res/Resources;
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v2, v0, Landroid/util/DisplayMetrics;->density:F
float-to-double v4, v2
mul-double/2addr v4, p1
iput-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D
float-to-double v4, v2
mul-double/2addr v4, p3
iput-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D
double-to-float v3, p7
mul-float/2addr v3, v2
invoke-virtual {v1, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStrokeWidth(F)V
float-to-double v4, v2
mul-double/2addr v4, p5
invoke-virtual {v1, v4, v5}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setCenterRadius(D)V
const/4 v3, 0x0
invoke-virtual {v1, v3}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V
mul-float v3, p9, v2
mul-float v4, p10, v2
invoke-virtual {v1, v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowDimensions(FF)V
iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D
double-to-int v3, v4
iget-wide v4, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D
double-to-int v4, v4
invoke-virtual {v1, v3, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setInsets(II)V
return-void
.end method
.method private setupAnimators()V
.registers 4
iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
new-instance v0, Landroid/support/v4/widget/MaterialProgressDrawable$1;
invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$1;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
const/4 v2, -0x1
invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V
sget-object v2, Landroid/support/v4/widget/MaterialProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V
new-instance v2, Landroid/support/v4/widget/MaterialProgressDrawable$2;
invoke-direct {v2, p0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$2;-><init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iput-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;
return-void
.end method
.method  applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
.registers 11
invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F
move-result v4
const v5, 0x3f4ccccd
div-float/2addr v4, v5
float-to-double v4, v4
invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D
move-result-wide v4
const-wide/high16 v6, 0x3ff0
add-double/2addr v4, v6
double-to-float v3, v4
invoke-virtual {p0, p2}, Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
move-result v0
invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F
move-result v4
invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F
move-result v5
sub-float/2addr v5, v0
invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F
move-result v6
sub-float/2addr v5, v6
mul-float/2addr v5, p1
add-float v2, v4, v5
invoke-virtual {p2, v2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V
invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F
move-result v4
invoke-virtual {p2, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V
invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F
move-result v4
invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F
move-result v5
sub-float v5, v3, v5
mul-float/2addr v5, p1
add-float v1, v4, v5
invoke-virtual {p2, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V
return-void
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 7
invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->getBounds()Landroid/graphics/Rect;
move-result-object v0
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F
invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F
move-result v3
invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F
move-result v4
invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V
iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v2, p1, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
return-void
.end method
.method public getAlpha()I
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getAlpha()I
move-result v0
return v0
.end method
.method public getIntrinsicHeight()I
.registers 3
iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mHeight:D
double-to-int v0, v0
return v0
.end method
.method public getIntrinsicWidth()I
.registers 3
iget-wide v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mWidth:D
double-to-int v0, v0
return v0
.end method
.method  getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
.registers 8
invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStrokeWidth()F
move-result v0
float-to-double v0, v0
const-wide v2, 0x401921fb54442d18L
invoke-virtual {p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getCenterRadius()D
move-result-wide v4
mul-double/2addr v2, v4
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method public getOpacity()I
.registers 2
const/4 v0, -0x3
return v0
.end method
.method public isRunning()Z
.registers 6
iget-object v2, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimators:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v3, 0x0
:goto_7
if-ge v3, v0, :cond_20
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/animation/Animation;
invoke-virtual {v1}, Landroid/view/animation/Animation;->hasStarted()Z
move-result v4
if-eqz v4, :cond_1d
invoke-virtual {v1}, Landroid/view/animation/Animation;->hasEnded()Z
move-result v4
if-nez v4, :cond_1d
const/4 v4, 0x1
:goto_1c
return v4
:cond_1d
add-int/lit8 v3, v3, 0x1
goto :goto_7
:cond_20
const/4 v4, 0x0
goto :goto_1c
.end method
.method public setAlpha(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setAlpha(I)V
return-void
.end method
.method public setArrowScale(F)V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setArrowScale(F)V
return-void
.end method
.method public setBackgroundColor(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setBackgroundColor(I)V
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
.method public varargs setColorSchemeColors([I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColors([I)V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V
return-void
.end method
.method public setProgressRotation(F)V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V
return-void
.end method
.method  setRotation(F)V
.registers 2
iput p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotation:F
invoke-virtual {p0}, Landroid/support/v4/widget/MaterialProgressDrawable;->invalidateSelf()V
return-void
.end method
.method public setStartEndTrim(FF)V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V
return-void
.end method
.method public showArrow(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V
return-void
.end method
.method public start()V
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;
invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->storeOriginals()V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getEndTrim()F
move-result v0
iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartTrim()F
move-result v1
cmpl-float v0, v0, v1
if-eqz v0, :cond_2c
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;
const-wide/16 v2, 0x29a
invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;
iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:goto_2b
return-void
:cond_2c
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;
const-wide/16 v2, 0x534
invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;
iget-object v1, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mAnimation:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_2b
.end method
.method public stop()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mParent:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setShowArrow(Z)V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0, v1}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColorIndex(I)V
iget-object v0, p0, Landroid/support/v4/widget/MaterialProgressDrawable;->mRing:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->resetOriginals()V
return-void
.end method
.method  updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
.registers 6
const/high16 v1, 0x3f40
cmpl-float v0, p1, v1
if-lez v0, :cond_1a
sub-float v0, p1, v1
const/high16 v1, 0x3e80
div-float/2addr v0, v1
invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingColor()I
move-result v1
invoke-virtual {p2}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getNextColor()I
move-result v2
invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/widget/MaterialProgressDrawable;->evaluateColorChange(FII)I
move-result v0
invoke-virtual {p2, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setColor(I)V
:cond_1a
return-void
.end method
.method public updateSizes(I)V
.registers 16
const-wide/high16 v2, 0x404c
const-wide/high16 v12, 0x4044
if-nez p1, :cond_14
const-wide/high16 v6, 0x4029
const-wide/high16 v8, 0x4008
const/high16 v10, 0x4140
const/high16 v11, 0x40c0
move-object v1, p0
move-wide v4, v2
invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V
:goto_13
return-void
:cond_14
const-wide v6, 0x4021800000000000L
const-wide/high16 v8, 0x4004
const/high16 v10, 0x4120
const/high16 v11, 0x40a0
move-object v1, p0
move-wide v2, v12
move-wide v4, v12
invoke-direct/range {v1 .. v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->setSizeParameters(DDDDFF)V
goto :goto_13
.end method