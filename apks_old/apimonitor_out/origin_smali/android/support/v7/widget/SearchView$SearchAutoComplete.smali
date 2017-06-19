.class public Landroid/support/v7/widget/SearchView$SearchAutoComplete;
.super Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
.source "SearchView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchAutoComplete"
.end annotation


# instance fields
.field private mSearchView:Landroid/support/v7/widget/SearchView;

.field private mThreshold:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroid/support/v7/appcompat/R$attr;->autoCompleteTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getThreshold()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/SearchView$SearchAutoComplete;)Z
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private getSearchViewTextMinWidthDp()I
    .registers 6

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenWidthDp(Landroid/content/res/Resources;)I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/content/res/ConfigurationHelper;->getScreenHeightDp(Landroid/content/res/Resources;)I

    move-result v1

    const/16 v3, 0x3c0

    if-lt v2, v3, :cond_28

    const/16 v3, 0x2d0

    if-lt v1, v3, :cond_28

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    const/16 v3, 0x100

    :goto_27
    return v3

    :cond_28
    const/16 v3, 0x258

    if-ge v2, v3, :cond_34

    const/16 v3, 0x280

    if-lt v2, v3, :cond_37

    const/16 v3, 0x1e0

    if-lt v1, v3, :cond_37

    :cond_34
    const/16 v3, 0xc0

    goto :goto_27

    :cond_37
    const/16 v3, 0xa0

    goto :goto_27
.end method

.method private isEmpty()Z
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public enoughToFilter()Z
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    if-lez v0, :cond_a

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected onFinishInflate()V
    .registers 4

    invoke-super {p0}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getSearchViewTextMinWidthDp()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setMinWidth(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->onTextFocusChanged()V

    return-void
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_41

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1a

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_19
    :goto_19
    return v1

    :cond_1a
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_41

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_29

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_29
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_41

    iget-object v2, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    iget-object v2, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_19

    :cond_41
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_19
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_33

    iget-object v1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getVisibility()I

    move-result v1

    if-nez v1, :cond_33

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v7/widget/SearchView;->isLandscapeMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-object v1, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    :cond_33
    return-void
.end method

.method public performCompletion()V
    .registers 1

    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .registers 2

    return-void
.end method

.method setSearchView(Landroid/support/v7/widget/SearchView;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mSearchView:Landroid/support/v7/widget/SearchView;

    return-void
.end method

.method public setThreshold(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;->setThreshold(I)V

    iput p1, p0, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->mThreshold:I

    return-void
.end method
