.class public Landroid/support/v7/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    iput-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    iput-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-object p1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iput-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Landroid/support/v7/app/AlertController;)V
    .registers 12

    const v4, 0x1020014

    const/4 v9, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    iget v3, p1, Landroid/support/v7/app/AlertController;->mListLayout:I

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/support/v7/app/AlertController$RecycleListView;

    iget-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_5f

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_52

    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$1;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v3, p1, Landroid/support/v7/app/AlertController;->mMultiChoiceItemLayout:I

    iget-object v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/support/v7/app/AlertController$AlertParams$1;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroid/support/v7/app/AlertController$RecycleListView;)V

    :goto_24
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v1, :cond_2d

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v1, v6}, Landroid/support/v7/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_2d
    iput-object v0, p1, Landroid/support/v7/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    iget v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCheckedItem:I

    iput v1, p1, Landroid/support/v7/app/AlertController;->mCheckedItem:I

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_93

    new-instance v1, Landroid/support/v7/app/AlertController$AlertParams$3;

    invoke-direct {v1, p0, p1}, Landroid/support/v7/app/AlertController$AlertParams$3;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_3f
    :goto_3f
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v1, :cond_48

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_48
    iget-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_a0

    invoke-virtual {v6, v9}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    :cond_4f
    :goto_4f
    iput-object v6, p1, Landroid/support/v7/app/AlertController;->mListView:Landroid/widget/ListView;

    return-void

    :cond_52
    new-instance v0, Landroid/support/v7/app/AlertController$AlertParams$2;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    move-object v1, v0

    move-object v2, p0

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/app/AlertController$AlertParams$2;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    goto :goto_24

    :cond_5f
    iget-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v1, :cond_7f

    iget v2, p1, Landroid/support/v7/app/AlertController;->mSingleChoiceItemLayout:I

    :goto_65
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_82

    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    new-array v7, v9, [Ljava/lang/String;

    iget-object v8, p0, Landroid/support/v7/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v8, v7, v5

    new-array v8, v9, [I

    aput v4, v8, v5

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto :goto_24

    :cond_7f
    iget v2, p1, Landroid/support/v7/app/AlertController;->mListItemLayout:I

    goto :goto_65

    :cond_82
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_89

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_24

    :cond_89
    new-instance v0, Landroid/support/v7/app/AlertController$CheckedItemAdapter;

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/support/v7/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_93
    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v1, :cond_3f

    new-instance v1, Landroid/support/v7/app/AlertController$AlertParams$4;

    invoke-direct {v1, p0, v6, p1}, Landroid/support/v7/app/AlertController$AlertParams$4;-><init>(Landroid/support/v7/app/AlertController$AlertParams;Landroid/support/v7/app/AlertController$RecycleListView;Landroid/support/v7/app/AlertController;)V

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_3f

    :cond_a0
    iget-boolean v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v1, :cond_4f

    const/4 v1, 0x2

    invoke-virtual {v6, v1}, Landroid/support/v7/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto :goto_4f
.end method


# virtual methods
.method public apply(Landroid/support/v7/app/AlertController;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    :cond_a
    :goto_a
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_13
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1f

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_1f
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2b

    const/4 v0, -0x2

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_2b
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_37

    const/4 v0, -0x3

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v7/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_37
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_43

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_46

    :cond_43
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertController$AlertParams;->createListView(Landroid/support/v7/app/AlertController;)V

    :cond_46
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8c

    iget-boolean v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_86

    iget-object v1, p0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;IIII)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_66

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_66
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6f

    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_6f
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    if-eqz v0, :cond_78

    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    :cond_78
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mIconAttrId:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->getIconAttributeResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setIcon(I)V

    goto :goto_a

    :cond_86
    iget-object v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_5c

    :cond_8c
    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v0, :cond_5c

    iget v0, p0, Landroid/support/v7/app/AlertController$AlertParams;->mViewLayoutResId:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertController;->setView(I)V

    goto :goto_5c
.end method
