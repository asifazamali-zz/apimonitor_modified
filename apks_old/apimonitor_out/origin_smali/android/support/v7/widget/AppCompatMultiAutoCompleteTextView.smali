.class public Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;
.super Landroid/widget/MultiAutoCompleteTextView;
.source "AppCompatMultiAutoCompleteTextView.java"

# interfaces
.implements Landroid/support/v4/view/TintableBackgroundView;


# static fields
.field private static final TINT_ATTRS:[I


# instance fields
.field private mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

.field private mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010176

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->TINT_ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Landroid/widget/MultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->TINT_ATTRS:[I

    invoke-static {v1, p2, v2, p3, v3}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    new-instance v1, Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v1, p2, p3}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    invoke-static {p0}, Landroid/support/v7/widget/AppCompatTextHelper;->create(Landroid/widget/TextView;)Landroid/support/v7/widget/AppCompatTextHelper;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1, p2, p3}, Landroid/support/v7/widget/AppCompatTextHelper;->loadFromAttributes(Landroid/util/AttributeSet;I)V

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .registers 2

    invoke-super {p0}, Landroid/widget/MultiAutoCompleteTextView;->drawableStateChanged()V

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->applySupportBackgroundTint()V

    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatTextHelper;->applyCompoundDrawablesTints()V

    :cond_15
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    return-void
.end method

.method public setBackgroundResource(I)V
    .registers 3
    .parameter
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter

    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->setBackgroundResource(I)V

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->onSetBackgroundResource(I)V

    :cond_c
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .registers 3
    .parameter
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end parameter

    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .registers 3
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_9
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mBackgroundTintHelper:Landroid/support/v7/widget/AppCompatBackgroundHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/AppCompatBackgroundHelper;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_9
    return-void
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;->mTextHelper:Landroid/support/v7/widget/AppCompatTextHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/AppCompatTextHelper;->onSetTextAppearance(Landroid/content/Context;I)V

    :cond_c
    return-void
.end method
