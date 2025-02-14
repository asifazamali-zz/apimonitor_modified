.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"
.field private static final ANIMATION_DURATION_MS:I = 0x7d0
.field private static final COLOR1:I = -0x4d000000
.field private static final COLOR2:I = -0x80000000
.field private static final COLOR3:I = 0x4d000000
.field private static final COLOR4:I = 0x1a000000
.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8
.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;
.field private mBounds:Landroid/graphics/Rect;
.field private final mClipRect:Landroid/graphics/RectF;
.field private mColor1:I
.field private mColor2:I
.field private mColor3:I
.field private mColor4:I
.field private mFinishTime:J
.field private final mPaint:Landroid/graphics/Paint;
.field private mParent:Landroid/view/View;
.field private mRunning:Z
.field private mStartTime:J
.field private mTriggerPercentage:F
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;
invoke-direct {v0}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V
sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;
return-void
.end method
.method constructor <init>(Landroid/view/View;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;
const/high16 v0, -0x4d00
iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I
const/high16 v0, -0x8000
iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I
const/high16 v0, 0x4d00
iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I
const/high16 v0, 0x1a00
iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I
return-void
.end method
.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
.registers 9
const/4 v2, 0x0
iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V
sget-object v1, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;
invoke-interface {v1, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v0
invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V
iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v2, v2, p2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
return-void
.end method
.method private drawTrigger(Landroid/graphics/Canvas;II)V
.registers 8
iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;
iget v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
int-to-float v0, p2
int-to-float v1, p3
int-to-float v2, p2
iget v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F
mul-float/2addr v2, v3
iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
return-void
.end method
.method  draw(Landroid/graphics/Canvas;)V
.registers 27
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
invoke-virtual {v2}, Landroid/graphics/Rect;->width()I
move-result v24
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
invoke-virtual {v2}, Landroid/graphics/Rect;->height()I
move-result v17
div-int/lit8 v9, v24, 0x2
div-int/lit8 v10, v17, 0x2
const/4 v11, 0x0
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
move-result v23
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
move-object/from16 v0, p1
invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z
move-object/from16 v0, p0
iget-boolean v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z
if-nez v2, :cond_32
move-object/from16 v0, p0
iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_1fc
:cond_32
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v20
move-object/from16 v0, p0
iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J
sub-long v2, v20, v2
const-wide/16 v4, 0x7d0
rem-long v12, v2, v4
move-object/from16 v0, p0
iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J
sub-long v2, v20, v2
const-wide/16 v4, 0x7d0
div-long v18, v2, v4
long-to-float v2, v12
const/high16 v3, 0x41a0
div-float v22, v2, v3
move-object/from16 v0, p0
iget-boolean v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z
if-nez v2, :cond_a1
move-object/from16 v0, p0
iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J
sub-long v2, v20, v2
const-wide/16 v4, 0x3e8
cmp-long v2, v2, v4
if-ltz v2, :cond_68
const-wide/16 v2, 0x0
move-object/from16 v0, p0
iput-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J
:goto_67
return-void
:cond_68
move-object/from16 v0, p0
iget-wide v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J
sub-long v2, v20, v2
const-wide/16 v4, 0x3e8
rem-long v14, v2, v4
long-to-float v2, v14
const/high16 v3, 0x4120
div-float v16, v2, v3
const/high16 v2, 0x42c8
div-float v7, v16, v2
div-int/lit8 v2, v24, 0x2
int-to-float v2, v2
sget-object v3, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;
invoke-interface {v3, v7}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v3
mul-float v8, v2, v3
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;
int-to-float v3, v9
sub-float/2addr v3, v8
const/4 v4, 0x0
int-to-float v5, v9
add-float/2addr v5, v8
move/from16 v0, v17
int-to-float v6, v0
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;
const/4 v3, 0x0
const/4 v4, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I
const/4 v11, 0x1
:cond_a1
const-wide/16 v2, 0x0
cmp-long v2, v18, v2
if-nez v2, :cond_1ad
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I
move-object/from16 v0, p1
invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V
:goto_b0
const/4 v2, 0x0
cmpl-float v2, v22, v2
if-ltz v2, :cond_d3
const/high16 v2, 0x41c8
cmpg-float v2, v22, v2
if-gtz v2, :cond_d3
const/high16 v2, 0x41c8
add-float v2, v2, v22
const/high16 v3, 0x4000
mul-float/2addr v2, v3
const/high16 v3, 0x42c8
div-float v7, v2, v3
int-to-float v4, v9
int-to-float v5, v10
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I
move-object/from16 v2, p0
move-object/from16 v3, p1
invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V
:cond_d3
const/4 v2, 0x0
cmpl-float v2, v22, v2
if-ltz v2, :cond_f3
const/high16 v2, 0x4248
cmpg-float v2, v22, v2
if-gtz v2, :cond_f3
const/high16 v2, 0x4000
mul-float v2, v2, v22
const/high16 v3, 0x42c8
div-float v7, v2, v3
int-to-float v4, v9
int-to-float v5, v10
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I
move-object/from16 v2, p0
move-object/from16 v3, p1
invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V
:cond_f3
const/high16 v2, 0x41c8
cmpl-float v2, v22, v2
if-ltz v2, :cond_117
const/high16 v2, 0x4296
cmpg-float v2, v22, v2
if-gtz v2, :cond_117
const/high16 v2, 0x41c8
sub-float v2, v22, v2
const/high16 v3, 0x4000
mul-float/2addr v2, v3
const/high16 v3, 0x42c8
div-float v7, v2, v3
int-to-float v4, v9
int-to-float v5, v10
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I
move-object/from16 v2, p0
move-object/from16 v3, p1
invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V
:cond_117
const/high16 v2, 0x4248
cmpl-float v2, v22, v2
if-ltz v2, :cond_13b
const/high16 v2, 0x42c8
cmpg-float v2, v22, v2
if-gtz v2, :cond_13b
const/high16 v2, 0x4248
sub-float v2, v22, v2
const/high16 v3, 0x4000
mul-float/2addr v2, v3
const/high16 v3, 0x42c8
div-float v7, v2, v3
int-to-float v4, v9
int-to-float v5, v10
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I
move-object/from16 v2, p0
move-object/from16 v3, p1
invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V
:cond_13b
const/high16 v2, 0x4296
cmpl-float v2, v22, v2
if-ltz v2, :cond_15f
const/high16 v2, 0x42c8
cmpg-float v2, v22, v2
if-gtz v2, :cond_15f
const/high16 v2, 0x4296
sub-float v2, v22, v2
const/high16 v3, 0x4000
mul-float/2addr v2, v3
const/high16 v3, 0x42c8
div-float v7, v2, v3
int-to-float v4, v9
int-to-float v5, v10
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I
move-object/from16 v2, p0
move-object/from16 v3, p1
invoke-direct/range {v2 .. v7}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V
:cond_15f
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F
const/4 v3, 0x0
cmpl-float v2, v2, v3
if-lez v2, :cond_185
if-eqz v11, :cond_185
move-object/from16 v0, p1
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
move-result v23
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
move-object/from16 v0, p1
invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v9, v10}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V
:cond_185
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;
move-object/from16 v0, p0
iget-object v3, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
iget-object v6, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->bottom:I
invoke-static {v2, v3, v4, v5, v6}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V
:cond_1a4
:goto_1a4
move-object/from16 v0, p1
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
goto/16 :goto_67
:cond_1ad
const/4 v2, 0x0
cmpl-float v2, v22, v2
if-ltz v2, :cond_1c3
const/high16 v2, 0x41c8
cmpg-float v2, v22, v2
if-gez v2, :cond_1c3
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I
move-object/from16 v0, p1
invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V
goto/16 :goto_b0
:cond_1c3
const/high16 v2, 0x41c8
cmpl-float v2, v22, v2
if-ltz v2, :cond_1da
const/high16 v2, 0x4248
cmpg-float v2, v22, v2
if-gez v2, :cond_1da
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I
move-object/from16 v0, p1
invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V
goto/16 :goto_b0
:cond_1da
const/high16 v2, 0x4248
cmpl-float v2, v22, v2
if-ltz v2, :cond_1f1
const/high16 v2, 0x4296
cmpg-float v2, v22, v2
if-gez v2, :cond_1f1
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I
move-object/from16 v0, p1
invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V
goto/16 :goto_b0
:cond_1f1
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I
move-object/from16 v0, p1
invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V
goto/16 :goto_b0
:cond_1fc
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F
const/4 v3, 0x0
cmpl-float v2, v2, v3
if-lez v2, :cond_1a4
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F
float-to-double v2, v2
const-wide/high16 v4, 0x3ff0
cmpg-double v2, v2, v4
if-gtz v2, :cond_1a4
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v9, v10}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V
goto :goto_1a4
.end method
.method  isRunning()Z
.registers 5
iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z
if-nez v0, :cond_c
iget-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method  setBounds(IIII)V
.registers 6
iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iput p1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iput p2, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iput p3, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iput p4, v0, Landroid/graphics/Rect;->bottom:I
return-void
.end method
.method  setColorScheme(IIII)V
.registers 5
iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I
iput p2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I
iput p3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I
iput p4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I
return-void
.end method
.method  setTriggerPercentage(F)V
.registers 7
iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F
const-wide/16 v0, 0x0
iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J
iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;
iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
iget-object v4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;IIII)V
return-void
.end method
.method  start()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z
if-nez v0, :cond_15
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z
iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V
:cond_15
return-void
.end method
.method  stop()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z
if-eqz v0, :cond_15
const/4 v0, 0x0
iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z
iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V
:cond_15
return-void
.end method