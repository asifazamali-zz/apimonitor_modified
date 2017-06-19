.class public Landroid/support/v7/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field private static final FADE_DURATION:I = 0xc8
.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"
.field private static final sAlphaInterpolator:Landroid/view/animation/Interpolator;
.field private mAllowCollapse:Z
.field private mContentHeight:I
.field  mMaxTabWidth:I
.field private mSelectedTabIndex:I
.field  mStackedTabMaxWidth:I
.field private mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;
.field  mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
.field  mTabSelector:Ljava/lang/Runnable;
.field private mTabSpinner:Landroid/widget/Spinner;
.field protected final mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
.field protected mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
sput-object v0, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 7
invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
const/4 v1, 0x0
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V
invoke-static {p1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V
invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I
move-result v1
iput v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I
invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabLayout()Landroid/support/v7/widget/LinearLayoutCompat;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
const/4 v3, -0x2
const/4 v4, -0x1
invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private createSpinner()Landroid/widget/Spinner;
.registers 5
new-instance v0, Landroid/support/v7/widget/AppCompatSpinner;
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
sget v3, Landroid/support/v7/appcompat/R$attr;->actionDropDownStyle:I
invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
return-object v0
.end method
.method private createTabLayout()Landroid/support/v7/widget/LinearLayoutCompat;
.registers 5
new-instance v0, Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x0
sget v3, Landroid/support/v7/appcompat/R$attr;->actionBarTabBarStyle:I
invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setMeasureWithLargestChildEnabled(Z)V
const/16 v1, 0x11
invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setGravity(I)V
new-instance v1, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-object v0
.end method
.method private isCollapsed()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-ne v0, p0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method private performCollapse()V
.registers 5
invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z
move-result v0
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
if-nez v0, :cond_11
invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
:cond_11
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
if-nez v0, :cond_34
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
:cond_34
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
if-eqz v0, :cond_40
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
:cond_40
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
iget v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
goto :goto_6
.end method
.method private performExpand()Z
.registers 6
const/4 v4, 0x0
invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->isCollapsed()Z
move-result v0
if-nez v0, :cond_8
:goto_7
return v4
:cond_8
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
const/4 v2, -0x2
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V
goto :goto_7
.end method
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
.registers 10
const/4 v5, 0x0
invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
const/4 v3, -0x1
const/high16 v4, 0x3f80
invoke-direct {v2, v5, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V
invoke-virtual {v1, v0, p2, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
if-eqz v1, :cond_21
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v1
check-cast v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_21
if-eqz p3, :cond_27
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V
:cond_27
iget-boolean v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v1, :cond_2e
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V
:cond_2e
return-void
.end method
.method public addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
.registers 9
const/4 v5, 0x0
invoke-virtual {p0, p1, v5}, Landroid/support/v7/widget/ScrollingTabContainerView;->createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
new-instance v2, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;
const/4 v3, -0x1
const/high16 v4, 0x3f80
invoke-direct {v2, v5, v3, v4}, Landroid/support/v7/widget/LinearLayoutCompat$LayoutParams;-><init>(IIF)V
invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/LinearLayoutCompat;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
if-eqz v1, :cond_21
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v1
check-cast v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_21
if-eqz p2, :cond_27
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V
:cond_27
iget-boolean v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v1, :cond_2e
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V
:cond_2e
return-void
.end method
.method public animateToTab(I)V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v1, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
if-eqz v1, :cond_f
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_f
new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$1;
invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView$1;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/view/View;)V
iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public animateToVisibility(I)V
.registers 8
const-wide/16 v4, 0xc8
const/4 v2, 0x0
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
if-eqz v1, :cond_c
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V
:cond_c
if-nez p1, :cond_36
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getVisibility()I
move-result v1
if-eqz v1, :cond_17
invoke-static {p0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V
:cond_17
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
move-result-object v1
const/high16 v2, 0x3f80
invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
sget-object v1, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V
:goto_35
return-void
:cond_36
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
move-result-object v0
invoke-virtual {v0, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
sget-object v1, Landroid/support/v7/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/view/animation/Interpolator;
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mVisAnimListener:Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
invoke-virtual {v1, v0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/ScrollingTabContainerView$VisibilityAnimListener;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V
goto :goto_35
.end method
.method  createTabView(Landroid/support/v7/app/ActionBar$Tab;Z)Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
.registers 7
new-instance v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/support/v7/app/ActionBar$Tab;Z)V
if-eqz p2, :cond_1b
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v1, Landroid/widget/AbsListView$LayoutParams;
const/4 v2, -0x1
iget v3, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I
invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:goto_1a
return-object v0
:cond_1b
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;
if-nez v1, :cond_2a
new-instance v1, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;-><init>(Landroid/support/v7/widget/ScrollingTabContainerView;)V
iput-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;
:cond_2a
iget-object v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabClickListener:Landroid/support/v7/widget/ScrollingTabContainerView$TabClickListener;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_1a
.end method
.method public onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z
:cond_c
return-void
.end method
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 4
invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Landroid/support/v7/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/view/ActionBarPolicy;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getTabContainerHeight()I
move-result v1
invoke-virtual {p0, v1}, Landroid/support/v7/widget/ScrollingTabContainerView;->setContentHeight(I)V
invoke-virtual {v0}, Landroid/support/v7/view/ActionBarPolicy;->getStackedTabMaxWidth()I
move-result v1
iput v1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I
return-void
.end method
.method public onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_c
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object v0, p2
check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/ActionBar$Tab;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v7/app/ActionBar$Tab;->select()V
return-void
.end method
.method public onMeasure(II)V
.registers 14
const/high16 v10, 0x4000
const/4 v6, 0x1
const/4 v7, 0x0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
if-ne v5, v10, :cond_6d
move v2, v6
:goto_b
invoke-virtual {p0, v2}, Landroid/support/v7/widget/ScrollingTabContainerView;->setFillViewport(Z)V
iget-object v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v8}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I
move-result v1
if-le v1, v6, :cond_78
if-eq v5, v10, :cond_1c
const/high16 v8, -0x8000
if-ne v5, v8, :cond_78
:cond_1c
const/4 v8, 0x2
if-le v1, v8, :cond_6f
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v8
int-to-float v8, v8
const v9, 0x3ecccccd
mul-float/2addr v8, v9
float-to-int v8, v8
iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I
:goto_2b
iget v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I
iget v9, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I
invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I
move-result v8
iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I
:goto_35
iget v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I
invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p2
if-nez v2, :cond_7c
iget-boolean v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v8, :cond_7c
move v0, v6
:goto_42
if-eqz v0, :cond_82
iget-object v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v6, v7, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->measure(II)V
iget-object v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v6}, Landroid/support/v7/widget/LinearLayoutCompat;->getMeasuredWidth()I
move-result v6
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v7
if-le v6, v7, :cond_7e
invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->performCollapse()V
:goto_58
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getMeasuredWidth()I
move-result v4
invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->getMeasuredWidth()I
move-result v3
if-eqz v2, :cond_6c
if-eq v4, v3, :cond_6c
iget v6, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
invoke-virtual {p0, v6}, Landroid/support/v7/widget/ScrollingTabContainerView;->setTabSelected(I)V
:cond_6c
return-void
:cond_6d
move v2, v7
goto :goto_b
:cond_6f
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v8
div-int/lit8 v8, v8, 0x2
iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I
goto :goto_2b
:cond_78
const/4 v8, -0x1
iput v8, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mMaxTabWidth:I
goto :goto_35
:cond_7c
move v0, v7
goto :goto_42
:cond_7e
invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->performExpand()Z
goto :goto_58
:cond_82
invoke-direct {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->performExpand()Z
goto :goto_58
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 2
return-void
.end method
.method public removeAllTabs()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutCompat;->removeAllViews()V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_14
iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v0, :cond_1b
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V
:cond_1b
return-void
.end method
.method public removeTabAt(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->removeViewAt(I)V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
if-eqz v0, :cond_14
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_14
iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v0, :cond_1b
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V
:cond_1b
return-void
.end method
.method public setAllowCollapse(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z
return-void
.end method
.method public setContentHeight(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mContentHeight:I
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V
return-void
.end method
.method public setTabSelected(I)V
.registers 7
iput p1, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mSelectedTabIndex:I
iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v4}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildCount()I
move-result v3
const/4 v1, 0x0
:goto_9
if-ge v1, v3, :cond_21
iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v4, v1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-ne v1, p1, :cond_1f
const/4 v2, 0x1
:goto_14
invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V
if-eqz v2, :cond_1c
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ScrollingTabContainerView;->animateToTab(I)V
:cond_1c
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_1f
const/4 v2, 0x0
goto :goto_14
:cond_21
iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
if-eqz v4, :cond_2c
if-ltz p1, :cond_2c
iget-object v4, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V
:cond_2c
return-void
.end method
.method public updateTab(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabLayout:Landroid/support/v7/widget/LinearLayoutCompat;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->getChildAt(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;
invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabView;->update()V
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
if-eqz v0, :cond_1a
iget-object v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;
invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;
invoke-virtual {v0}, Landroid/support/v7/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V
:cond_1a
iget-boolean v0, p0, Landroid/support/v7/widget/ScrollingTabContainerView;->mAllowCollapse:Z
if-eqz v0, :cond_21
invoke-virtual {p0}, Landroid/support/v7/widget/ScrollingTabContainerView;->requestLayout()V
:cond_21
return-void
.end method