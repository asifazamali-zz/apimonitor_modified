.class  Landroid/support/v4/widget/MaterialProgressDrawable$1;
.super Landroid/view/animation/Animation;
.source "MaterialProgressDrawable.java"
.field final synthetic this$0:Landroid/support/v4/widget/MaterialProgressDrawable;
.field final synthetic val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
.method constructor <init>(Landroid/support/v4/widget/MaterialProgressDrawable;Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;
iput-object p2, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
return-void
.end method
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 17
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;
iget-boolean v10, v10, Landroid/support/v4/widget/MaterialProgressDrawable;->mFinishing:Z
if-eqz v10, :cond_e
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;
iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v10, p1, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->applyFinishTranslation(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
:goto_d
return-void
:cond_e
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;
iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v10, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->getMinProgressArc(Landroid/support/v4/widget/MaterialProgressDrawable$Ring;)F
move-result v3
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingEndTrim()F
move-result v7
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingStartTrim()F
move-result v9
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v10}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->getStartingRotation()F
move-result v8
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;
iget-object v11, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v10, p1, v11}, Landroid/support/v4/widget/MaterialProgressDrawable;->updateRingColor(FLandroid/support/v4/widget/MaterialProgressDrawable$Ring;)V
const/high16 v10, 0x3f00
cmpg-float v10, p1, v10
if-gtz v10, :cond_4b
const/high16 v10, 0x3f00
div-float v5, p1, v10
const v10, 0x3f4ccccd
sub-float/2addr v10, v3
sget-object v11, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;
invoke-interface {v11, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v11
mul-float/2addr v10, v11
add-float v6, v9, v10
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v10, v6}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setStartTrim(F)V
:cond_4b
const/high16 v10, 0x3f00
cmpl-float v10, p1, v10
if-lez v10, :cond_6c
const v10, 0x3f4ccccd
sub-float v2, v10, v3
const/high16 v10, 0x3f00
sub-float v10, p1, v10
const/high16 v11, 0x3f00
div-float v5, v10, v11
sget-object v10, Landroid/support/v4/widget/MaterialProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;
invoke-interface {v10, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v10
mul-float/2addr v10, v2
add-float v0, v7, v10
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v10, v0}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setEndTrim(F)V
:cond_6c
const/high16 v10, 0x3e80
mul-float/2addr v10, p1
add-float v4, v8, v10
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->val$ring:Landroid/support/v4/widget/MaterialProgressDrawable$Ring;
invoke-virtual {v10, v4}, Landroid/support/v4/widget/MaterialProgressDrawable$Ring;->setRotation(F)V
const/high16 v10, 0x4358
mul-float/2addr v10, p1
const/high16 v11, 0x4487
iget-object v12, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;
iget v12, v12, Landroid/support/v4/widget/MaterialProgressDrawable;->mRotationCount:F
const/high16 v13, 0x40a0
div-float/2addr v12, v13
mul-float/2addr v11, v12
add-float v1, v10, v11
iget-object v10, p0, Landroid/support/v4/widget/MaterialProgressDrawable$1;->this$0:Landroid/support/v4/widget/MaterialProgressDrawable;
invoke-virtual {v10, v1}, Landroid/support/v4/widget/MaterialProgressDrawable;->setRotation(F)V
goto :goto_d
.end method