.class public Landroid/support/v7/widget/AppCompatRatingBar;
.super Landroid/widget/RatingBar;
.source "AppCompatRatingBar.java"
.field private mAppCompatProgressBarHelper:Landroid/support/v7/widget/AppCompatProgressBarHelper;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/appcompat/R$attr;->ratingBarStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/support/v7/widget/AppCompatProgressBarHelper;
invoke-direct {v0, p0}, Landroid/support/v7/widget/AppCompatProgressBarHelper;-><init>(Landroid/widget/ProgressBar;)V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mAppCompatProgressBarHelper:Landroid/support/v7/widget/AppCompatProgressBarHelper;
iget-object v0, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mAppCompatProgressBarHelper:Landroid/support/v7/widget/AppCompatProgressBarHelper;
invoke-virtual {v0, p2, p3}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V
return-void
.end method
.method protected declared-synchronized onMeasure(II)V
.registers 7
monitor-enter p0
:try_start_1
invoke-super {p0, p1, p2}, Landroid/widget/RatingBar;->onMeasure(II)V
iget-object v2, p0, Landroid/support/v7/widget/AppCompatRatingBar;->mAppCompatProgressBarHelper:Landroid/support/v7/widget/AppCompatProgressBarHelper;
invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatProgressBarHelper;->getSampleTime()Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_22
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getNumStars()I
move-result v3
mul-int v1, v2, v3
const/4 v2, 0x0
invoke-static {v1, p1, v2}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v2
invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatRatingBar;->getMeasuredHeight()I
move-result v3
invoke-virtual {p0, v2, v3}, Landroid/support/v7/widget/AppCompatRatingBar;->setMeasuredDimension(II)V
:cond_22
:try_end_22
.catchall {:try_start_1 .. :try_end_22} :catchall_24
monitor-exit p0
return-void
:catchall_24
move-exception v2
monitor-exit p0
throw v2
.end method