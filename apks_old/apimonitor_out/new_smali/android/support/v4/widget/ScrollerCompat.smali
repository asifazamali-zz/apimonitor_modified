.class public final Landroid/support/v4/widget/ScrollerCompat;
.super Ljava/lang/Object;
.source "ScrollerCompat.java"
.field private final mIsIcsOrNewer:Z
.field  mScroller:Landroid/widget/OverScroller;
.method constructor <init>(ZLandroid/content/Context;Landroid/view/animation/Interpolator;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p1, p0, Landroid/support/v4/widget/ScrollerCompat;->mIsIcsOrNewer:Z
if-eqz p3, :cond_f
new-instance v0, Landroid/widget/OverScroller;
invoke-direct {v0, p2, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
:goto_c
iput-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
return-void
:cond_f
new-instance v0, Landroid/widget/OverScroller;
invoke-direct {v0, p2}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V
goto :goto_c
.end method
.method public static create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;
.registers 2
const/4 v0, 0x0
invoke-static {p0, v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;
move-result-object v0
return-object v0
.end method
.method public static create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;
.registers 5
new-instance v1, Landroid/support/v4/widget/ScrollerCompat;
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-lt v0, v2, :cond_d
const/4 v0, 0x1
:goto_9
invoke-direct {v1, v0, p0, p1}, Landroid/support/v4/widget/ScrollerCompat;-><init>(ZLandroid/content/Context;Landroid/view/animation/Interpolator;)V
return-object v1
:cond_d
const/4 v0, 0x0
goto :goto_9
.end method
.method public abortAnimation()V
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V
return-void
.end method
.method public computeScrollOffset()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z
move-result v0
return v0
.end method
.method public fling(IIIIIIII)V
.registers 18
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
move/from16 v7, p7
move/from16 v8, p8
invoke-virtual/range {v0 .. v8}, Landroid/widget/OverScroller;->fling(IIIIIIII)V
return-void
.end method
.method public fling(IIIIIIIIII)V
.registers 22
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move/from16 v5, p5
move/from16 v6, p6
move/from16 v7, p7
move/from16 v8, p8
move/from16 v9, p9
move/from16 v10, p10
invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V
return-void
.end method
.method public getCurrVelocity()F
.registers 2
iget-boolean v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mIsIcsOrNewer:Z
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompatIcs;->getCurrVelocity(Ljava/lang/Object;)F
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getCurrX()I
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I
move-result v0
return v0
.end method
.method public getCurrY()I
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I
move-result v0
return v0
.end method
.method public getFinalX()I
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I
move-result v0
return v0
.end method
.method public getFinalY()I
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I
move-result v0
return v0
.end method
.method public isFinished()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z
move-result v0
return v0
.end method
.method public isOverScrolled()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0}, Landroid/widget/OverScroller;->isOverScrolled()Z
move-result v0
return v0
.end method
.method public notifyHorizontalEdgeReached(III)V
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyHorizontalEdgeReached(III)V
return-void
.end method
.method public notifyVerticalEdgeReached(III)V
.registers 5
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0, p1, p2, p3}, Landroid/widget/OverScroller;->notifyVerticalEdgeReached(III)V
return-void
.end method
.method public springBack(IIIIII)Z
.registers 14
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
move v6, p6
invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z
move-result v0
return v0
.end method
.method public startScroll(IIII)V
.registers 6
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/OverScroller;->startScroll(IIII)V
return-void
.end method
.method public startScroll(IIIII)V
.registers 12
iget-object v0, p0, Landroid/support/v4/widget/ScrollerCompat;->mScroller:Landroid/widget/OverScroller;
move v1, p1
move v2, p2
move v3, p3
move v4, p4
move v5, p5
invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V
return-void
.end method