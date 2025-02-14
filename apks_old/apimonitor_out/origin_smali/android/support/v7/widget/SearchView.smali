.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "SearchView.java"

# interfaces
.implements Landroid/support/v7/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;,
        Landroid/support/v7/widget/SearchView$SavedState;,
        Landroid/support/v7/widget/SearchView$OnSuggestionListener;,
        Landroid/support/v7/widget/SearchView$OnCloseListener;,
        Landroid/support/v7/widget/SearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector; = null

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field static final LOG_TAG:Ljava/lang/String; = "SearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field final mCloseButton:Landroid/widget/ImageView;

.field private final mCollapsedIcon:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private final mDefaultQueryHint:Ljava/lang/CharSequence;

.field private final mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field final mGoButton:Landroid/widget/ImageView;

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

.field mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/graphics/drawable/Drawable;

.field private final mSearchPlate:Landroid/view/View;

.field final mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private mSearchSrcTextViewBounds:Landroid/graphics/Rect;

.field private mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

.field mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private final mSuggestionCommitIconResId:I

.field private final mSuggestionRowLayout:I

.field mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

.field private mTemp:[I

.field private mTemp2:[I

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

.field private final mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field final mVoiceButton:Landroid/widget/ImageView;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    sget v0, Landroid/support/v7/appcompat/R$attr;->searchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 14

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    new-instance v7, Landroid/support/v7/widget/SearchView$1;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$1;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    new-instance v7, Landroid/support/v7/widget/SearchView$2;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$2;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    new-instance v7, Landroid/support/v7/widget/SearchView$3;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$3;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    new-instance v7, Landroid/support/v7/widget/SearchView$7;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$7;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v7, Landroid/support/v7/widget/SearchView$8;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$8;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v7, Landroid/support/v7/widget/SearchView$9;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$9;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v7, Landroid/support/v7/widget/SearchView$10;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$10;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v7, Landroid/support/v7/widget/SearchView$11;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$11;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v7, Landroid/support/v7/widget/SearchView$12;

    invoke-direct {v7, p0}, Landroid/support/v7/widget/SearchView$12;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->SearchView:[I

    const/4 v8, 0x0

    invoke-static {p1, p2, v7, p3, v8}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_layout:I

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_search_view:I

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v5

    const/4 v7, 0x1

    invoke-virtual {v3, v5, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v7, Landroid/support/v7/appcompat/R$id;->search_src_text:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, p0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    sget v7, Landroid/support/v7/appcompat/R$id;->search_edit_frame:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    sget v7, Landroid/support/v7/appcompat/R$id;->search_plate:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    sget v7, Landroid/support/v7/appcompat/R$id;->submit_area:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    sget v7, Landroid/support/v7/appcompat/R$id;->search_button:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    sget v7, Landroid/support/v7/appcompat/R$id;->search_go_btn:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    sget v7, Landroid/support/v7/appcompat/R$id;->search_close_btn:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    sget v7, Landroid/support/v7/appcompat/R$id;->search_voice_btn:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    sget v7, Landroid/support/v7/appcompat/R$id;->search_mag_icon:I

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryBackground:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_submitBackground:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_goIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_closeIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_voiceIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    sget v8, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchIcon:I

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_searchHintIcon:I

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_suggestionRowLayout:I

    sget v8, Landroid/support/v7/appcompat/R$layout;->abc_search_dropdown_item_icons_2line:I

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_commitIcon:I

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I

    move-result v7

    iput v7, p0, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/support/v7/widget/SearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    new-instance v8, Landroid/support/v7/widget/SearchView$4;

    invoke-direct {v8, p0}, Landroid/support/v7/widget/SearchView$4;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v7, v8}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_iconifiedByDefault:I

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_maxWidth:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1a0

    invoke-virtual {p0, v6}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    :cond_1a0
    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_defaultQueryHint:I

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_queryHint:I

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_imeOptions:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_1bd

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    :cond_1bd
    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_inputType:I

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1ca

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    :cond_1ca
    const/4 v1, 0x1

    sget v7, Landroid/support/v7/appcompat/R$styleable;->SearchView_android_focusable:I

    invoke-virtual {v0, v7, v1}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v8, "android.speech.extra.LANGUAGE_MODEL"

    const-string v9, "web_search"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v8, 0x1000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v7, :cond_219

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_222

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorSDK11()V

    :cond_219
    :goto_219
    iget-boolean v7, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v7}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    return-void

    :cond_222
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->addOnLayoutChangeListenerToDropDownAnchorBase()V

    goto :goto_219
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorBase()V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v7/widget/SearchView$6;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$6;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private addOnLayoutChangeListenerToDropDownAnchorSDK11()V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v1, Landroid/support/v7/widget/SearchView$5;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/SearchView$5;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .registers 10

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_f

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_f
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1d

    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    if-eqz p3, :cond_24

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_24
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_2f

    const-string v1, "app_data"

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2f
    if-eqz p5, :cond_3b

    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3b
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .registers 16

    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_e

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_e
    if-nez v1, :cond_12

    const-string v1, "android.intent.action.SEARCH"

    :cond_12
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_20

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    :cond_20
    if-eqz v7, :cond_45

    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_45

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_45
    if-nez v7, :cond_5c

    const/4 v2, 0x0

    :goto_48
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/support/v7/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    :goto_5b
    return-object v0

    :cond_5c
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_5f} :catch_61

    move-result-object v2

    goto :goto_48

    :catch_61
    move-exception v8

    :try_start_62
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_65
    .catch Ljava/lang/RuntimeException; {:try_start_62 .. :try_end_65} :catch_86

    move-result v11

    :goto_66
    const-string v0, "SearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_5b

    :catch_86
    move-exception v9

    const/4 v11, -0x1

    goto :goto_66
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 16

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x4000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v10, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_29

    const-string v10, "app_data"

    iget-object v11, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_29
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "free_form"

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_45

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_45
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_53

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_53
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_61

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_61
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_6b

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    :cond_6b
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v11, "calling_package"

    if-nez v8, :cond_92

    const/4 v10, 0x0

    :goto_84
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v9

    :cond_92
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_84
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .registers 7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    const-string v3, "calling_package"

    if-nez v0, :cond_12

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v1

    :cond_12
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e
.end method

.method private dismissSuggestions()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    return-void
.end method

.method private getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 9

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/SearchView;->getLocationInWindow([I)V

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    aget v2, v2, v5

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    aget v3, v3, v5

    sub-int v1, v2, v3

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mTemp:[I

    aget v2, v2, v4

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mTemp2:[I

    aget v3, v3, v4

    sub-int v0, v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 9

    const/4 v6, 0x0

    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_b

    :cond_9
    move-object v0, p1

    :goto_a
    return-object v0

    :cond_b
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6, v6, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v2, "   "

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Landroid/text/style/ImageSpan;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchHintIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v3}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0x21

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_a
.end method

.method private getPreferredHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .registers 3

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$dimen;->abc_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hasVoiceSearch()Z
    .registers 6

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_2b

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_2b

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    :cond_18
    :goto_18
    if-eqz v1, :cond_2b

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    return v2

    :cond_2c
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_18

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_18
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private isSubmitAreaEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_10

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_b

    goto :goto_2

    :catch_b
    move-exception v0

    const-string v1, "SearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .registers 7

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/SearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->launchIntent(Landroid/content/Intent;)V

    const/4 v2, 0x1

    :goto_16
    return v2

    :cond_17
    const/4 v2, 0x0

    goto :goto_16
.end method

.method private postUpdateFocusedState()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .registers 6

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_f

    :goto_e
    return-void

    :cond_f
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_25

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_21
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_e

    :cond_25
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_e
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void

    :cond_12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_e
.end method

.method private updateCloseButton()V
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_30

    move v1, v2

    :goto_f
    if-nez v1, :cond_19

    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_32

    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-nez v4, :cond_32

    :cond_19
    :goto_19
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_34

    :goto_1d
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2f

    if-eqz v1, :cond_37

    sget-object v3, Landroid/support/v7/widget/SearchView;->ENABLED_STATE_SET:[I

    :goto_2c
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2f
    return-void

    :cond_30
    move v1, v3

    goto :goto_f

    :cond_32
    move v2, v3

    goto :goto_19

    :cond_34
    const/16 v3, 0x8

    goto :goto_1d

    :cond_37
    sget-object v3, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_2c
.end method

.method private updateQueryHint()V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_a

    const-string v0, ""

    :cond_a
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateSearchAutoComplete()V
    .registers 7

    const/4 v2, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_33

    const v1, -0x10001

    and-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_33

    const/high16 v1, 0x1

    or-int/2addr v0, v1

    const/high16 v1, 0x8

    or-int/2addr v0, v1

    :cond_33
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v1, :cond_42

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    :cond_42
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6c

    new-instance v1, Landroid/support/v7/widget/SuggestionsAdapter;

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/support/v7/widget/SearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroid/support/v7/widget/SuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v1, Landroid/support/v7/widget/SuggestionsAdapter;

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_69

    const/4 v2, 0x2

    :cond_69
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_6c
    return-void
.end method

.method private updateSubmitArea()V
    .registers 3

    const/16 v0, 0x8

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateSubmitButton(Z)V
    .registers 4

    const/16 v0, 0x8

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_19

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_19

    if-nez p1, :cond_18

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_19

    :cond_18
    const/4 v0, 0x0

    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private updateViewsVisibility(Z)V
    .registers 9

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v3, 0x0

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    if-eqz p1, :cond_44

    move v2, v3

    :goto_9
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_46

    move v0, v5

    :goto_16
    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    iget-object v6, p0, Landroid/support/v7/widget/SearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_48

    :goto_22
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_31

    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_4a

    :cond_31
    const/16 v1, 0x8

    :goto_33
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mCollapsedIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    if-nez v0, :cond_4c

    :goto_3d
    invoke-direct {p0, v5}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    return-void

    :cond_44
    move v2, v4

    goto :goto_9

    :cond_46
    move v0, v3

    goto :goto_16

    :cond_48
    move v4, v3

    goto :goto_22

    :cond_4a
    const/4 v1, 0x0

    goto :goto_33

    :cond_4c
    move v5, v3

    goto :goto_3d
.end method

.method private updateVoiceButton(Z)V
    .registers 5

    const/16 v0, 0x8

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_16

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_16

    if-eqz p1, :cond_16

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mGoButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method adjustDropDownSizeAndPosition()V
    .registers 10

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_59

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    iget-boolean v7, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v7, :cond_5a

    sget v7, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_icon_width:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Landroid/support/v7/appcompat/R$dimen;->abc_dropdownitem_text_padding_left:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    add-int v2, v7, v8

    :goto_32
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_5c

    iget v7, v1, Landroid/graphics/Rect;->left:I

    neg-int v4, v7

    :goto_40
    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    sub-int v6, v7, v0

    iget-object v7, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    :cond_59
    return-void

    :cond_5a
    const/4 v2, 0x0

    goto :goto_32

    :cond_5c
    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v2

    sub-int v4, v0, v7

    goto :goto_40
.end method

.method public clearFocus()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->clearFocus()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearFocus()V

    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    return-void
.end method

.method forceSuggestionQuery()V
    .registers 3

    sget-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    sget-object v0, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public getImeOptions()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .registers 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v1, :cond_7

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    :goto_6
    return-object v0

    :cond_7
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_22

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_6

    :cond_22
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mDefaultQueryHint:Ljava/lang/CharSequence;

    goto :goto_6
.end method

.method getSuggestionCommitIconResId()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionCommitIconResId:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .registers 2

    iget v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionRowLayout:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v2, 0x0

    const-string v1, "android.intent.action.SEARCH"

    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onActionViewCollapsed()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iput-boolean v2, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    return-void
.end method

.method public onActionViewExpanded()V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mExpandedInActionView:Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v1, p0, Landroid/support/v7/widget/SearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    goto :goto_4
.end method

.method onCloseClicked()V
    .registers 5

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    invoke-interface {v1}, Landroid/support/v7/widget/SearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_23

    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    goto :goto_23
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onDetachedFromWindow()V

    return-void
.end method

.method onItemClicked(IILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v1, :cond_d

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_18

    :cond_d
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/SearchView;->launchSuggestion(IILjava/lang/String;)Z

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    const/4 v0, 0x1

    :cond_18
    return v0
.end method

.method onItemSelected(I)Z
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Landroid/support/v7/widget/SearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_c
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->rewriteQueryFromSuggestion(I)V

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    if-eqz p1, :cond_32

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/SearchView;->getChildBoundsWithinSearchView(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v4, p5, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    if-nez v0, :cond_33

    new-instance v0, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_32
    :goto_32
    return-void

    :cond_33
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mTouchDelegate:Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrtTextViewBoundsExpanded:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/SearchView$UpdatableTouchDelegate;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_32
.end method

.method protected onMeasure(II)V
    .registers 9

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    :goto_9
    return-void

    :cond_a
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sparse-switch v3, :sswitch_data_6a

    :cond_15
    :goto_15
    const/high16 v3, 0x4000

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v1, :sswitch_data_78

    :goto_22
    const/high16 v1, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v4, v5}, Landroid/support/v7/widget/LinearLayoutCompat;->onMeasure(II)V

    goto :goto_9

    :sswitch_30
    iget v4, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v4, :cond_3b

    iget v4, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_15

    :cond_3b
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v4

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_15

    :sswitch_44
    iget v4, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v4, :cond_15

    iget v4, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_15

    :sswitch_4f
    iget v4, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    if-lez v4, :cond_56

    iget v2, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    :goto_55
    goto :goto_15

    :cond_56
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v2

    goto :goto_55

    :sswitch_5b
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v4

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_22

    :sswitch_64
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v0

    goto :goto_22

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x80000000 -> :sswitch_30
        0x0 -> :sswitch_4f
        0x40000000 -> :sswitch_44
    .end sparse-switch

    :sswitch_data_78
    .sparse-switch
        -0x80000000 -> :sswitch_5b
        0x0 -> :sswitch_64
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4

    instance-of v1, p1, Landroid/support/v7/widget/SearchView$SavedState;

    if-nez v1, :cond_8

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_7
    return-void

    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/SearchView$SavedState;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Landroid/support/v7/widget/SearchView$SavedState;->isIconified:Z

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    goto :goto_7
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    new-instance v0, Landroid/support/v7/widget/SearchView$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SearchView$SavedState;-><init>(Landroid/os/Parcelable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v2

    iput-boolean v2, v0, Landroid/support/v7/widget/SearchView$SavedState;->isIconified:Z

    return-object v0
.end method

.method onSearchClicked()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method onSubmitQuery()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_31

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_31

    :cond_1f
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_2b

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v3, v1, v2}, Landroid/support/v7/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SearchView;->setImeVisibility(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->dismissSuggestions()V

    :cond_31
    return-void
.end method

.method onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10

    const/16 v5, 0x15

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_9

    :cond_8
    :goto_8
    return v2

    :cond_9
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v4, :cond_8

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_8

    invoke-static {p3}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/16 v4, 0x42

    if-eq p2, v4, :cond_25

    const/16 v4, 0x54

    if-eq p2, v4, :cond_25

    const/16 v4, 0x3d

    if-ne p2, v4, :cond_31

    :cond_25
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v7/widget/SearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v2

    goto :goto_8

    :cond_31
    if-eq p2, v5, :cond_37

    const/16 v4, 0x16

    if-ne p2, v4, :cond_59

    :cond_37
    if-ne p2, v5, :cond_52

    move v1, v2

    :goto_3a
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    sget-object v2, Landroid/support/v7/widget/SearchView;->HIDDEN_METHOD_INVOKER:Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, v4, v3}, Landroid/support/v7/widget/SearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    move v2, v3

    goto :goto_8

    :cond_52
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    goto :goto_3a

    :cond_59
    const/16 v3, 0x13

    if-ne p2, v3, :cond_8

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    if-nez v3, :cond_8

    goto :goto_8
.end method

.method onTextChanged(Ljava/lang/CharSequence;)V
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3b

    move v0, v2

    :goto_11
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateSubmitButton(Z)V

    if-nez v0, :cond_3d

    :goto_16
    invoke-direct {p0, v2}, Landroid/support/v7/widget/SearchView;->updateVoiceButton(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateCloseButton()V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSubmitArea()V

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    if-eqz v2, :cond_34

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/support/v7/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_34
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v7/widget/SearchView;->mOldQueryText:Ljava/lang/CharSequence;

    return-void

    :cond_3b
    move v0, v3

    goto :goto_11

    :cond_3d
    move v2, v3

    goto :goto_16
.end method

.method onTextFocusChanged()V
    .registers 2

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->forceSuggestionQuery()V

    :cond_15
    return-void
.end method

.method onVoiceClicked()V
    .registers 7

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    :try_start_7
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/support/v7/widget/SearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_1a} :catch_1b

    goto :goto_4

    :catch_1b
    move-exception v1

    const-string v4, "SearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_24
    :try_start_24
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/support/v7/widget/SearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_37
    .catch Landroid/content/ActivityNotFoundException; {:try_start_24 .. :try_end_37} :catch_1b

    goto :goto_4
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->onWindowFocusChanged(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->postUpdateFocusedState()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 6

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/support/v7/widget/SearchView;->mClearingFocus:Z

    if-eqz v2, :cond_7

    move v0, v1

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    goto :goto_6

    :cond_21
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_6
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mAppSearchData:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onCloseClicked()V

    :goto_5
    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onSearchClicked()V

    goto :goto_5
.end method

.method public setIconifiedByDefault(Z)V
    .registers 3

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    goto :goto_4
.end method

.method public setImeOptions(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method setImeVisibility(Z)V
    .registers 5

    if-eqz p1, :cond_8

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_7
.end method

.method public setInputType(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/widget/SearchView;->mMaxWidth:I

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnCloseListener:Landroid/support/v7/widget/SearchView$OnCloseListener;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnQueryChangeListener:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$OnSuggestionListener;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mOnSuggestionListener:Landroid/support/v7/widget/SearchView$OnSuggestionListener;

    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_14

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mUserQuery:Ljava/lang/CharSequence;

    :cond_14
    if-eqz p2, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->onSubmitQuery()V

    :cond_1f
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .registers 2
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .registers 4

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mQueryRefinement:Z

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    instance-of v0, v0, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Landroid/support/v7/widget/SuggestionsAdapter;

    if-eqz p1, :cond_13

    const/4 v1, 0x2

    :goto_f
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    :cond_12
    return-void

    :cond_13
    const/4 v1, 0x1

    goto :goto_f
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateSearchAutoComplete()V

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->updateQueryHint()V

    :cond_c
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .registers 3

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->mSubmitButtonEnabled:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->updateViewsVisibility(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .registers 4

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->mSuggestionsAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method updateFocusedState()V
    .registers 6

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchSrcTextView:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v2, Landroid/support/v7/widget/SearchView;->FOCUSED_STATE_SET:[I

    :goto_a
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_15
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_20
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->invalidate()V

    return-void

    :cond_24
    sget-object v2, Landroid/support/v7/widget/SearchView;->EMPTY_STATE_SET:[I

    goto :goto_a
.end method
