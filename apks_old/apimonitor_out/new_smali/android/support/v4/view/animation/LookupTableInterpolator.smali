.class abstract Landroid/support/v4/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "LookupTableInterpolator.java"
.implements Landroid/view/animation/Interpolator;
.field private final mStepSize:F
.field private final mValues:[F
.method public constructor <init>([F)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F
const/high16 v0, 0x3f80
iget-object v1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F
array-length v1, v1
add-int/lit8 v1, v1, -0x1
int-to-float v1, v1
div-float/2addr v0, v1
iput v0, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F
return-void
.end method
.method public getInterpolation(F)F
.registers 9
const/high16 v4, 0x3f80
const/4 v5, 0x0
cmpl-float v6, p1, v4
if-ltz v6, :cond_8
:goto_7
return v4
:cond_8
cmpg-float v4, p1, v5
if-gtz v4, :cond_e
move v4, v5
goto :goto_7
:cond_e
iget-object v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F
array-length v4, v4
add-int/lit8 v4, v4, -0x1
int-to-float v4, v4
mul-float/2addr v4, p1
float-to-int v4, v4
iget-object v5, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F
array-length v5, v5
add-int/lit8 v5, v5, -0x2
invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I
move-result v1
int-to-float v4, v1
iget v5, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F
mul-float v2, v4, v5
sub-float v0, p1, v2
iget v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F
div-float v3, v0, v4
iget-object v4, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F
aget v4, v4, v1
iget-object v5, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F
add-int/lit8 v6, v1, 0x1
aget v5, v5, v6
iget-object v6, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F
aget v6, v6, v1
sub-float/2addr v5, v6
mul-float/2addr v5, v3
add-float/2addr v4, v5
goto :goto_7
.end method