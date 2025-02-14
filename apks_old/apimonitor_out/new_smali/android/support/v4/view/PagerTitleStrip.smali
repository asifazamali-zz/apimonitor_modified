.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "PagerTitleStrip.java"
.field private static final ATTRS:[I = null
.field private static final IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl; = null
.field private static final SIDE_ALPHA:F = 0.6f
.field private static final TAG:Ljava/lang/String; = "PagerTitleStrip"
.field private static final TEXT_ATTRS:[I = null
.field private static final TEXT_SPACING:I = 0x10
.field  mCurrText:Landroid/widget/TextView;
.field private mGravity:I
.field private mLastKnownCurrentPage:I
.field  mLastKnownPositionOffset:F
.field  mNextText:Landroid/widget/TextView;
.field private mNonPrimaryAlpha:I
.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;
.field  mPager:Landroid/support/v4/view/ViewPager;
.field  mPrevText:Landroid/widget/TextView;
.field private mScaledTextSpacing:I
.field  mTextColor:I
.field private mUpdatingPositions:Z
.field private mUpdatingText:Z
.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x4
new-array v0, v0, [I
fill-array-data v0, :array_2a
sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x101038c
aput v2, v0, v1
sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_21
new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;
invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;-><init>()V
sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;
:goto_20
return-void
:cond_21
new-instance v0, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;
invoke-direct {v0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplBase;-><init>()V
sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;
goto :goto_20
nop
:array_2a
.array-data 0x4
0x34t 0x0t 0x1t 0x1t
0x95t 0x0t 0x1t 0x1t
0x98t 0x0t 0x1t 0x1t
0xaft 0x0t 0x1t 0x1t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 13
const/4 v8, 0x2
const/4 v9, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v7, -0x1
iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I
const/high16 v7, -0x4080
iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F
new-instance v7, Landroid/support/v4/view/PagerTitleStrip$PageListener;
invoke-direct {v7, p0}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V
iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;
new-instance v7, Landroid/widget/TextView;
invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V
new-instance v7, Landroid/widget/TextView;
invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V
new-instance v7, Landroid/widget/TextView;
invoke-direct {v7, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V
sget-object v7, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I
invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
if-eqz v4, :cond_4c
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-static {v7, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-static {v7, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-static {v7, v4}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V
:cond_4c
const/4 v7, 0x1
invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v6
if-eqz v6, :cond_57
int-to-float v7, v6
invoke-virtual {p0, v9, v7}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V
:cond_57
invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v7
if-eqz v7, :cond_70
invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v5
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V
:cond_70
const/4 v7, 0x3
const/16 v8, 0x50
invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInteger(II)I
move-result v7
iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v7}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;
move-result-object v7
invoke-virtual {v7}, Landroid/content/res/ColorStateList;->getDefaultColor()I
move-result v7
iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I
const v7, 0x3f19999a
invoke-virtual {p0, v7}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
sget-object v8, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
const/4 v1, 0x0
if-eqz v4, :cond_b3
sget-object v7, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I
invoke-virtual {p1, v4, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
move-result-object v3
invoke-virtual {v3, v9, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
:cond_b3
if-eqz v1, :cond_d5
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-static {v7}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V
:goto_c4
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v7
invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v7
iget v2, v7, Landroid/util/DisplayMetrics;->density:F
const/high16 v7, 0x4180
mul-float/2addr v7, v2
float-to-int v7, v7
iput v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I
return-void
:cond_d5
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V
iget-object v7, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {v7}, Landroid/widget/TextView;->setSingleLine()V
goto :goto_c4
.end method
.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
.registers 2
sget-object v0, Landroid/support/v4/view/PagerTitleStrip;->IMPL:Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;->setSingleLineAllCaps(Landroid/widget/TextView;)V
return-void
.end method
.method  getMinHeight()I
.registers 3
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
:cond_b
return v1
.end method
.method public getTextSpacing()I
.registers 2
iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I
return v0
.end method
.method protected onAttachedToWindow()V
.registers 6
invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;
move-result-object v2
instance-of v3, v2, Landroid/support/v4/view/ViewPager;
if-nez v3, :cond_13
new-instance v3, Ljava/lang/IllegalStateException;
const-string v4, "PagerTitleStrip must be a direct child of a ViewPager."
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_13
move-object v1, v2
check-cast v1, Landroid/support/v4/view/ViewPager;
invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v0
iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;
invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;
invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;
if-eqz v3, :cond_36
iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;
invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v4/view/PagerAdapter;
:goto_32
invoke-virtual {p0, v3, v0}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
return-void
:cond_36
const/4 v3, 0x0
goto :goto_32
.end method
.method protected onDetachedFromWindow()V
.registers 4
const/4 v2, 0x0
invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
if-eqz v0, :cond_1f
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v0
invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
iput-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
:cond_1f
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 9
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
if-eqz v1, :cond_13
iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F
cmpl-float v1, v1, v0
if-ltz v1, :cond_d
iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F
:cond_d
iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I
const/4 v2, 0x1
invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V
:cond_13
return-void
.end method
.method protected onMeasure(II)V
.registers 18
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v10
const/high16 v13, 0x4000
if-eq v10, v13, :cond_10
new-instance v13, Ljava/lang/IllegalStateException;
const-string v14, "Must measure with an exact width"
invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v13
:cond_10
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I
move-result v13
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I
move-result v14
add-int v6, v13, v14
const/4 v13, -0x2
move/from16 v0, p2
invoke-static {v0, v6, v13}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I
move-result v1
invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v12
int-to-float v13, v12
const v14, 0x3e4ccccd
mul-float/2addr v13, v14
float-to-int v11, v13
const/4 v13, -0x2
move/from16 v0, p1
invoke-static {v0, v11, v13}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I
move-result v3
iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {v13, v3, v1}, Landroid/widget/TextView;->measure(II)V
iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v13, v3, v1}, Landroid/widget/TextView;->measure(II)V
iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {v13, v3, v1}, Landroid/widget/TextView;->measure(II)V
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
const/high16 v13, 0x4000
if-ne v5, v13, :cond_5f
invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v4
:goto_4d
iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-static {v13}, Landroid/support/v4/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I
move-result v2
shl-int/lit8 v13, v2, 0x10
move/from16 v0, p2
invoke-static {v4, v0, v13}, Landroid/support/v4/view/ViewCompat;->resolveSizeAndState(III)I
move-result v7
invoke-virtual {p0, v12, v7}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V
return-void
:cond_5f
iget-object v13, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v9
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I
move-result v8
add-int v13, v9, v6
invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I
move-result v4
goto :goto_4d
.end method
.method public requestLayout()V
.registers 2
iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z
if-nez v0, :cond_7
invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V
:cond_7
return-void
.end method
.method public setGravity(I)V
.registers 2
iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V
return-void
.end method
.method public setNonPrimaryAlpha(F)V
.registers 6
.parameter
.end parameter
const/high16 v1, 0x437f
mul-float/2addr v1, p1
float-to-int v1, v1
and-int/lit16 v1, v1, 0xff
iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I
iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I
shl-int/lit8 v1, v1, 0x18
iget v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I
const v3, 0xffffff
and-int/2addr v2, v3
or-int v0, v1, v2
iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
return-void
.end method
.method public setTextColor(I)V
.registers 6
.parameter
.end parameter
iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I
iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V
iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I
shl-int/lit8 v1, v1, 0x18
iget v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I
const v3, 0xffffff
and-int/2addr v2, v3
or-int v0, v1, v2
iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
return-void
.end method
.method public setTextSize(IF)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V
return-void
.end method
.method public setTextSpacing(I)V
.registers 2
iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V
return-void
.end method
.method  updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
.registers 4
if-eqz p1, :cond_a
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;
invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;
:cond_a
if-eqz p2, :cond_18
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;
invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;
:cond_18
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
if-eqz v0, :cond_2f
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I
const/high16 v0, -0x4080
iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F
iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I
move-result v0
invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V
:cond_2f
return-void
.end method
.method  updateText(ILandroid/support/v4/view/PagerAdapter;)V
.registers 15
const/4 v9, 0x1
const/high16 v11, -0x8000
const/4 v8, 0x0
if-eqz p2, :cond_8c
invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I
move-result v3
:goto_a
iput-boolean v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z
const/4 v6, 0x0
if-lt p1, v9, :cond_17
if-eqz p2, :cond_17
add-int/lit8 v9, p1, -0x1
invoke-virtual {p2, v9}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;
move-result-object v6
:cond_17
iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v10, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
if-eqz p2, :cond_8f
if-ge p1, v3, :cond_8f
invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;
move-result-object v9
:goto_26
invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v6, 0x0
add-int/lit8 v9, p1, 0x1
if-ge v9, v3, :cond_36
if-eqz p2, :cond_36
add-int/lit8 v9, p1, 0x1
invoke-virtual {p2, v9}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;
move-result-object v6
:cond_36
iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I
move-result v9
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I
move-result v10
sub-int/2addr v9, v10
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I
move-result v10
sub-int v7, v9, v10
int-to-float v9, v7
const v10, 0x3f4ccccd
mul-float/2addr v9, v10
float-to-int v9, v9
invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I
move-result v5
invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I
move-result v9
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I
move-result v10
sub-int/2addr v9, v10
invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I
move-result v10
sub-int v0, v9, v10
invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I
move-result v4
invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->measure(II)V
iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->measure(II)V
iget-object v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
invoke-virtual {v9, v2, v1}, Landroid/widget/TextView;->measure(II)V
iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I
iget-boolean v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z
if-nez v9, :cond_89
iget v9, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F
invoke-virtual {p0, p1, v9, v8}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V
:cond_89
iput-boolean v8, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z
return-void
:cond_8c
move v3, v8
goto/16 :goto_a
:cond_8f
const/4 v9, 0x0
goto :goto_26
.end method
.method  updateTextPositions(IFZ)V
.registers 49
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I
move/from16 v42, v0
move/from16 v0, p1
move/from16 v1, v42
if-eq v0, v1, :cond_188
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;
move-result-object v42
move-object/from16 v0, p0
move/from16 v1, p1
move-object/from16 v2, v42
invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V
:cond_1f
const/16 v42, 0x1
move/from16 v0, v42
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v36
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v18
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v26
div-int/lit8 v19, v18, 0x2
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I
move-result v38
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I
move-result v37
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I
move-result v29
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I
move-result v30
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I
move-result v31
invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I
move-result v28
add-int v39, v29, v19
add-int v40, v30, v19
sub-int v42, v38, v39
sub-int v10, v42, v40
const/high16 v42, 0x3f00
add-float v14, p2, v42
const/high16 v42, 0x3f80
cmpl-float v42, v14, v42
if-lez v42, :cond_75
const/high16 v42, 0x3f80
sub-float v14, v14, v42
:cond_75
sub-int v42, v38, v40
int-to-float v0, v10
move/from16 v43, v0
mul-float v43, v43, v14
move/from16 v0, v43
float-to-int v0, v0
move/from16 v43, v0
sub-int v12, v42, v43
div-int/lit8 v42, v18, 0x2
sub-int v13, v12, v42
add-int v15, v13, v18
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I
move-result v32
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I
move-result v11
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getBaseline()I
move-result v22
move/from16 v0, v32
invoke-static {v0, v11}, Ljava/lang/Math;->max(II)I
move-result v42
move/from16 v0, v42
move/from16 v1, v22
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v20
sub-int v35, v20, v32
sub-int v17, v20, v11
sub-int v25, v20, v22
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v42
add-int v7, v35, v42
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v42
add-int v5, v17, v42
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
move-object/from16 v42, v0
invoke-virtual/range {v42 .. v42}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v42
add-int v6, v25, v42
invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I
move-result v42
move/from16 v0, v42
invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I
move-result v21
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I
move/from16 v42, v0
and-int/lit8 v41, v42, 0x70
sparse-switch v41, :sswitch_data_1b2
add-int v34, v31, v35
add-int v16, v31, v17
add-int v24, v31, v25
:goto_fa
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
move-object/from16 v42, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;
move-object/from16 v43, v0
invoke-virtual/range {v43 .. v43}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v43
add-int v43, v43, v16
move-object/from16 v0, v42
move/from16 v1, v16
move/from16 v2, v43
invoke-virtual {v0, v13, v1, v15, v2}, Landroid/widget/TextView;->layout(IIII)V
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I
move/from16 v42, v0
sub-int v42, v13, v42
sub-int v42, v42, v36
move/from16 v0, v29
move/from16 v1, v42
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v33
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
move-object/from16 v42, v0
add-int v43, v33, v36
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;
move-object/from16 v44, v0
invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v44
add-int v44, v44, v34
move-object/from16 v0, v42
move/from16 v1, v33
move/from16 v2, v34
move/from16 v3, v43
move/from16 v4, v44
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
sub-int v42, v38, v30
sub-int v42, v42, v26
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I
move/from16 v43, v0
add-int v43, v43, v15
invoke-static/range {v42 .. v43}, Ljava/lang/Math;->max(II)I
move-result v23
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
move-object/from16 v42, v0
add-int v43, v23, v26
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;
move-object/from16 v44, v0
invoke-virtual/range {v44 .. v44}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v44
add-int v44, v44, v24
move-object/from16 v0, v42
move/from16 v1, v23
move/from16 v2, v24
move/from16 v3, v43
move/from16 v4, v44
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V
move/from16 v0, p2
move-object/from16 v1, p0
iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F
const/16 v42, 0x0
move/from16 v0, v42
move-object/from16 v1, p0
iput-boolean v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z
:goto_187
return-void
:cond_188
if-nez p3, :cond_1f
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F
move/from16 v42, v0
cmpl-float v42, p2, v42
if-nez v42, :cond_1f
goto :goto_187
:sswitch_195
sub-int v42, v37, v31
sub-int v27, v42, v28
sub-int v42, v27, v21
div-int/lit8 v9, v42, 0x2
add-int v34, v9, v35
add-int v16, v9, v17
add-int v24, v9, v25
goto/16 :goto_fa
:sswitch_1a5
sub-int v42, v37, v28
sub-int v8, v42, v21
add-int v34, v8, v35
add-int v16, v8, v17
add-int v24, v8, v25
goto/16 :goto_fa
nop
:sswitch_data_1b2
.sparse-switch
0x10 -> :sswitch_195
0x50 -> :sswitch_1a5
.end sparse-switch
.end method