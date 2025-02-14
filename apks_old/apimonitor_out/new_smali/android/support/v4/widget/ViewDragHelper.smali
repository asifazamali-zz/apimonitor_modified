.class public Landroid/support/v4/widget/ViewDragHelper;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"
.field private static final BASE_SETTLE_DURATION:I = 0x100
.field public static final DIRECTION_ALL:I = 0x3
.field public static final DIRECTION_HORIZONTAL:I = 0x1
.field public static final DIRECTION_VERTICAL:I = 0x2
.field public static final EDGE_ALL:I = 0xf
.field public static final EDGE_BOTTOM:I = 0x8
.field public static final EDGE_LEFT:I = 0x1
.field public static final EDGE_RIGHT:I = 0x2
.field private static final EDGE_SIZE:I = 0x14
.field public static final EDGE_TOP:I = 0x4
.field public static final INVALID_POINTER:I = -0x1
.field private static final MAX_SETTLE_DURATION:I = 0x258
.field public static final STATE_DRAGGING:I = 0x1
.field public static final STATE_IDLE:I = 0x0
.field public static final STATE_SETTLING:I = 0x2
.field private static final TAG:Ljava/lang/String; = "ViewDragHelper"
.field private static final sInterpolator:Landroid/view/animation/Interpolator;
.field private mActivePointerId:I
.field private final mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
.field private mCapturedView:Landroid/view/View;
.field private mDragState:I
.field private mEdgeDragsInProgress:[I
.field private mEdgeDragsLocked:[I
.field private mEdgeSize:I
.field private mInitialEdgesTouched:[I
.field private mInitialMotionX:[F
.field private mInitialMotionY:[F
.field private mLastMotionX:[F
.field private mLastMotionY:[F
.field private mMaxVelocity:F
.field private mMinVelocity:F
.field private final mParentView:Landroid/view/ViewGroup;
.field private mPointersDown:I
.field private mReleaseInProgress:Z
.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;
.field private final mSetIdleRunnable:Ljava/lang/Runnable;
.field private mTouchSlop:I
.field private mTrackingEdges:I
.field private mVelocityTracker:Landroid/view/VelocityTracker;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/widget/ViewDragHelper$1;
invoke-direct {v0}, Landroid/support/v4/widget/ViewDragHelper$1;-><init>()V
sput-object v0, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v2, -0x1
iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
new-instance v2, Landroid/support/v4/widget/ViewDragHelper$2;
invoke-direct {v2, p0}, Landroid/support/v4/widget/ViewDragHelper$2;-><init>(Landroid/support/v4/widget/ViewDragHelper;)V
iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;
if-nez p2, :cond_17
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Parent view may not be null"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_17
if-nez p3, :cond_21
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "Callback may not be null"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_21
iput-object p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
iput-object p3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v1
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v0, v2, Landroid/util/DisplayMetrics;->density:F
const/high16 v2, 0x41a0
mul-float/2addr v2, v0
const/high16 v3, 0x3f00
add-float/2addr v2, v3
float-to-int v2, v2
iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v2
iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I
move-result v2
int-to-float v2, v2
iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F
invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
move-result v2
int-to-float v2, v2
iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F
sget-object v2, Landroid/support/v4/widget/ViewDragHelper;->sInterpolator:Landroid/view/animation/Interpolator;
invoke-static {p1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;
move-result-object v2
iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
return-void
.end method
.method private checkNewEdgeDrag(FFII)Z
.registers 10
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v0
invoke-static {p2}, Ljava/lang/Math;->abs(F)F
move-result v1
iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-ne v3, p4, :cond_31
iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
and-int/2addr v3, p4
if-eqz v3, :cond_31
iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-eq v3, p4, :cond_31
iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-eq v3, p4, :cond_31
iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
int-to-float v3, v3
cmpg-float v3, v0, v3
if-gtz v3, :cond_32
iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
int-to-float v3, v3
cmpg-float v3, v1, v3
if-gtz v3, :cond_32
:goto_31
:cond_31
return v2
:cond_32
const/high16 v3, 0x3f00
mul-float/2addr v3, v1
cmpg-float v3, v0, v3
if-gez v3, :cond_49
iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v3, p4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeLock(I)Z
move-result v3
if-eqz v3, :cond_49
iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I
aget v4, v3, p3
or-int/2addr v4, p4
aput v4, v3, p3
goto :goto_31
:cond_49
iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I
aget v3, v3, p3
and-int/2addr v3, p4
if-nez v3, :cond_31
iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
int-to-float v3, v3
cmpl-float v3, v0, v3
if-lez v3, :cond_31
const/4 v2, 0x1
goto :goto_31
.end method
.method private checkTouchSlop(Landroid/view/View;FF)Z
.registers 11
const/4 v2, 0x1
const/4 v3, 0x0
if-nez p1, :cond_6
move v2, v3
:goto_5
:cond_5
return v2
:cond_6
iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I
move-result v4
if-lez v4, :cond_2d
move v0, v2
:goto_f
iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v4, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I
move-result v4
if-lez v4, :cond_2f
move v1, v2
:goto_18
if-eqz v0, :cond_31
if-eqz v1, :cond_31
mul-float v4, p2, p2
mul-float v5, p3, p3
add-float/2addr v4, v5
iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
iget v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
mul-int/2addr v5, v6
int-to-float v5, v5
cmpl-float v4, v4, v5
if-gtz v4, :cond_5
move v2, v3
goto :goto_5
:cond_2d
move v0, v3
goto :goto_f
:cond_2f
move v1, v3
goto :goto_18
:cond_31
if-eqz v0, :cond_40
invoke-static {p2}, Ljava/lang/Math;->abs(F)F
move-result v4
iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
int-to-float v5, v5
cmpl-float v4, v4, v5
if-gtz v4, :cond_5
move v2, v3
goto :goto_5
:cond_40
if-eqz v1, :cond_4f
invoke-static {p3}, Ljava/lang/Math;->abs(F)F
move-result v4
iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
int-to-float v5, v5
cmpl-float v4, v4, v5
if-gtz v4, :cond_5
move v2, v3
goto :goto_5
:cond_4f
move v2, v3
goto :goto_5
.end method
.method private clampMag(FFF)F
.registers 7
const/4 v1, 0x0
invoke-static {p1}, Ljava/lang/Math;->abs(F)F
move-result v0
cmpg-float v2, v0, p2
if-gez v2, :cond_b
move p3, v1
:cond_a
:goto_a
return p3
:cond_b
cmpl-float v2, v0, p3
if-lez v2, :cond_15
cmpl-float v1, p1, v1
if-gtz v1, :cond_a
neg-float p3, p3
goto :goto_a
:cond_15
move p3, p1
goto :goto_a
.end method
.method private clampMag(III)I
.registers 5
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v0
if-ge v0, p2, :cond_8
const/4 p3, 0x0
:cond_7
:goto_7
return p3
:cond_8
if-le v0, p3, :cond_e
if-gtz p1, :cond_7
neg-int p3, p3
goto :goto_7
:cond_e
move p3, p1
goto :goto_7
.end method
.method private clearMotionHistory()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I
invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V
iput v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I
goto :goto_6
.end method
.method private clearMotionHistory(I)V
.registers 5
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
if-eqz v0, :cond_c
invoke-virtual {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F
aput v1, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
aput v2, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I
aput v2, v0, p1
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I
aput v2, v0, p1
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I
const/4 v1, 0x1
shl-int/2addr v1, p1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I
goto :goto_c
.end method
.method private computeAxisDuration(III)I
.registers 14
const/high16 v9, 0x3f80
if-nez p1, :cond_6
const/4 v6, 0x0
:goto_5
return v6
:cond_6
iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I
move-result v5
div-int/lit8 v3, v5, 0x2
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v6
int-to-float v6, v6
int-to-float v7, v5
div-float/2addr v6, v7
invoke-static {v9, v6}, Ljava/lang/Math;->min(FF)F
move-result v1
int-to-float v6, v3
int-to-float v7, v3
invoke-direct {p0, v1}, Landroid/support/v4/widget/ViewDragHelper;->distanceInfluenceForSnapDuration(F)F
move-result v8
mul-float/2addr v7, v8
add-float v0, v6, v7
invoke-static {p2}, Ljava/lang/Math;->abs(I)I
move-result p2
if-lez p2, :cond_3f
const/high16 v6, 0x447a
int-to-float v7, p2
div-float v7, v0, v7
invoke-static {v7}, Ljava/lang/Math;->abs(F)F
move-result v7
mul-float/2addr v6, v7
invoke-static {v6}, Ljava/lang/Math;->round(F)I
move-result v6
mul-int/lit8 v2, v6, 0x4
:goto_38
const/16 v6, 0x258
invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I
move-result v6
goto :goto_5
:cond_3f
invoke-static {p1}, Ljava/lang/Math;->abs(I)I
move-result v6
int-to-float v6, v6
int-to-float v7, p3
div-float v4, v6, v7
add-float v6, v4, v9
const/high16 v7, 0x4380
mul-float/2addr v6, v7
float-to-int v2, v6
goto :goto_38
.end method
.method private computeSettleDuration(Landroid/view/View;IIII)I
.registers 20
iget v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F
float-to-int v12, v12
iget v13, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F
float-to-int v13, v13
move/from16 v0, p4
invoke-direct {p0, v0, v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I
move-result p4
iget v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F
float-to-int v12, v12
iget v13, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F
float-to-int v13, v13
move/from16 v0, p5
invoke-direct {p0, v0, v12, v13}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(III)I
move-result p5
invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I
move-result v2
invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I
move-result v3
invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(I)I
move-result v4
invoke-static/range {p5 .. p5}, Ljava/lang/Math;->abs(I)I
move-result v5
add-int v7, v4, v5
add-int v6, v2, v3
if-eqz p4, :cond_5b
int-to-float v12, v4
int-to-float v13, v7
div-float v9, v12, v13
:goto_32
if-eqz p5, :cond_60
int-to-float v12, v5
int-to-float v13, v7
div-float v11, v12, v13
:goto_38
iget-object v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v12, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I
move-result v12
move/from16 v0, p2
move/from16 v1, p4
invoke-direct {p0, v0, v1, v12}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I
move-result v8
iget-object v12, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v12, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I
move-result v12
move/from16 v0, p3
move/from16 v1, p5
invoke-direct {p0, v0, v1, v12}, Landroid/support/v4/widget/ViewDragHelper;->computeAxisDuration(III)I
move-result v10
int-to-float v12, v8
mul-float/2addr v12, v9
int-to-float v13, v10
mul-float/2addr v13, v11
add-float/2addr v12, v13
float-to-int v12, v12
return v12
:cond_5b
int-to-float v12, v2
int-to-float v13, v6
div-float v9, v12, v13
goto :goto_32
:cond_60
int-to-float v12, v3
int-to-float v13, v6
div-float v11, v12, v13
goto :goto_38
.end method
.method public static create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
.registers 6
invoke-static {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
move-result-object v0
iget v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
int-to-float v1, v1
const/high16 v2, 0x3f80
div-float/2addr v2, p1
mul-float/2addr v1, v2
float-to-int v1, v1
iput v1, v0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
return-object v0
.end method
.method public static create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;
.registers 4
new-instance v0, Landroid/support/v4/widget/ViewDragHelper;
invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1, p0, p1}, Landroid/support/v4/widget/ViewDragHelper;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)V
return-object v0
.end method
.method private dispatchViewReleased(FF)V
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
iput-boolean v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v0, v1, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V
iput-boolean v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
if-ne v0, v3, :cond_14
invoke-virtual {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V
:cond_14
return-void
.end method
.method private distanceInfluenceForSnapDuration(F)F
.registers 6
const/high16 v0, 0x3f00
sub-float/2addr p1, v0
float-to-double v0, p1
const-wide v2, 0x3fde28c7460698c7L
mul-double/2addr v0, v2
double-to-float p1, v0
float-to-double v0, p1
invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method private dragTo(IIII)V
.registers 13
move v2, p1
move v3, p2
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v6
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v7
if-eqz p3, :cond_1f
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v0, v1, p1, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I
move-result v2
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
sub-int v1, v2, v6
invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V
:cond_1f
if-eqz p4, :cond_30
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v0, v1, p2, p4}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I
move-result v3
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
sub-int v1, v3, v7
invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V
:cond_30
if-nez p3, :cond_34
if-eqz p4, :cond_3f
:cond_34
sub-int v4, v2, v6
sub-int v5, v3, v7
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V
:cond_3f
return-void
.end method
.method private ensureMotionHistorySizeForId(I)V
.registers 12
const/4 v9, 0x0
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
if-eqz v7, :cond_a
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
array-length v7, v7
if-gt v7, p1, :cond_70
:cond_a
add-int/lit8 v7, p1, 0x1
new-array v3, v7, [F
add-int/lit8 v7, p1, 0x1
new-array v4, v7, [F
add-int/lit8 v7, p1, 0x1
new-array v5, v7, [F
add-int/lit8 v7, p1, 0x1
new-array v6, v7, [F
add-int/lit8 v7, p1, 0x1
new-array v2, v7, [I
add-int/lit8 v7, p1, 0x1
new-array v0, v7, [I
add-int/lit8 v7, p1, 0x1
new-array v1, v7, [I
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
if-eqz v7, :cond_62
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
array-length v8, v8
invoke-static {v7, v9, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
array-length v8, v8
invoke-static {v7, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F
iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F
array-length v8, v8
invoke-static {v7, v9, v5, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F
iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F
array-length v8, v8
invoke-static {v7, v9, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
array-length v8, v8
invoke-static {v7, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I
iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I
array-length v8, v8
invoke-static {v7, v9, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I
iget-object v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I
array-length v8, v8
invoke-static {v7, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_62
iput-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
iput-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
iput-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F
iput-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F
iput-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I
iput-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsLocked:[I
:cond_70
return-void
.end method
.method private forceSettleCapturedViewAt(IIII)Z
.registers 16
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v10
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v6
sub-int v2, p1, v10
sub-int v3, p2, v6
if-nez v2, :cond_1e
if-nez v3, :cond_1e
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V
invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V
:goto_1d
return v0
:cond_1e
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
move-object v0, p0
move v4, p3
move v5, p4
invoke-direct/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper;->computeSettleDuration(Landroid/view/View;IIII)I
move-result v9
iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
move v5, v10
move v7, v2
move v8, v3
invoke-virtual/range {v4 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V
const/4 v0, 0x2
invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V
const/4 v0, 0x1
goto :goto_1d
.end method
.method private getEdgesTouched(II)I
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I
add-int/2addr v1, v2
if-ge p1, v1, :cond_e
or-int/lit8 v0, v0, 0x1
:cond_e
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I
add-int/2addr v1, v2
if-ge p2, v1, :cond_1b
or-int/lit8 v0, v0, 0x4
:cond_1b
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I
sub-int/2addr v1, v2
if-le p1, v1, :cond_28
or-int/lit8 v0, v0, 0x2
:cond_28
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I
move-result v1
iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I
sub-int/2addr v1, v2
if-le p2, v1, :cond_35
or-int/lit8 v0, v0, 0x8
:cond_35
return v0
.end method
.method private isValidPointerForActionMove(I)Z
.registers 5
invoke-virtual {p0, p1}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z
move-result v0
if-nez v0, :cond_32
const-string v0, "ViewDragHelper"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Ignoring pointerId="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " because ACTION_DOWN was not received "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "for this pointer before ACTION_MOVE. It likely happened because "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " ViewDragHelper did not receive all the events in the event stream."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
:goto_31
return v0
:cond_32
const/4 v0, 0x1
goto :goto_31
.end method
.method private releaseViewForPointerUp()V
.registers 6
iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
const/16 v3, 0x3e8
iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F
invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V
iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F
move-result v2
iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F
iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F
invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F
move-result v0
iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
invoke-static {v2, v3}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F
move-result v2
iget v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F
iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mMaxVelocity:F
invoke-direct {p0, v2, v3, v4}, Landroid/support/v4/widget/ViewDragHelper;->clampMag(FFF)F
move-result v1
invoke-direct {p0, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V
return-void
.end method
.method private reportNewEdgeDrags(FFI)V
.registers 7
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z
move-result v1
if-eqz v1, :cond_a
or-int/lit8 v0, v0, 0x1
:cond_a
const/4 v1, 0x4
invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z
move-result v1
if-eqz v1, :cond_13
or-int/lit8 v0, v0, 0x4
:cond_13
const/4 v1, 0x2
invoke-direct {p0, p1, p2, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z
move-result v1
if-eqz v1, :cond_1c
or-int/lit8 v0, v0, 0x2
:cond_1c
const/16 v1, 0x8
invoke-direct {p0, p2, p1, p3, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkNewEdgeDrag(FFII)Z
move-result v1
if-eqz v1, :cond_26
or-int/lit8 v0, v0, 0x8
:cond_26
if-eqz v0, :cond_34
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeDragsInProgress:[I
aget v2, v1, p3
or-int/2addr v2, v0
aput v2, v1, p3
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v1, v0, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeDragStarted(II)V
:cond_34
return-void
.end method
.method private saveInitialMotion(FFI)V
.registers 7
invoke-direct {p0, p3}, Landroid/support/v4/widget/ViewDragHelper;->ensureMotionHistorySizeForId(I)V
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F
aput p1, v1, p3
aput p1, v0, p3
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F
aput p2, v1, p3
aput p2, v0, p3
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
float-to-int v1, p1
float-to-int v2, p2
invoke-direct {p0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->getEdgesTouched(II)I
move-result v1
aput v1, v0, p3
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I
const/4 v1, 0x1
shl-int/2addr v1, p3
or-int/2addr v0, v1
iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I
return-void
.end method
.method private saveLastMotion(Landroid/view/MotionEvent;)V
.registers 8
invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v1
const/4 v0, 0x0
:goto_5
if-ge v0, v1, :cond_25
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v2
invoke-direct {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z
move-result v5
if-nez v5, :cond_14
:goto_11
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_14
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F
move-result v3
invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F
move-result v4
iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F
aput v3, v5, v2
iget-object v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F
aput v4, v5, v2
goto :goto_11
:cond_25
return-void
.end method
.method public abort()V
.registers 9
invoke-virtual {p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
const/4 v1, 0x2
if-ne v0, v1, :cond_30
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I
move-result v6
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I
move-result v7
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I
move-result v2
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I
move-result v3
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
sub-int v4, v2, v6
sub-int v5, v3, v7
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V
:cond_30
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V
return-void
.end method
.method protected canScroll(Landroid/view/View;ZIIII)Z
.registers 20
instance-of v1, p1, Landroid/view/ViewGroup;
if-eqz v1, :cond_5c
move-object v9, p1
check-cast v9, Landroid/view/ViewGroup;
invoke-virtual {p1}, Landroid/view/View;->getScrollX()I
move-result v11
invoke-virtual {p1}, Landroid/view/View;->getScrollY()I
move-result v12
invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I
move-result v8
add-int/lit8 v10, v8, -0x1
:goto_15
if-ltz v10, :cond_5c
invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v2
add-int v1, p5, v11
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v3
if-lt v1, v3, :cond_59
add-int v1, p5, v11
invoke-virtual {v2}, Landroid/view/View;->getRight()I
move-result v3
if-ge v1, v3, :cond_59
add-int v1, p6, v12
invoke-virtual {v2}, Landroid/view/View;->getTop()I
move-result v3
if-lt v1, v3, :cond_59
add-int v1, p6, v12
invoke-virtual {v2}, Landroid/view/View;->getBottom()I
move-result v3
if-ge v1, v3, :cond_59
const/4 v3, 0x1
add-int v1, p5, v11
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v4
sub-int v6, v1, v4
add-int v1, p6, v12
invoke-virtual {v2}, Landroid/view/View;->getTop()I
move-result v4
sub-int v7, v1, v4
move-object v1, p0
move/from16 v4, p3
move/from16 v5, p4
invoke-virtual/range {v1 .. v7}, Landroid/support/v4/widget/ViewDragHelper;->canScroll(Landroid/view/View;ZIIII)Z
move-result v1
if-eqz v1, :cond_59
const/4 v1, 0x1
:goto_58
return v1
:cond_59
add-int/lit8 v10, v10, -0x1
goto :goto_15
:cond_5c
if-eqz p2, :cond_72
move/from16 v0, p3
neg-int v1, v0
invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z
move-result v1
if-nez v1, :cond_70
move/from16 v0, p4
neg-int v1, v0
invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z
move-result v1
if-eqz v1, :cond_72
:cond_70
const/4 v1, 0x1
goto :goto_58
:cond_72
const/4 v1, 0x0
goto :goto_58
.end method
.method public cancel()V
.registers 2
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory()V
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
:cond_12
return-void
.end method
.method public captureChildView(Landroid/view/View;I)V
.registers 6
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
if-eq v0, v1, :cond_29
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "captureChildView: parameter must be a descendant of the ViewDragHelper\'s tracked parent view ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_29
iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V
return-void
.end method
.method public checkTouchSlop(I)Z
.registers 5
iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
array-length v0, v2
const/4 v1, 0x0
:goto_4
if-ge v1, v0, :cond_11
invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(II)Z
move-result v2
if-eqz v2, :cond_e
const/4 v2, 0x1
:goto_d
return v2
:cond_e
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_11
const/4 v2, 0x0
goto :goto_d
.end method
.method public checkTouchSlop(II)Z
.registers 12
const/4 v4, 0x1
const/4 v5, 0x0
invoke-virtual {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z
move-result v6
if-nez v6, :cond_a
move v4, v5
:goto_9
:cond_9
return v4
:cond_a
and-int/lit8 v6, p1, 0x1
if-ne v6, v4, :cond_3e
move v0, v4
:goto_f
and-int/lit8 v6, p1, 0x2
const/4 v7, 0x2
if-ne v6, v7, :cond_40
move v1, v4
:goto_15
iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F
aget v6, v6, p2
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
aget v7, v7, p2
sub-float v2, v6, v7
iget-object v6, p0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F
aget v6, v6, p2
iget-object v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
aget v7, v7, p2
sub-float v3, v6, v7
if-eqz v0, :cond_42
if-eqz v1, :cond_42
mul-float v6, v2, v2
mul-float v7, v3, v3
add-float/2addr v6, v7
iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
iget v8, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
mul-int/2addr v7, v8
int-to-float v7, v7
cmpl-float v6, v6, v7
if-gtz v6, :cond_9
move v4, v5
goto :goto_9
:cond_3e
move v0, v5
goto :goto_f
:cond_40
move v1, v5
goto :goto_15
:cond_42
if-eqz v0, :cond_51
invoke-static {v2}, Ljava/lang/Math;->abs(F)F
move-result v6
iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
int-to-float v7, v7
cmpl-float v6, v6, v7
if-gtz v6, :cond_9
move v4, v5
goto :goto_9
:cond_51
if-eqz v1, :cond_60
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v6
iget v7, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
int-to-float v7, v7
cmpl-float v6, v6, v7
if-gtz v6, :cond_9
move v4, v5
goto :goto_9
:cond_60
move v4, v5
goto :goto_9
.end method
.method public continueSettling(Z)Z
.registers 11
const/4 v8, 0x2
const/4 v7, 0x0
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
if-ne v0, v8, :cond_64
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z
move-result v6
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I
move-result v2
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I
move-result v3
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v0
sub-int v4, v2, v0
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
sub-int v5, v3, v0
if-eqz v4, :cond_2f
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V
:cond_2f
if-eqz v5, :cond_36
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V
:cond_36
if-nez v4, :cond_3a
if-eqz v5, :cond_41
:cond_3a
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V
:cond_41
if-eqz v6, :cond_59
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I
move-result v0
if-ne v2, v0, :cond_59
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I
move-result v0
if-ne v3, v0, :cond_59
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V
const/4 v6, 0x0
:cond_59
if-nez v6, :cond_64
if-eqz p1, :cond_6a
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z
:cond_64
:goto_64
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
if-ne v0, v8, :cond_6e
const/4 v0, 0x1
:goto_69
return v0
:cond_6a
invoke-virtual {p0, v7}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V
goto :goto_64
:cond_6e
move v0, v7
goto :goto_69
.end method
.method public findTopChildUnder(II)Landroid/view/View;
.registers 8
iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I
move-result v1
add-int/lit8 v2, v1, -0x1
:goto_8
if-ltz v2, :cond_32
iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v4, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getOrderedChildIndex(I)I
move-result v4
invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getLeft()I
move-result v3
if-lt p1, v3, :cond_2f
invoke-virtual {v0}, Landroid/view/View;->getRight()I
move-result v3
if-ge p1, v3, :cond_2f
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v3
if-lt p2, v3, :cond_2f
invoke-virtual {v0}, Landroid/view/View;->getBottom()I
move-result v3
if-ge p2, v3, :cond_2f
:goto_2e
return-object v0
:cond_2f
add-int/lit8 v2, v2, -0x1
goto :goto_8
:cond_32
const/4 v0, 0x0
goto :goto_2e
.end method
.method public flingCapturedView(IIII)V
.registers 14
iget-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot flingCapturedView outside of a call to Callback#onViewReleased"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mScroller:Landroid/support/v4/widget/ScrollerCompat;
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getLeft()I
move-result v1
iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getTop()I
move-result v2
iget-object v3, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
iget v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F
move-result v3
float-to-int v3, v3
iget-object v4, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
iget v5, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F
move-result v4
float-to-int v4, v4
move v5, p1
move v6, p3
move v7, p2
move v8, p4
invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V
const/4 v0, 0x2
invoke-virtual {p0, v0}, Landroid/support/v4/widget/ViewDragHelper;->setDragState(I)V
return-void
.end method
.method public getActivePointerId()I
.registers 2
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
return v0
.end method
.method public getCapturedView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
return-object v0
.end method
.method public getEdgeSize()I
.registers 2
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mEdgeSize:I
return v0
.end method
.method public getMinVelocity()F
.registers 2
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F
return v0
.end method
.method public getTouchSlop()I
.registers 2
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mTouchSlop:I
return v0
.end method
.method public getViewDragState()I
.registers 2
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
return v0
.end method
.method public isCapturedViewUnder(II)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
invoke-virtual {p0, v0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z
move-result v0
return v0
.end method
.method public isEdgeTouched(I)Z
.registers 5
iget-object v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
array-length v0, v2
const/4 v1, 0x0
:goto_4
if-ge v1, v0, :cond_11
invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ViewDragHelper;->isEdgeTouched(II)Z
move-result v2
if-eqz v2, :cond_e
const/4 v2, 0x1
:goto_d
return v2
:cond_e
add-int/lit8 v1, v1, 0x1
goto :goto_4
:cond_11
const/4 v2, 0x0
goto :goto_d
.end method
.method public isEdgeTouched(II)Z
.registers 4
invoke-virtual {p0, p2}, Landroid/support/v4/widget/ViewDragHelper;->isPointerDown(I)Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
aget v0, v0, p2
and-int/2addr v0, p1
if-eqz v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public isPointerDown(I)Z
.registers 5
const/4 v0, 0x1
iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mPointersDown:I
shl-int v2, v0, p1
and-int/2addr v1, v2
if-eqz v1, :cond_9
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public isViewUnder(Landroid/view/View;II)Z
.registers 6
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return v0
:cond_4
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v1
if-lt p2, v1, :cond_3
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v1
if-ge p2, v1, :cond_3
invoke-virtual {p1}, Landroid/view/View;->getTop()I
move-result v1
if-lt p3, v1, :cond_3
invoke-virtual {p1}, Landroid/view/View;->getBottom()I
move-result v1
if-ge p3, v1, :cond_3
const/4 v0, 0x1
goto :goto_3
.end method
.method public processTouchEvent(Landroid/view/MotionEvent;)V
.registers 23
invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I
move-result v3
invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I
move-result v4
if-nez v3, :cond_d
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V
:cond_d
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
move-object/from16 v19, v0
if-nez v19, :cond_1f
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v19
move-object/from16 v0, v19
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
:cond_1f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
move-object/from16 v19, v0
move-object/from16 v0, v19
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
packed-switch v3, :pswitch_data_2d6
:goto_2f
:cond_2f
:pswitch_2f
return-void
:pswitch_30
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F
move-result v17
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F
move-result v18
const/16 v19, 0x0
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v15
move/from16 v0, v17
float-to-int v0, v0
move/from16 v19, v0
move/from16 v0, v18
float-to-int v0, v0
move/from16 v20, v0
move-object/from16 v0, p0
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;
move-result-object v16
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, v18
invoke-direct {v0, v1, v2, v15}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
move-object/from16 v19, v0
aget v7, v19, v15
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
move/from16 v19, v0
and-int v19, v19, v7
if-eqz v19, :cond_2f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
move/from16 v20, v0
and-int v20, v20, v7
move-object/from16 v0, v19
move/from16 v1, v20
invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V
goto :goto_2f
:pswitch_8e
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v15
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F
move-result v17
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F
move-result v18
move-object/from16 v0, p0
move/from16 v1, v17
move/from16 v2, v18
invoke-direct {v0, v1, v2, v15}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v19, v0
if-nez v19, :cond_f5
move/from16 v0, v17
float-to-int v0, v0
move/from16 v19, v0
move/from16 v0, v18
float-to-int v0, v0
move/from16 v20, v0
move-object/from16 v0, p0
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;
move-result-object v16
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
move-object/from16 v19, v0
aget v7, v19, v15
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
move/from16 v19, v0
and-int v19, v19, v7
if-eqz v19, :cond_2f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
move/from16 v20, v0
and-int v20, v20, v7
move-object/from16 v0, v19
move/from16 v1, v20
invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V
goto/16 :goto_2f
:cond_f5
move/from16 v0, v17
float-to-int v0, v0
move/from16 v19, v0
move/from16 v0, v18
float-to-int v0, v0
move/from16 v20, v0
move-object/from16 v0, p0
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->isCapturedViewUnder(II)Z
move-result v19
if-eqz v19, :cond_2f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
move-object/from16 v19, v0
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z
goto/16 :goto_2f
:pswitch_11a
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v19, v0
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_19e
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
move/from16 v19, v0
move-object/from16 v0, p0
move/from16 v1, v19
invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z
move-result v19
if-eqz v19, :cond_2f
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
move/from16 v19, v0
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I
move-result v12
move-object/from16 v0, p1
invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F
move-result v17
move-object/from16 v0, p1
invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getY(I)F
move-result v18
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionX:[F
move-object/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
move/from16 v20, v0
aget v19, v19, v20
sub-float v19, v17, v19
move/from16 v0, v19
float-to-int v10, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mLastMotionY:[F
move-object/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
move/from16 v20, v0
aget v19, v19, v20
sub-float v19, v18, v19
move/from16 v0, v19
float-to-int v11, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
move-object/from16 v19, v0
invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLeft()I
move-result v19
add-int v19, v19, v10
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I
move-result v20
add-int v20, v20, v11
move-object/from16 v0, p0
move/from16 v1, v19
move/from16 v2, v20
invoke-direct {v0, v1, v2, v10, v11}, Landroid/support/v4/widget/ViewDragHelper;->dragTo(IIII)V
invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V
goto/16 :goto_2f
:cond_19e
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v14
const/4 v8, 0x0
:goto_1a3
if-ge v8, v14, :cond_1e9
move-object/from16 v0, p1
invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v15
move-object/from16 v0, p0
invoke-direct {v0, v15}, Landroid/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z
move-result v19
if-nez v19, :cond_1b6
:cond_1b3
add-int/lit8 v8, v8, 0x1
goto :goto_1a3
:cond_1b6
move-object/from16 v0, p1
invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F
move-result v17
move-object/from16 v0, p1
invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F
move-result v18
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
move-object/from16 v19, v0
aget v19, v19, v15
sub-float v5, v17, v19
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
move-object/from16 v19, v0
aget v19, v19, v15
sub-float v6, v18, v19
move-object/from16 v0, p0
invoke-direct {v0, v5, v6, v15}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v19, v0
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_1ee
:cond_1e9
:goto_1e9
invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V
goto/16 :goto_2f
:cond_1ee
move/from16 v0, v17
float-to-int v0, v0
move/from16 v19, v0
move/from16 v0, v18
float-to-int v0, v0
move/from16 v20, v0
move-object/from16 v0, p0
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;
move-result-object v16
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-direct {v0, v1, v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z
move-result v19
if-eqz v19, :cond_1b3
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-virtual {v0, v1, v15}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z
move-result v19
if-eqz v19, :cond_1b3
goto :goto_1e9
:pswitch_217
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v15
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v19, v0
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_299
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
move/from16 v19, v0
move/from16 v0, v19
if-ne v15, v0, :cond_299
const/4 v13, -0x1
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v14
const/4 v8, 0x0
:goto_23b
if-ge v8, v14, :cond_290
move-object/from16 v0, p1
invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v9
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
move/from16 v19, v0
move/from16 v0, v19
if-ne v9, v0, :cond_250
:cond_24d
add-int/lit8 v8, v8, 0x1
goto :goto_23b
:cond_250
move-object/from16 v0, p1
invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getX(I)F
move-result v17
move-object/from16 v0, p1
invoke-virtual {v0, v8}, Landroid/view/MotionEvent;->getY(I)F
move-result v18
move/from16 v0, v17
float-to-int v0, v0
move/from16 v19, v0
move/from16 v0, v18
float-to-int v0, v0
move/from16 v20, v0
move-object/from16 v0, p0
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;
move-result-object v19
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
move-object/from16 v20, v0
move-object/from16 v0, v19
move-object/from16 v1, v20
if-ne v0, v1, :cond_24d
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
move-object/from16 v19, v0
move-object/from16 v0, p0
move-object/from16 v1, v19
invoke-virtual {v0, v1, v9}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z
move-result v19
if-eqz v19, :cond_24d
move-object/from16 v0, p0
iget v13, v0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
:cond_290
const/16 v19, -0x1
move/from16 v0, v19
if-ne v13, v0, :cond_299
invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V
:cond_299
move-object/from16 v0, p0
invoke-direct {v0, v15}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V
goto/16 :goto_2f
:pswitch_2a0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v19, v0
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_2b1
invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->releaseViewForPointerUp()V
:cond_2b1
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V
goto/16 :goto_2f
:pswitch_2b6
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v19, v0
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_2d1
const/16 v19, 0x0
const/16 v20, 0x0
move-object/from16 v0, p0
move/from16 v1, v19
move/from16 v2, v20
invoke-direct {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->dispatchViewReleased(FF)V
:cond_2d1
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V
goto/16 :goto_2f
:pswitch_data_2d6
.packed-switch 0x0
:pswitch_30
:pswitch_2a0
:pswitch_11a
:pswitch_2b6
:pswitch_2f
:pswitch_8e
:pswitch_217
.end packed-switch
.end method
.method  setDragState(I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mParentView:Landroid/view/ViewGroup;
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mSetIdleRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
if-eq v0, p1, :cond_19
iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V
iget v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
if-nez v0, :cond_19
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
:cond_19
return-void
.end method
.method public setEdgeTrackingEnabled(I)V
.registers 2
iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
return-void
.end method
.method public setMinVelocity(F)V
.registers 2
iput p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mMinVelocity:F
return-void
.end method
.method public settleCapturedViewAt(II)Z
.registers 6
iget-boolean v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mReleaseInProgress:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F
move-result v0
float-to-int v0, v0
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
iget v2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
invoke-static {v1, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F
move-result v1
float-to-int v1, v1
invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z
move-result v0
return v0
.end method
.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 28
invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I
move-result v4
invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I
move-result v5
if-nez v4, :cond_d
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V
:cond_d
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
move-object/from16 v24, v0
if-nez v24, :cond_1f
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v24
move-object/from16 v0, v24
move-object/from16 v1, p0
iput-object v0, v1, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
:cond_1f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mVelocityTracker:Landroid/view/VelocityTracker;
move-object/from16 v24, v0
move-object/from16 v0, v24
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
packed-switch v4, :pswitch_data_25e
:goto_2f
:cond_2f
:pswitch_2f
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v24, v0
const/16 v25, 0x1
move/from16 v0, v24
move/from16 v1, v25
if-ne v0, v1, :cond_25a
const/16 v24, 0x1
:goto_3f
return v24
:pswitch_40
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F
move-result v22
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F
move-result v23
const/16 v24, 0x0
move-object/from16 v0, p1
move/from16 v1, v24
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v17
move-object/from16 v0, p0
move/from16 v1, v22
move/from16 v2, v23
move/from16 v3, v17
invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V
move/from16 v0, v22
float-to-int v0, v0
move/from16 v24, v0
move/from16 v0, v23
float-to-int v0, v0
move/from16 v25, v0
move-object/from16 v0, p0
move/from16 v1, v24
move/from16 v2, v25
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
move-object/from16 v24, v0
move-object/from16 v0, v20
move-object/from16 v1, v24
if-ne v0, v1, :cond_94
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v24, v0
const/16 v25, 0x2
move/from16 v0, v24
move/from16 v1, v25
if-ne v0, v1, :cond_94
move-object/from16 v0, p0
move-object/from16 v1, v20
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z
:cond_94
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
move-object/from16 v24, v0
aget v8, v24, v17
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
move/from16 v24, v0
and-int v24, v24, v8
if-eqz v24, :cond_2f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
move-object/from16 v24, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
move/from16 v25, v0
and-int v25, v25, v8
move-object/from16 v0, v24
move/from16 v1, v25
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V
goto/16 :goto_2f
:pswitch_bf
move-object/from16 v0, p1
invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v17
move-object/from16 v0, p1
invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F
move-result v22
move-object/from16 v0, p1
invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F
move-result v23
move-object/from16 v0, p0
move/from16 v1, v22
move/from16 v2, v23
move/from16 v3, v17
invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->saveInitialMotion(FFI)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v24, v0
if-nez v24, :cond_10f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialEdgesTouched:[I
move-object/from16 v24, v0
aget v8, v24, v17
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
move/from16 v24, v0
and-int v24, v24, v8
if-eqz v24, :cond_2f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
move-object/from16 v24, v0
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mTrackingEdges:I
move/from16 v25, v0
and-int v25, v25, v8
move-object/from16 v0, v24
move/from16 v1, v25
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onEdgeTouched(II)V
goto/16 :goto_2f
:cond_10f
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v24, v0
const/16 v25, 0x2
move/from16 v0, v24
move/from16 v1, v25
if-ne v0, v1, :cond_2f
move/from16 v0, v22
float-to-int v0, v0
move/from16 v24, v0
move/from16 v0, v23
float-to-int v0, v0
move/from16 v25, v0
move-object/from16 v0, p0
move/from16 v1, v24
move/from16 v2, v25
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
move-object/from16 v24, v0
move-object/from16 v0, v20
move-object/from16 v1, v24
if-ne v0, v1, :cond_2f
move-object/from16 v0, p0
move-object/from16 v1, v20
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z
goto/16 :goto_2f
:pswitch_148
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
move-object/from16 v24, v0
if-eqz v24, :cond_2f
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
move-object/from16 v24, v0
if-eqz v24, :cond_2f
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v16
const/4 v10, 0x0
:goto_15d
move/from16 v0, v16
if-ge v10, v0, :cond_21b
move-object/from16 v0, p1
invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v17
move-object/from16 v0, p0
move/from16 v1, v17
invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->isValidPointerForActionMove(I)Z
move-result v24
if-nez v24, :cond_174
:cond_171
add-int/lit8 v10, v10, 0x1
goto :goto_15d
:cond_174
move-object/from16 v0, p1
invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getX(I)F
move-result v22
move-object/from16 v0, p1
invoke-virtual {v0, v10}, Landroid/view/MotionEvent;->getY(I)F
move-result v23
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionX:[F
move-object/from16 v24, v0
aget v24, v24, v17
sub-float v6, v22, v24
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mInitialMotionY:[F
move-object/from16 v24, v0
aget v24, v24, v17
sub-float v7, v23, v24
move/from16 v0, v22
float-to-int v0, v0
move/from16 v24, v0
move/from16 v0, v23
float-to-int v0, v0
move/from16 v25, v0
move-object/from16 v0, p0
move/from16 v1, v24
move/from16 v2, v25
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;
move-result-object v20
if-eqz v20, :cond_220
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-direct {v0, v1, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(Landroid/view/View;FF)Z
move-result v24
if-eqz v24, :cond_220
const/4 v15, 0x1
:goto_1b5
if-eqz v15, :cond_222
invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLeft()I
move-result v13
float-to-int v0, v6
move/from16 v24, v0
add-int v18, v13, v24
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
move-object/from16 v24, v0
float-to-int v0, v6
move/from16 v25, v0
move-object/from16 v0, v24
move-object/from16 v1, v20
move/from16 v2, v18
move/from16 v3, v25
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionHorizontal(Landroid/view/View;II)I
move-result v11
invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I
move-result v14
float-to-int v0, v7
move/from16 v24, v0
add-int v19, v14, v24
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
move-object/from16 v24, v0
float-to-int v0, v7
move/from16 v25, v0
move-object/from16 v0, v24
move-object/from16 v1, v20
move/from16 v2, v19
move/from16 v3, v25
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->clampViewPositionVertical(Landroid/view/View;II)I
move-result v12
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
move-object/from16 v24, v0
move-object/from16 v0, v24
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewHorizontalDragRange(Landroid/view/View;)I
move-result v9
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
move-object/from16 v24, v0
move-object/from16 v0, v24
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper$Callback;->getViewVerticalDragRange(Landroid/view/View;)I
move-result v21
if-eqz v9, :cond_215
if-lez v9, :cond_222
if-ne v11, v13, :cond_222
:cond_215
if-eqz v21, :cond_21b
if-lez v21, :cond_222
if-ne v12, v14, :cond_222
:cond_21b
:goto_21b
invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/ViewDragHelper;->saveLastMotion(Landroid/view/MotionEvent;)V
goto/16 :goto_2f
:cond_220
const/4 v15, 0x0
goto :goto_1b5
:cond_222
move-object/from16 v0, p0
move/from16 v1, v17
invoke-direct {v0, v6, v7, v1}, Landroid/support/v4/widget/ViewDragHelper;->reportNewEdgeDrags(FFI)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
move/from16 v24, v0
const/16 v25, 0x1
move/from16 v0, v24
move/from16 v1, v25
if-eq v0, v1, :cond_21b
if-eqz v15, :cond_171
move-object/from16 v0, p0
move-object/from16 v1, v20
move/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/ViewDragHelper;->tryCaptureViewForDrag(Landroid/view/View;I)Z
move-result v24
if-eqz v24, :cond_171
goto :goto_21b
:pswitch_246
move-object/from16 v0, p1
invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v17
move-object/from16 v0, p0
move/from16 v1, v17
invoke-direct {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->clearMotionHistory(I)V
goto/16 :goto_2f
:pswitch_255
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V
goto/16 :goto_2f
:cond_25a
const/16 v24, 0x0
goto/16 :goto_3f
:pswitch_data_25e
.packed-switch 0x0
:pswitch_40
:pswitch_255
:pswitch_148
:pswitch_255
:pswitch_2f
:pswitch_bf
:pswitch_246
.end packed-switch
.end method
.method public smoothSlideViewTo(Landroid/view/View;II)Z
.registers 7
const/4 v2, 0x0
iput-object p1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
const/4 v1, -0x1
iput v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
invoke-direct {p0, p2, p3, v2, v2}, Landroid/support/v4/widget/ViewDragHelper;->forceSettleCapturedViewAt(IIII)Z
move-result v0
if-nez v0, :cond_17
iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mDragState:I
if-nez v1, :cond_17
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
if-eqz v1, :cond_17
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
:cond_17
return v0
.end method
.method  tryCaptureViewForDrag(Landroid/view/View;I)Z
.registers 5
const/4 v0, 0x1
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCapturedView:Landroid/view/View;
if-ne p1, v1, :cond_a
iget v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
if-ne v1, p2, :cond_a
:goto_9
return v0
:cond_a
if-eqz p1, :cond_1a
iget-object v1, p0, Landroid/support/v4/widget/ViewDragHelper;->mCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;
invoke-virtual {v1, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->tryCaptureView(Landroid/view/View;I)Z
move-result v1
if-eqz v1, :cond_1a
iput p2, p0, Landroid/support/v4/widget/ViewDragHelper;->mActivePointerId:I
invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V
goto :goto_9
:cond_1a
const/4 v0, 0x0
goto :goto_9
.end method