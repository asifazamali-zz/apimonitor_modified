.class public Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "DrawerArrowDrawable.java"
.field public static final ARROW_DIRECTION_END:I = 0x3
.field public static final ARROW_DIRECTION_LEFT:I = 0x0
.field public static final ARROW_DIRECTION_RIGHT:I = 0x1
.field public static final ARROW_DIRECTION_START:I = 0x2
.field private static final ARROW_HEAD_ANGLE:F
.field private mArrowHeadLength:F
.field private mArrowShaftLength:F
.field private mBarGap:F
.field private mBarLength:F
.field private mDirection:I
.field private mMaxCutForBarSize:F
.field private final mPaint:Landroid/graphics/Paint;
.field private final mPath:Landroid/graphics/Path;
.field private mProgress:F
.field private final mSize:I
.field private mSpin:Z
.field private mVerticalMirror:Z
.method static constructor <clinit>()V
.registers 2
const-wide v0, 0x4046800000000000L
invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v0
double-to-float v0, v0
sput v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 11
const/4 v8, 0x1
const/4 v7, 0x0
const/4 v6, 0x0
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v1, Landroid/graphics/Paint;
invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
new-instance v1, Landroid/graphics/Path;
invoke-direct {v1}, Landroid/graphics/Path;-><init>()V
iput-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
iput-boolean v7, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z
const/4 v1, 0x2
iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I
iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
iget-object v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v1
const/4 v2, 0x0
sget-object v3, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle:[I
sget v4, Landroid/support/v7/appcompat/R$attr;->drawerArrowStyle:I
sget v5, Landroid/support/v7/appcompat/R$style;->Base_Widget_AppCompat_DrawerArrowToggle:I
invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_color:I
invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setColor(I)V
sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_thickness:I
invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setBarThickness(F)V
sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_spinBars:I
invoke-virtual {v0, v1, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setSpinEnabled(Z)V
sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_gapBetweenBars:I
invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v1
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
int-to-float v1, v1
invoke-virtual {p0, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->setGapSize(F)V
sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_drawableSize:I
invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v1
iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I
sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_barLength:I
invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v1
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
int-to-float v1, v1
iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F
sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_arrowHeadLength:I
invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v1
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
int-to-float v1, v1
iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F
sget v1, Landroid/support/v7/appcompat/R$styleable;->DrawerArrowToggle_arrowShaftLength:I
invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F
move-result v1
iput v1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method private static lerp(FFF)F
.registers 4
sub-float v0, p1, p0
mul-float/2addr v0, p2
add-float/2addr v0, p0
return v0
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 26
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->getBounds()Landroid/graphics/Rect;
move-result-object v11
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I
move/from16 v18, v0
packed-switch v18, :pswitch_data_230
:pswitch_d
invoke-static/range {p0 .. p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
move-result v18
const/16 v19, 0x1
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_213
const/4 v13, 0x1
:goto_1a
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F
move/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F
move/from16 v19, v0
mul-float v18, v18, v19
const/high16 v19, 0x4000
mul-float v18, v18, v19
move/from16 v0, v18
float-to-double v0, v0
move-wide/from16 v18, v0
invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v18
move-wide/from16 v0, v18
double-to-float v5, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F
move/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F
move/from16 v19, v0
move/from16 v0, v18
move/from16 v1, v19
invoke-static {v0, v5, v1}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F
move-result v5
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F
move/from16 v18, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F
move/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F
move/from16 v20, v0
invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F
move-result v8
const/16 v18, 0x0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F
move/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F
move/from16 v20, v0
invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F
move-result v18
invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I
move-result v18
move/from16 v0, v18
int-to-float v7, v0
const/16 v18, 0x0
sget v19, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F
move/from16 v20, v0
invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F
move-result v15
if-eqz v13, :cond_216
const/16 v18, 0x0
move/from16 v19, v18
:goto_8f
if-eqz v13, :cond_21c
const/high16 v18, 0x4334
:goto_93
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F
move/from16 v20, v0
move/from16 v0, v19
move/from16 v1, v18
move/from16 v2, v20
invoke-static {v0, v1, v2}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F
move-result v12
float-to-double v0, v5
move-wide/from16 v18, v0
float-to-double v0, v15
move-wide/from16 v20, v0
invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D
move-result-wide v20
mul-double v18, v18, v20
invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J
move-result-wide v18
move-wide/from16 v0, v18
long-to-float v9, v0
float-to-double v0, v5
move-wide/from16 v18, v0
float-to-double v0, v15
move-wide/from16 v20, v0
invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D
move-result-wide v20
mul-double v18, v18, v20
invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J
move-result-wide v18
move-wide/from16 v0, v18
long-to-float v6, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->rewind()V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F
move/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Landroid/graphics/Paint;->getStrokeWidth()F
move-result v19
add-float v18, v18, v19
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F
move/from16 v19, v0
move/from16 v0, v19
neg-float v0, v0
move/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F
move/from16 v20, v0
invoke-static/range {v18 .. v20}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->lerp(FFF)F
move-result v16
neg-float v0, v8
move/from16 v18, v0
const/high16 v19, 0x4000
div-float v4, v18, v19
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
move-object/from16 v18, v0
add-float v19, v4, v7
const/16 v20, 0x0
invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->moveTo(FF)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
move-object/from16 v18, v0
const/high16 v19, 0x4000
mul-float v19, v19, v7
sub-float v19, v8, v19
const/16 v20, 0x0
invoke-virtual/range {v18 .. v20}, Landroid/graphics/Path;->rLineTo(FF)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
move-object/from16 v18, v0
move-object/from16 v0, v18
move/from16 v1, v16
invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
move-object/from16 v18, v0
move-object/from16 v0, v18
invoke-virtual {v0, v9, v6}, Landroid/graphics/Path;->rLineTo(FF)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
move-object/from16 v18, v0
move/from16 v0, v16
neg-float v0, v0
move/from16 v19, v0
move-object/from16 v0, v18
move/from16 v1, v19
invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
move-object/from16 v18, v0
neg-float v0, v6
move/from16 v19, v0
move-object/from16 v0, v18
move/from16 v1, v19
invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->rLineTo(FF)V
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->close()V
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
move-object/from16 v18, v0
invoke-virtual/range {v18 .. v18}, Landroid/graphics/Paint;->getStrokeWidth()F
move-result v10
invoke-virtual {v11}, Landroid/graphics/Rect;->height()I
move-result v18
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
const/high16 v19, 0x4040
mul-float v19, v19, v10
sub-float v18, v18, v19
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F
move/from16 v19, v0
const/high16 v20, 0x4000
mul-float v19, v19, v20
sub-float v18, v18, v19
move/from16 v0, v18
float-to-int v14, v0
div-int/lit8 v18, v14, 0x4
mul-int/lit8 v18, v18, 0x2
move/from16 v0, v18
int-to-float v0, v0
move/from16 v17, v0
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v18, v0
float-to-double v0, v10
move-wide/from16 v20, v0
const-wide/high16 v22, 0x3ff8
mul-double v20, v20, v22
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F
move/from16 v22, v0
move/from16 v0, v22
float-to-double v0, v0
move-wide/from16 v22, v0
add-double v20, v20, v22
add-double v18, v18, v20
move-wide/from16 v0, v18
double-to-float v0, v0
move/from16 v17, v0
invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I
move-result v18
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
move-object/from16 v0, p1
move/from16 v1, v18
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z
move/from16 v18, v0
if-eqz v18, :cond_223
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z
move/from16 v18, v0
xor-int v18, v18, v13
if-eqz v18, :cond_220
const/16 v18, -0x1
:goto_1db
move/from16 v0, v18
int-to-float v0, v0
move/from16 v18, v0
mul-float v18, v18, v12
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V
:cond_1e9
:goto_1e9
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPath:Landroid/graphics/Path;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
move-object/from16 v19, v0
move-object/from16 v0, p1
move-object/from16 v1, v18
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
return-void
:pswitch_202
const/4 v13, 0x0
goto/16 :goto_1a
:pswitch_205
const/4 v13, 0x1
goto/16 :goto_1a
:pswitch_208
invoke-static/range {p0 .. p0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
move-result v18
if-nez v18, :cond_211
const/4 v13, 0x1
:goto_20f
goto/16 :goto_1a
:cond_211
const/4 v13, 0x0
goto :goto_20f
:cond_213
const/4 v13, 0x0
goto/16 :goto_1a
:cond_216
const/high16 v18, -0x3ccc
move/from16 v19, v18
goto/16 :goto_8f
:cond_21c
const/16 v18, 0x0
goto/16 :goto_93
:cond_220
const/16 v18, 0x1
goto :goto_1db
:cond_223
if-eqz v13, :cond_1e9
const/high16 v18, 0x4334
move-object/from16 v0, p1
move/from16 v1, v18
invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V
goto :goto_1e9
nop
:pswitch_data_230
.packed-switch 0x0
:pswitch_202
:pswitch_205
:pswitch_d
:pswitch_208
.end packed-switch
.end method
.method public getArrowHeadLength()F
.registers 2
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F
return v0
.end method
.method public getArrowShaftLength()F
.registers 2
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F
return v0
.end method
.method public getBarLength()F
.registers 2
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F
return v0
.end method
.method public getBarThickness()F
.registers 2
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F
move-result v0
return v0
.end method
.method public getColor()I
.registers 2
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I
move-result v0
return v0
.end method
.method public getDirection()I
.registers 2
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I
return v0
.end method
.method public getGapSize()F
.registers 2
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F
return v0
.end method
.method public getIntrinsicHeight()I
.registers 2
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I
return v0
.end method
.method public getIntrinsicWidth()I
.registers 2
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSize:I
return v0
.end method
.method public getOpacity()I
.registers 2
const/4 v0, -0x3
return v0
.end method
.method public final getPaint()Landroid/graphics/Paint;
.registers 2
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
return-object v0
.end method
.method public getProgress()F
.registers 2
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F
return v0
.end method
.method public isSpinEnabled()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z
return v0
.end method
.method public setAlpha(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I
move-result v0
if-eq p1, v0, :cond_10
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_10
return-void
.end method
.method public setArrowHeadLength(F)V
.registers 3
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowHeadLength:F
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_b
return-void
.end method
.method public setArrowShaftLength(F)V
.registers 3
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mArrowShaftLength:F
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_b
return-void
.end method
.method public setBarLength(F)V
.registers 3
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarLength:F
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_b
return-void
.end method
.method public setBarThickness(F)V
.registers 6
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F
move-result v0
cmpl-float v0, v0, p1
if-eqz v0, :cond_22
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
const/high16 v0, 0x4000
div-float v0, p1, v0
float-to-double v0, v0
sget v2, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->ARROW_HEAD_ANGLE:F
float-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D
move-result-wide v2
mul-double/2addr v0, v2
double-to-float v0, v0
iput v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mMaxCutForBarSize:F
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_22
return-void
.end method
.method public setColor(I)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I
move-result v0
if-eq p1, v0, :cond_10
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_10
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
return-void
.end method
.method public setDirection(I)V
.registers 3
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I
if-eq p1, v0, :cond_9
iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mDirection:I
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_9
return-void
.end method
.method public setGapSize(F)V
.registers 3
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F
cmpl-float v0, p1, v0
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mBarGap:F
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_b
return-void
.end method
.method public setProgress(F)V
.registers 3
.parameter
.end parameter
iget v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F
cmpl-float v0, v0, p1
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mProgress:F
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_b
return-void
.end method
.method public setSpinEnabled(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z
if-eq v0, p1, :cond_9
iput-boolean p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mSpin:Z
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_9
return-void
.end method
.method public setVerticalMirror(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z
if-eq v0, p1, :cond_9
iput-boolean p1, p0, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->mVerticalMirror:Z
invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/DrawerArrowDrawable;->invalidateSelf()V
:cond_9
return-void
.end method