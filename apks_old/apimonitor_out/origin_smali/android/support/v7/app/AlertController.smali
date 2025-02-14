.class Landroid/support/v7/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$CheckedItemAdapter;,
        Landroid/support/v7/app/AlertController$AlertParams;,
        Landroid/support/v7/app/AlertController$RecycleListView;,
        Landroid/support/v7/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPanelLayoutHint:I

.field private mButtonPanelSideLayout:I

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field final mDialog:Landroid/support/v7/app/AppCompatDialog;

.field mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field mScrollView:Landroid/support/v4/widget/NestedScrollView;

.field private mShowTitle:Z

.field mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/app/AppCompatDialog;Landroid/view/Window;)V
    .registers 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    iput v4, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    iput v4, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    new-instance v1, Landroid/support/v7/app/AlertController$1;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertController$1;-><init>(Landroid/support/v7/app/AlertController;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    iput-object p3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    new-instance v1, Landroid/support/v7/app/AlertController$ButtonHandler;

    invoke-direct {v1, p2}, Landroid/support/v7/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    sget-object v2, Landroid/support/v7/appcompat/R$styleable;->AlertDialog:[I

    sget v3, Landroid/support/v7/appcompat/R$attr;->alertDialogStyle:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_android_layout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_buttonPanelSideLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mListLayout:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    sget v1, Landroid/support/v7/appcompat/R$styleable;->AlertDialog_showTitle:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p2, v5}, Landroid/support/v7/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_8
    return v2

    :cond_9
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_f

    move v2, v3

    goto :goto_8

    :cond_f
    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_16
    if-lez v0, :cond_25

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_8

    :cond_25
    move v2, v3

    goto :goto_8
.end method

.method private centerButton(Landroid/widget/Button;)V
    .registers 4

    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v1, 0x3f00

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    const/4 v2, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_f

    const/4 v0, -0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    move v0, v1

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    if-eqz p2, :cond_1b

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_18
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1b
    return-void

    :cond_1c
    move v0, v2

    goto :goto_c

    :cond_1e
    move v1, v2

    goto :goto_18
.end method

.method private resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;
    .registers 5
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_10

    instance-of v1, p2, Landroid/view/ViewStub;

    if-eqz v1, :cond_c

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    :cond_c
    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup;

    :goto_f
    return-object v1

    :cond_10
    if-eqz p2, :cond_1f

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1f

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1f
    instance-of v1, p1, Landroid/view/ViewStub;

    if-eqz v1, :cond_29

    check-cast p1, Landroid/view/ViewStub;

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_29
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_f
.end method

.method private selectContentView()I
    .registers 3

    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    if-nez v0, :cond_7

    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/support/v7/app/AlertController;->mButtonPanelSideLayout:I

    goto :goto_6

    :cond_f
    iget v0, p0, Landroid/support/v7/app/AlertController;->mAlertDialogLayout:I

    goto :goto_6
.end method

.method private setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V
    .registers 11

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->scrollIndicatorUp:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->scrollIndicatorDown:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_24

    invoke-static {p2, p3, p4}, Landroid/support/v4/view/ViewCompat;->setScrollIndicators(Landroid/view/View;II)V

    if-eqz v2, :cond_1e

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1e
    if-eqz v1, :cond_23

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    if-eqz v2, :cond_2e

    and-int/lit8 v4, p3, 0x1

    if-nez v4, :cond_2e

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    :cond_2e
    if-eqz v1, :cond_38

    and-int/lit8 v4, p3, 0x2

    if-nez v4, :cond_38

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    :cond_38
    if-nez v2, :cond_3c

    if-eqz v1, :cond_23

    :cond_3c
    move-object v3, v2

    move-object v0, v1

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v4, :cond_57

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v5, Landroid/support/v7/app/AlertController$2;

    invoke-direct {v5, p0, v3, v0}, Landroid/support/v7/app/AlertController$2;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    new-instance v5, Landroid/support/v7/app/AlertController$3;

    invoke-direct {v5, p0, v3, v0}, Landroid/support/v7/app/AlertController$3;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/NestedScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    :cond_57
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_70

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/support/v7/app/AlertController$4;

    invoke-direct {v5, p0, v3, v0}, Landroid/support/v7/app/AlertController$4;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v5, Landroid/support/v7/app/AlertController$5;

    invoke-direct {v5, p0, v3, v0}, Landroid/support/v7/app/AlertController$5;-><init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_23

    :cond_70
    if-eqz v3, :cond_75

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_75
    if-eqz v0, :cond_23

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_23
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .registers 10

    const/16 v7, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    const/4 v1, 0x4

    const/4 v4, 0x0

    const v5, 0x1020019

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7c

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_26
    const v5, 0x102001a

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8a

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_45
    const v5, 0x102001b

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_98

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_64
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/support/v7/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_73

    if-ne v4, v2, :cond_a6

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v5}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    :cond_73
    :goto_73
    if-eqz v4, :cond_76

    const/4 v3, 0x1

    :cond_76
    if-nez v3, :cond_7b

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7b
    return-void

    :cond_7c
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v4, v2

    goto :goto_26

    :cond_8a
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v4, v0

    goto :goto_45

    :cond_98
    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setVisibility(I)V

    or-int/2addr v4, v1

    goto :goto_64

    :cond_a6
    if-ne v4, v0, :cond_ae

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v5}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_73

    :cond_ae
    if-ne v4, v1, :cond_73

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v5}, Landroid/support/v7/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_73
.end method

.method private setupContent(Landroid/view/ViewGroup;)V
    .registers 9

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, -0x1

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Landroid/support/v7/appcompat/R$id;->scrollView:I

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/NestedScrollView;

    iput-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v2, 0x102000b

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v2, :cond_2a

    :goto_29
    return-void

    :cond_2a
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_36

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    :cond_36
    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_62

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v2, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_29

    :cond_62
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_29
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)V
    .registers 10

    const/high16 v5, 0x2

    const/4 v2, 0x0

    const/4 v6, -0x1

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_4b

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    :goto_a
    if-eqz v1, :cond_d

    const/4 v2, 0x1

    :cond_d
    if-eqz v2, :cond_15

    invoke-static {v1}, Landroid/support/v7/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_15
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    :cond_1a
    if-eqz v2, :cond_5e

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v5, Landroid/support/v7/appcompat/R$id;->custom:I

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_3d

    iget v4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    iget v5, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    iget v6, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    iget v7, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_3d
    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_4a

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_4a
    :goto_4a
    return-void

    :cond_4b
    iget v4, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    if-eqz v4, :cond_5c

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v3, v4, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_a

    :cond_5c
    const/4 v1, 0x0

    goto :goto_a

    :cond_5e
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4a
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .registers 11

    const/4 v0, 0x0

    const/16 v8, 0x8

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v3, :cond_1f

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    const/4 v0, 0x1

    :cond_35
    if-eqz v0, :cond_89

    iget-boolean v3, p0, Landroid/support/v7/app/AlertController;->mShowTitle:Z

    if-eqz v3, :cond_89

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Landroid/support/v7/appcompat/R$id;->alertTitle:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    if-eqz v3, :cond_5a

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v4, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1e

    :cond_5a
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_66

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1e

    :cond_66
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e

    :cond_89
    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    sget v4, Landroid/support/v7/appcompat/R$id;->title_template:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1e
.end method

.method private setupView()V
    .registers 26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v23, v0

    sget v24, Landroid/support/v7/appcompat/R$id;->parentPanel:I

    invoke-virtual/range {v23 .. v24}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v20

    sget v23, Landroid/support/v7/appcompat/R$id;->topPanel:I

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    sget v23, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    sget v23, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    sget v23, Landroid/support/v7/appcompat/R$id;->customPanel:I

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/support/v7/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)V

    sget v23, Landroid/support/v7/appcompat/R$id;->topPanel:I

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    sget v23, Landroid/support/v7/appcompat/R$id;->contentPanel:I

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    sget v23, Landroid/support/v7/appcompat/R$id;->buttonPanel:I

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v22

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Landroid/support/v7/app/AlertController;->resolvePanel(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/support/v7/app/AlertController;->setupContent(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/v7/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    if-eqz v9, :cond_16f

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_16f

    const/16 v16, 0x1

    :goto_86
    if-eqz v22, :cond_173

    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_173

    const/16 v17, 0x1

    :goto_96
    if-eqz v3, :cond_177

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_177

    const/4 v15, 0x1

    :goto_a5
    if-nez v15, :cond_bc

    if-eqz v6, :cond_bc

    sget v23, Landroid/support/v7/appcompat/R$id;->textSpacerNoButtons:I

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_bc

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_bc
    if-eqz v17, :cond_17a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/support/v4/widget/NestedScrollView;->setClipToPadding(Z)V

    :cond_d1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    if-nez v23, :cond_e4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    if-nez v23, :cond_e4

    if-eqz v16, :cond_ec

    :cond_e4
    if-nez v16, :cond_ec

    sget v23, Landroid/support/v7/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual/range {v22 .. v23}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    :cond_ec
    if-eqz v14, :cond_f5

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_f5
    :goto_f5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/support/v7/app/AlertController$RecycleListView;

    move/from16 v23, v0

    if-eqz v23, :cond_112

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    check-cast v23, Landroid/support/v7/app/AlertController$RecycleListView;

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/support/v7/app/AlertController$RecycleListView;->setHasDecor(ZZ)V

    :cond_112
    if-nez v16, :cond_139

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_191

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    :goto_120
    if-eqz v5, :cond_139

    if-eqz v17, :cond_196

    const/16 v23, 0x1

    move/from16 v24, v23

    :goto_128
    if-eqz v15, :cond_19b

    const/16 v23, 0x2

    :goto_12c
    or-int v18, v24, v23

    const/16 v23, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v6, v5, v1, v2}, Landroid/support/v7/app/AlertController;->setScrollIndicators(Landroid/view/ViewGroup;Landroid/view/View;II)V

    :cond_139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    if-eqz v23, :cond_16e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    const/16 v23, -0x1

    move/from16 v0, v23

    if-le v4, v0, :cond_16e

    const/16 v23, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    :cond_16e
    return-void

    :cond_16f
    const/16 v16, 0x0

    goto/16 :goto_86

    :cond_173
    const/16 v17, 0x0

    goto/16 :goto_96

    :cond_177
    const/4 v15, 0x0

    goto/16 :goto_a5

    :cond_17a
    if-eqz v6, :cond_f5

    sget v23, Landroid/support/v7/appcompat/R$id;->textSpacerNoTitle:I

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_f5

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f5

    :cond_191
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    goto :goto_120

    :cond_196
    const/16 v23, 0x0

    move/from16 v24, v23

    goto :goto_128

    :cond_19b
    const/16 v23, 0x0

    goto :goto_12c
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .registers 5

    const/4 v1, 0x1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget v3, Landroid/support/v7/appcompat/R$attr;->alertDialogCenterButtons:I

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_14

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .registers 3

    packed-switch p1, :pswitch_data_e

    const/4 v0, 0x0

    :goto_4
    return-object v0

    :pswitch_5
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_4

    :pswitch_8
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_4

    :pswitch_b
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_4

    :pswitch_data_e
    .packed-switch -0x3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .registers 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .registers 3

    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->selectContentView()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/app/AlertController;->mDialog:Landroid/support/v7/app/AppCompatDialog;

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AppCompatDialog;->setContentView(I)V

    invoke-direct {p0}, Landroid/support/v7/app/AlertController;->setupView()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mScrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .registers 7

    if-nez p4, :cond_a

    if-eqz p3, :cond_a

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_a
    packed-switch p1, :pswitch_data_24

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_15
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    :goto_19
    return-void

    :pswitch_1a
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_19

    :pswitch_1f
    iput-object p2, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    iput-object p4, p0, Landroid/support/v7/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    goto :goto_19

    :pswitch_data_24
    .packed-switch -0x3
        :pswitch_1f
        :pswitch_1a
        :pswitch_15
    .end packed-switch
.end method

.method public setButtonPanelLayoutHint(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/app/AlertController;->mButtonPanelLayoutHint:I

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method public setIcon(I)V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_19

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_18
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    iput v1, p0, Landroid/support/v7/app/AlertController;->mIconId:I

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_16

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_15
    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_15
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/support/v7/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public setView(I)V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    iput p1, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    iput v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .registers 7

    iput-object p1, p0, Landroid/support/v7/app/AlertController;->mView:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/app/AlertController;->mViewLayoutResId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController;->mViewSpacingSpecified:Z

    iput p2, p0, Landroid/support/v7/app/AlertController;->mViewSpacingLeft:I

    iput p3, p0, Landroid/support/v7/app/AlertController;->mViewSpacingTop:I

    iput p4, p0, Landroid/support/v7/app/AlertController;->mViewSpacingRight:I

    iput p5, p0, Landroid/support/v7/app/AlertController;->mViewSpacingBottom:I

    return-void
.end method
