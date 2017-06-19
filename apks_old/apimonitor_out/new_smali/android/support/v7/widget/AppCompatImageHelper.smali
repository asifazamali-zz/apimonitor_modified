.class public Landroid/support/v7/widget/AppCompatImageHelper;
.super Ljava/lang/Object;
.source "AppCompatImageHelper.java"
.field private final mView:Landroid/widget/ImageView;
.method public constructor <init>(Landroid/widget/ImageView;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
return-void
.end method
.method  hasOverlappingRendering()Z
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x15
if-lt v1, v2, :cond_12
instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;
if-eqz v1, :cond_12
const/4 v1, 0x0
:goto_11
return v1
:cond_12
const/4 v1, 0x1
goto :goto_11
.end method
.method public loadFromAttributes(Landroid/util/AttributeSet;I)V
.registers 10
const/4 v6, -0x1
const/4 v0, 0x0
:try_start_2
iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-nez v1, :cond_31
iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
move-result-object v3
sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView:[I
const/4 v5, 0x0
invoke-static {v3, p1, v4, p2, v5}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatImageView_srcCompat:I
const/4 v4, -0x1
invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v2
if-eq v2, v6, :cond_31
iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3, v2}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_31
iget-object v3, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_31
if-eqz v1, :cond_36
invoke-static {v1}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_36
:try_end_36
.catchall {:try_start_2 .. :try_end_36} :catchall_3c
if-eqz v0, :cond_3b
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
:cond_3b
return-void
:catchall_3c
move-exception v3
if-eqz v0, :cond_42
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
:cond_42
throw v3
.end method
.method public setImageResource(I)V
.registers 5
if-eqz p1, :cond_17
iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_11
invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_11
iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_16
return-void
:cond_17
iget-object v1, p0, Landroid/support/v7/widget/AppCompatImageHelper;->mView:Landroid/widget/ImageView;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_16
.end method