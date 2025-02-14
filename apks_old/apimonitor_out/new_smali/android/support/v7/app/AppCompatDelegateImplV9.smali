.class  Landroid/support/v7/app/AppCompatDelegateImplV9;
.super Landroid/support/v7/app/AppCompatDelegateImplBase;
.source "AppCompatDelegateImplV9.java"
.implements Landroid/support/v7/view/menu/MenuBuilder$Callback;
.implements Landroid/support/v4/view/LayoutInflaterFactory;
.field private static final IS_PRE_LOLLIPOP:Z
.field private mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
.field  mActionMode:Landroid/support/v7/view/ActionMode;
.field  mActionModePopup:Landroid/widget/PopupWindow;
.field  mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
.field private mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;
.field private mClosingActionMenu:Z
.field private mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
.field private mEnableDefaultActionBarUp:Z
.field  mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
.field private mFeatureIndeterminateProgress:Z
.field private mFeatureProgress:Z
.field  mInvalidatePanelMenuFeatures:I
.field  mInvalidatePanelMenuPosted:Z
.field private final mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;
.field private mLongPressBackDown:Z
.field private mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
.field private mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
.field private mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
.field  mShowActionModePopup:Ljava/lang/Runnable;
.field private mStatusGuard:Landroid/view/View;
.field private mSubDecor:Landroid/view/ViewGroup;
.field private mSubDecorInstalled:Z
.field private mTempRect1:Landroid/graphics/Rect;
.field private mTempRect2:Landroid/graphics/Rect;
.field private mTitleView:Landroid/widget/TextView;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-ge v0, v1, :cond_a
const/4 v0, 0x1
:goto_7
sput-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->IS_PRE_LOLLIPOP:Z
return-void
:cond_a
const/4 v0, 0x0
goto :goto_7
.end method
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplBase;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$1;
invoke-direct {v0, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$1;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;
return-void
.end method
.method private applyFixedSizeWindow()V
.registers 8
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
const v4, 0x1020002
invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v7/widget/ContentFrameLayout;
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v2
invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I
move-result v3
invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I
move-result v4
invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I
move-result v5
invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I
move-result v6
invoke-virtual {v1, v3, v4, v5, v6}, Landroid/support/v7/widget/ContentFrameLayout;->setDecorPadding(IIII)V
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
sget-object v4, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I
invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMajor:I
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowMinWidthMinor:I
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_4f
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMajor:I
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:cond_4f
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_60
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedWidthMinor:I
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:cond_60
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_71
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMajor:I
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:cond_71
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v3
if-eqz v3, :cond_82
sget v3, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowFixedHeightMinor:I
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;
move-result-object v4
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z
:cond_82
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {v1}, Landroid/support/v7/widget/ContentFrameLayout;->requestLayout()V
return-void
.end method
.method private createSubDecor()Landroid/view/ViewGroup;
.registers 16
const v14, 0x1020002
const/16 v13, 0x6d
const/4 v12, 0x1
const/4 v11, 0x0
const/4 v10, 0x0
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
sget-object v9, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme:[I
invoke-virtual {v8, v9}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I
invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v8
if-nez v8, :cond_23
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
new-instance v8, Ljava/lang/IllegalStateException;
const-string v9, "You need to use a Theme.AppCompat theme (or descendant) with this activity."
invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v8
:cond_23
sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowNoTitle:I
invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v8
if-eqz v8, :cond_c4
invoke-virtual {p0, v12}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z
:goto_2e
:cond_2e
sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBarOverlay:I
invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v8
if-eqz v8, :cond_39
invoke-virtual {p0, v13}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z
:cond_39
sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionModeOverlay:I
invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v8
if-eqz v8, :cond_46
const/16 v8, 0xa
invoke-virtual {p0, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z
:cond_46
sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_android_windowIsFloating:I
invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v8
iput-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v3
const/4 v5, 0x0
iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z
if-nez v8, :cond_135
iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z
if-eqz v8, :cond_d3
sget v8, Landroid/support/v7/appcompat/R$layout;->abc_dialog_title_material:I
invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
iput-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z
iput-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z
:cond_71
:goto_71
if-nez v5, :cond_167
new-instance v8, Ljava/lang/IllegalArgumentException;
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "AppCompat does not support the current theme features: { windowActionBar: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", windowActionBarOverlay: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", android:windowIsFloating: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", windowActionModeOverlay: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, ", windowNoTitle: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-boolean v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v9
const-string v10, " }"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v8
:cond_c4
sget v8, Landroid/support/v7/appcompat/R$styleable;->AppCompatTheme_windowActionBar:I
invoke-virtual {v0, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v8
if-eqz v8, :cond_2e
const/16 v8, 0x6c
invoke-virtual {p0, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9;->requestWindowFeature(I)Z
goto/16 :goto_2e
:cond_d3
iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z
if-eqz v8, :cond_71
new-instance v4, Landroid/util/TypedValue;
invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v8
sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I
invoke-virtual {v8, v9, v4, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
iget v8, v4, Landroid/util/TypedValue;->resourceId:I
if-eqz v8, :cond_132
new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
iget v9, v4, Landroid/util/TypedValue;->resourceId:I
invoke-direct {v6, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
:goto_f4
invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v8
sget v9, Landroid/support/v7/appcompat/R$layout;->abc_screen_toolbar:I
invoke-virtual {v8, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
sget v8, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I
invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v8
check-cast v8, Landroid/support/v7/widget/DecorContentParent;
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;
move-result-object v9
invoke-interface {v8, v9}, Landroid/support/v7/widget/DecorContentParent;->setWindowCallback(Landroid/view/Window$Callback;)V
iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z
if-eqz v8, :cond_11c
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v8, v13}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V
:cond_11c
iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z
if-eqz v8, :cond_126
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
const/4 v9, 0x2
invoke-interface {v8, v9}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V
:cond_126
iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z
if-eqz v8, :cond_71
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
const/4 v9, 0x5
invoke-interface {v8, v9}, Landroid/support/v7/widget/DecorContentParent;->initFeature(I)V
goto/16 :goto_71
:cond_132
iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
goto :goto_f4
:cond_135
iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z
if-eqz v8, :cond_151
sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple_overlay_action_mode:I
invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
:goto_141
sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v9, 0x15
if-lt v8, v9, :cond_15a
new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$2;
invoke-direct {v8, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$2;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
invoke-static {v5, v8}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V
goto/16 :goto_71
:cond_151
sget v8, Landroid/support/v7/appcompat/R$layout;->abc_screen_simple:I
invoke-virtual {v3, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v5
check-cast v5, Landroid/view/ViewGroup;
goto :goto_141
:cond_15a
move-object v8, v5
check-cast v8, Landroid/support/v7/widget/FitWindowsViewGroup;
new-instance v9, Landroid/support/v7/app/AppCompatDelegateImplV9$3;
invoke-direct {v9, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$3;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
invoke-interface {v8, v9}, Landroid/support/v7/widget/FitWindowsViewGroup;->setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
goto/16 :goto_71
:cond_167
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-nez v8, :cond_175
sget v8, Landroid/support/v7/appcompat/R$id;->title:I
invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v8
check-cast v8, Landroid/widget/TextView;
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;
:cond_175
invoke-static {v5}, Landroid/support/v7/widget/ViewUtils;->makeOptionalFitsSystemWindows(Landroid/view/View;)V
sget v8, Landroid/support/v7/appcompat/R$id;->action_bar_activity_content:I
invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/support/v7/widget/ContentFrameLayout;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v8, v14}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/view/ViewGroup;
if-eqz v7, :cond_1ab
:goto_18a
invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I
move-result v8
if-lez v8, :cond_19b
invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeViewAt(I)V
invoke-virtual {v2, v1}, Landroid/support/v7/widget/ContentFrameLayout;->addView(Landroid/view/View;)V
goto :goto_18a
:cond_19b
const/4 v8, -0x1
invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setId(I)V
invoke-virtual {v2, v14}, Landroid/support/v7/widget/ContentFrameLayout;->setId(I)V
instance-of v8, v7, Landroid/widget/FrameLayout;
if-eqz v8, :cond_1ab
check-cast v7, Landroid/widget/FrameLayout;
invoke-virtual {v7, v11}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V
:cond_1ab
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v8, v5}, Landroid/view/Window;->setContentView(Landroid/view/View;)V
new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$4;
invoke-direct {v8, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$4;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
invoke-virtual {v2, v8}, Landroid/support/v7/widget/ContentFrameLayout;->setAttachListener(Landroid/support/v7/widget/ContentFrameLayout$OnAttachListener;)V
return-object v5
.end method
.method private ensureSubDecor()V
.registers 5
const/4 v3, 0x0
iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z
if-nez v2, :cond_38
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createSubDecor()Landroid/view/ViewGroup;
move-result-object v2
iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getTitle()Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_18
invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onTitleChanged(Ljava/lang/CharSequence;)V
:cond_18
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyFixedSizeWindow()V
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onSubDecorInstalled(Landroid/view/ViewGroup;)V
const/4 v2, 0x1
iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z
invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v2
if-nez v2, :cond_38
if-eqz v0, :cond_33
iget-object v2, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-nez v2, :cond_38
:cond_33
const/16 v2, 0x6c
invoke-direct {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V
:cond_38
return-void
.end method
.method private initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;
if-eqz v3, :cond_b
iget-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;
iput-object v2, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
:cond_a
:goto_a
return v1
:cond_b
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-nez v3, :cond_11
move v1, v2
goto :goto_a
:cond_11
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
if-nez v3, :cond_1c
new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
invoke-direct {v3, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
:cond_1c
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanelMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelMenuPresenterCallback;
invoke-virtual {p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->getListMenuView(Landroid/support/v7/view/menu/MenuPresenter$Callback;)Landroid/support/v7/view/menu/MenuView;
move-result-object v0
check-cast v0, Landroid/view/View;
iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
if-nez v3, :cond_a
move v1, v2
goto :goto_a
.end method
.method private initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
.registers 4
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setStyle(Landroid/content/Context;)V
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;
iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;
invoke-direct {v0, p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ListMenuDecorView;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/content/Context;)V
iput-object v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
const/16 v0, 0x51
iput v0, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I
const/4 v0, 0x1
return v0
.end method
.method private initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
.registers 11
const/4 v8, 0x1
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
iget v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
if-eqz v6, :cond_d
iget v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
const/16 v7, 0x6c
if-ne v6, v7, :cond_5f
:cond_d
iget-object v6, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v6, :cond_5f
new-instance v4, Landroid/util/TypedValue;
invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V
invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v0
sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I
invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
const/4 v5, 0x0
iget v6, v4, Landroid/util/TypedValue;->resourceId:I
if-eqz v6, :cond_6b
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;
move-result-object v5
invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
iget v6, v4, Landroid/util/TypedValue;->resourceId:I
invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I
invoke-virtual {v5, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
:goto_39
iget v6, v4, Landroid/util/TypedValue;->resourceId:I
if-eqz v6, :cond_4f
if-nez v5, :cond_4a
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-virtual {v6}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;
move-result-object v5
invoke-virtual {v5, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
:cond_4a
iget v6, v4, Landroid/util/TypedValue;->resourceId:I
invoke-virtual {v5, v6, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
:cond_4f
if-eqz v5, :cond_5f
new-instance v2, Landroid/support/v7/view/ContextThemeWrapper;
const/4 v6, 0x0
invoke-direct {v2, v1, v6}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v6
invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
move-object v1, v2
:cond_5f
new-instance v3, Landroid/support/v7/view/menu/MenuBuilder;
invoke-direct {v3, v1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V
invoke-virtual {v3, p0}, Landroid/support/v7/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/view/menu/MenuBuilder$Callback;)V
invoke-virtual {p1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
return v8
:cond_6b
sget v6, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I
invoke-virtual {v0, v6, v4, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
goto :goto_39
.end method
.method private invalidatePanelMenu(I)V
.registers 5
const/4 v2, 0x1
iget v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I
shl-int v1, v2, p1
or-int/2addr v0, v1
iput v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z
if-nez v0, :cond_19
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;
invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z
:cond_19
return-void
.end method
.method private onKeyDownPanel(ILandroid/view/KeyEvent;)Z
.registers 5
invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v1
if-nez v1, :cond_14
const/4 v1, 0x1
invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v0
iget-boolean v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
if-nez v1, :cond_14
invoke-direct {p0, v0, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
move-result v1
:goto_13
return v1
:cond_14
const/4 v1, 0x0
goto :goto_13
.end method
.method private onKeyUpPanel(ILandroid/view/KeyEvent;)Z
.registers 10
const/4 v6, 0x1
const/4 v4, 0x0
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
if-eqz v5, :cond_8
move v1, v4
:goto_7
:cond_7
return v1
:cond_8
const/4 v1, 0x0
invoke-virtual {p0, p1, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v3
if-nez p1, :cond_5a
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v5, :cond_5a
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z
move-result v5
if-eqz v5, :cond_5a
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-static {v5}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v5
invoke-static {v5}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
move-result v5
if-nez v5, :cond_5a
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z
move-result v5
if-nez v5, :cond_53
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v5
if-nez v5, :cond_41
invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
move-result v5
if-eqz v5, :cond_41
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z
move-result v1
:goto_41
:cond_41
if-eqz v1, :cond_7
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
const-string v6, "audio"
invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
if-eqz v0, :cond_7e
invoke-virtual {v0, v4}, Landroid/media/AudioManager;->playSoundEffect(I)V
goto :goto_7
:cond_53
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v5}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z
move-result v1
goto :goto_41
:cond_5a
iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
if-nez v5, :cond_62
iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z
if-eqz v5, :cond_68
:cond_62
iget-boolean v1, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
invoke-virtual {p0, v3, v6}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
goto :goto_41
:cond_68
iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z
if-eqz v5, :cond_41
const/4 v2, 0x1
iget-boolean v5, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z
if-eqz v5, :cond_77
iput-boolean v4, v3, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z
invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
move-result v2
:cond_77
if-eqz v2, :cond_41
invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
const/4 v1, 0x1
goto :goto_41
:cond_7e
const-string v4, "AppCompatDelegate"
const-string v5, "Couldn\'t get audio manager"
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_7
.end method
.method private openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
.registers 21
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
if-nez v4, :cond_c
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v4
if-eqz v4, :cond_d
:goto_c
:cond_c
return-void
:cond_d
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
if-nez v4, :cond_36
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v12
iget v4, v12, Landroid/content/res/Configuration;->screenLayout:I
and-int/lit8 v4, v4, 0xf
const/4 v5, 0x4
if-ne v4, v5, :cond_53
const/4 v15, 0x1
:goto_27
invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;
move-result-object v4
iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
const/16 v5, 0xb
if-lt v4, v5, :cond_55
const/4 v14, 0x1
:goto_32
if-eqz v15, :cond_36
if-nez v14, :cond_c
:cond_36
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;
move-result-object v11
if-eqz v11, :cond_57
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-interface {v11, v4, v5}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
move-result v4
if-nez v4, :cond_57
const/4 v4, 0x1
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-virtual {v0, v1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
goto :goto_c
:cond_53
const/4 v15, 0x0
goto :goto_27
:cond_55
const/4 v14, 0x0
goto :goto_32
:cond_57
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
const-string v5, "window"
invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v17
check-cast v17, Landroid/view/WindowManager;
if-eqz v17, :cond_c
invoke-direct/range {p0 .. p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
move-result v4
if-eqz v4, :cond_c
const/4 v3, -0x2
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
if-eqz v4, :cond_78
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z
if-eqz v4, :cond_136
:cond_78
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
if-nez v4, :cond_11d
invoke-direct/range {p0 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelDecor(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
move-result v4
if-eqz v4, :cond_c
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
if-eqz v4, :cond_c
:goto_8a
:cond_8a
invoke-direct/range {p0 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelContent(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
move-result v4
if-eqz v4, :cond_c
invoke-virtual/range {p1 .. p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->hasPanelItems()Z
move-result v4
if-eqz v4, :cond_c
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
if-nez v2, :cond_a7
new-instance v2, Landroid/view/ViewGroup$LayoutParams;
const/4 v4, -0x2
const/4 v5, -0x2
invoke-direct {v2, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
:cond_a7
move-object/from16 v0, p1
iget v10, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->background:I
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->setBackgroundResource(I)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v16
if-eqz v16, :cond_cd
move-object/from16 v0, v16
instance-of v4, v0, Landroid/view/ViewGroup;
if-eqz v4, :cond_cd
check-cast v16, Landroid/view/ViewGroup;
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
move-object/from16 v0, v16
invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_cd
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
move-object/from16 v0, p1
iget-object v5, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
invoke-virtual {v4, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z
move-result v4
if-nez v4, :cond_e9
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z
:cond_e9
:goto_e9
const/4 v4, 0x0
move-object/from16 v0, p1
iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z
new-instance v2, Landroid/view/WindowManager$LayoutParams;
const/4 v4, -0x2
move-object/from16 v0, p1
iget v5, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->x:I
move-object/from16 v0, p1
iget v6, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->y:I
const/16 v7, 0x3ea
const/high16 v8, 0x82
const/4 v9, -0x3
invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->gravity:I
iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I
move-object/from16 v0, p1
iget v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I
iput v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
move-object/from16 v0, v17
invoke-interface {v0, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const/4 v4, 0x1
move-object/from16 v0, p1
iput-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
goto/16 :goto_c
:cond_11d
move-object/from16 v0, p1
iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z
if-eqz v4, :cond_8a
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I
move-result v4
if-lez v4, :cond_8a
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V
goto/16 :goto_8a
:cond_136
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;
if-eqz v4, :cond_e9
move-object/from16 v0, p1
iget-object v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
if-eqz v2, :cond_e9
iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v5, -0x1
if-ne v4, v5, :cond_e9
const/4 v3, -0x1
goto :goto_e9
.end method
.method private performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
.registers 7
invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z
move-result v1
if-eqz v1, :cond_8
const/4 v0, 0x0
:cond_7
:goto_7
return v0
:cond_8
const/4 v0, 0x0
iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z
if-nez v1, :cond_13
invoke-direct {p0, p1, p3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
move-result v1
if-eqz v1, :cond_1d
:cond_13
iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v1, :cond_1d
iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z
move-result v0
:cond_1d
if-eqz v0, :cond_7
and-int/lit8 v1, p4, 0x1
if-nez v1, :cond_7
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-nez v1, :cond_7
const/4 v1, 0x1
invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
goto :goto_7
.end method
.method private preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
.registers 12
const/4 v8, 0x0
const/4 v4, 0x1
const/4 v5, 0x0
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v3
if-eqz v3, :cond_a
:goto_9
:cond_9
return v5
:cond_a
iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z
if-eqz v3, :cond_10
move v5, v4
goto :goto_9
:cond_10
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
if-eqz v3, :cond_1d
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
if-eq v3, p1, :cond_1d
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
invoke-virtual {p0, v3, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
:cond_1d
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;
move-result-object v0
if-eqz v0, :cond_2b
iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;
move-result-object v3
iput-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;
:cond_2b
iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
if-eqz v3, :cond_35
iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
const/16 v6, 0x6c
if-ne v3, v6, :cond_a0
:cond_35
move v1, v4
:goto_36
if-eqz v1, :cond_41
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v3, :cond_41
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v3}, Landroid/support/v7/widget/DecorContentParent;->setMenuPrepared()V
:cond_41
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;
if-nez v3, :cond_f3
if-eqz v1, :cond_4f
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v3
instance-of v3, v3, Landroid/support/v7/app/ToolbarActionBar;
if-nez v3, :cond_f3
:cond_4f
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v3, :cond_57
iget-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z
if-eqz v3, :cond_a4
:cond_57
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-nez v3, :cond_65
invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->initializePanelMenu(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;)Z
move-result v3
if-eqz v3, :cond_9
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v3, :cond_9
:cond_65
if-eqz v1, :cond_7f
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v3, :cond_7f
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
if-nez v3, :cond_76
new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
invoke-direct {v3, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
:cond_76
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
iget-object v7, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
invoke-interface {v3, v6, v7}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
:cond_7f
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
iget v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-interface {v0, v3, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z
move-result v3
if-nez v3, :cond_a2
invoke-virtual {p1, v8}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->setMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
if-eqz v1, :cond_9
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v3, :cond_9
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
invoke-interface {v3, v8, v4}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
goto/16 :goto_9
:cond_a0
move v1, v5
goto :goto_36
:cond_a2
iput-boolean v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z
:cond_a4
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;
if-eqz v3, :cond_b6
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;
invoke-virtual {v3, v6}, Landroid/support/v7/view/menu/MenuBuilder;->restoreActionViewStates(Landroid/os/Bundle;)V
iput-object v8, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;
:cond_b6
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;
iget-object v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-interface {v0, v5, v3, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v3
if-nez v3, :cond_d4
if-eqz v1, :cond_cd
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v3, :cond_cd
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMenuPresenterCallback:Landroid/support/v7/app/AppCompatDelegateImplV9$ActionMenuPresenterCallback;
invoke-interface {v3, v8, v4}, Landroid/support/v7/widget/DecorContentParent;->setMenu(Landroid/view/Menu;Landroid/support/v7/view/menu/MenuPresenter$Callback;)V
:cond_cd
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V
goto/16 :goto_9
:cond_d4
if-eqz p2, :cond_fc
invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I
move-result v3
:goto_da
invoke-static {v3}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;
move-result-object v2
invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I
move-result v3
if-eq v3, v4, :cond_fe
move v3, v4
:goto_e5
iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
iget-boolean v6, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->qwertyMode:Z
invoke-virtual {v3, v6}, Landroid/support/v7/view/menu/MenuBuilder;->setQwertyMode(Z)V
iget-object v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuBuilder;->startDispatchingItemsChanged()V
:cond_f3
iput-boolean v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z
iput-boolean v5, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move v5, v4
goto/16 :goto_9
:cond_fc
const/4 v3, -0x1
goto :goto_da
:cond_fe
move v3, v5
goto :goto_e5
.end method
.method private reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
.registers 10
const/16 v6, 0x6c
const/4 v5, 0x1
const/4 v4, 0x0
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v2, :cond_8a
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->canShowOverflowMenu()Z
move-result v2
if-eqz v2, :cond_8a
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v2
invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
move-result v2
if-eqz v2, :cond_24
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowPending()Z
move-result v2
if-eqz v2, :cond_8a
:cond_24
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;
move-result-object v0
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z
move-result v2
if-eqz v2, :cond_32
if-nez p2, :cond_75
:cond_32
if-eqz v0, :cond_74
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v2
if-nez v2, :cond_74
iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z
if-eqz v2, :cond_54
iget v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I
and-int/lit8 v2, v2, 0x1
if-eqz v2, :cond_54
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v2
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;
invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;
invoke-interface {v2}, Ljava/lang/Runnable;->run()V
:cond_54
invoke-virtual {p0, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v1
iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v2, :cond_74
iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z
if-nez v2, :cond_74
iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;
iget-object v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-interface {v0, v4, v2, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
move-result v2
if-eqz v2, :cond_74
iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->showOverflowMenu()Z
:goto_74
:cond_74
return-void
:cond_75
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v2}, Landroid/support/v7/widget/DecorContentParent;->hideOverflowMenu()Z
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v2
if-nez v2, :cond_74
invoke-virtual {p0, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v1
iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-interface {v0, v6, v2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
goto :goto_74
:cond_8a
invoke-virtual {p0, v4, v5}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v1
iput-boolean v5, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z
invoke-virtual {p0, v1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
const/4 v2, 0x0
invoke-direct {p0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->openPanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)V
goto :goto_74
.end method
.method private sanitizeWindowFeatureId(I)I
.registers 4
const/16 v0, 0x8
if-ne p1, v0, :cond_e
const-string v0, "AppCompatDelegate"
const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/16 p1, 0x6c
:goto_d
:cond_d
return p1
:cond_e
const/16 v0, 0x9
if-ne p1, v0, :cond_d
const-string v0, "AppCompatDelegate"
const-string v1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/16 p1, 0x6d
goto :goto_d
.end method
.method private shouldInheritContext(Landroid/view/ViewParent;)Z
.registers 5
const/4 v2, 0x0
if-nez p1, :cond_5
move v1, v2
:goto_4
return v1
:cond_5
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
:goto_b
if-nez p1, :cond_f
const/4 v1, 0x1
goto :goto_4
:cond_f
if-eq p1, v0, :cond_1e
instance-of v1, p1, Landroid/view/View;
if-eqz v1, :cond_1e
move-object v1, p1
check-cast v1, Landroid/view/View;
invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z
move-result v1
if-eqz v1, :cond_20
:cond_1e
move v1, v2
goto :goto_4
:cond_20
invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
move-result-object p1
goto :goto_b
.end method
.method private throwFeatureRequestIfSubDecorInstalled()V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z
if-eqz v0, :cond_c
new-instance v0, Landroid/util/AndroidRuntimeException;
const-string v1, "Window feature must be requested before adding content"
invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 6
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V
return-void
.end method
.method  callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 7
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
instance-of v1, v1, Landroid/view/LayoutInflater$Factory;
if-eqz v1, :cond_11
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
check-cast v1, Landroid/view/LayoutInflater$Factory;
invoke-interface {v1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_11
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method  callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
.registers 5
if-nez p3, :cond_13
if-nez p2, :cond_f
if-ltz p1, :cond_f
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
array-length v0, v0
if-ge p1, v0, :cond_f
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
aget-object p2, v0, p1
:cond_f
if-eqz p2, :cond_13
iget-object p3, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
:cond_13
if-eqz p2, :cond_1a
iget-boolean v0, p2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
if-nez v0, :cond_1a
:goto_19
:cond_19
return-void
:cond_1a
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
invoke-interface {v0, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
goto :goto_19
.end method
.method  checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 4
iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z
if-eqz v1, :cond_5
:goto_4
return-void
:cond_5
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;
move-result-object v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v1
if-nez v1, :cond_1e
const/16 v1, 0x6c
invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V
:cond_1e
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mClosingActionMenu:Z
goto :goto_4
.end method
.method  closePanel(I)V
.registers 4
const/4 v1, 0x1
invoke-virtual {p0, p1, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v0
invoke-virtual {p0, v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
return-void
.end method
.method  closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
.registers 8
const/4 v4, 0x0
const/4 v3, 0x0
if-eqz p2, :cond_1a
iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
if-nez v1, :cond_1a
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v1, :cond_1a
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->isOverflowMenuShowing()Z
move-result v1
if-eqz v1, :cond_1a
iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->checkCloseActionMenu(Landroid/support/v7/view/menu/MenuBuilder;)V
:goto_19
:cond_19
return-void
:cond_1a
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
const-string v2, "window"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/WindowManager;
if-eqz v0, :cond_3a
iget-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
if-eqz v1, :cond_3a
iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
if-eqz v1, :cond_3a
iget-object v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;
invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
if-eqz p2, :cond_3a
iget v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
invoke-virtual {p0, v1, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callOnPanelClosed(ILandroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/Menu;)V
:cond_3a
iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z
iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z
iput-boolean v3, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
iput-object v4, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;
const/4 v1, 0x1
iput-boolean v1, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
if-ne v1, p1, :cond_19
iput-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
goto :goto_19
.end method
.method public createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 14
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v7, 0x1
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;
if-nez v0, :cond_c
new-instance v0, Landroid/support/v7/app/AppCompatViewInflater;
invoke-direct {v0}, Landroid/support/v7/app/AppCompatViewInflater;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;
:cond_c
const/4 v5, 0x0
sget-boolean v0, Landroid/support/v7/app/AppCompatDelegateImplV9;->IS_PRE_LOLLIPOP:Z
if-eqz v0, :cond_1f
instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;
if-eqz v0, :cond_32
move-object v0, p4
check-cast v0, Lorg/xmlpull/v1/XmlPullParser;
invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
move-result v0
if-le v0, v7, :cond_30
move v5, v7
:cond_1f
:goto_1f
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatViewInflater:Landroid/support/v7/app/AppCompatViewInflater;
sget-boolean v6, Landroid/support/v7/app/AppCompatDelegateImplV9;->IS_PRE_LOLLIPOP:Z
invoke-static {}, Landroid/support/v7/widget/VectorEnabledTintResources;->shouldBeUsed()Z
move-result v8
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-virtual/range {v0 .. v8}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
move-result-object v0
return-object v0
:cond_30
const/4 v5, 0x0
goto :goto_1f
:cond_32
move-object v0, p1
check-cast v0, Landroid/view/ViewParent;
invoke-direct {p0, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldInheritContext(Landroid/view/ViewParent;)Z
move-result v5
goto :goto_1f
.end method
.method  dismissPopups()V
.registers 5
const/4 v3, 0x0
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v1, :cond_a
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v1}, Landroid/support/v7/widget/DecorContentParent;->dismissPopups()V
:cond_a
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
if-eqz v1, :cond_29
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;
invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v1
if-eqz v1, :cond_26
:try_start_21
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V
:goto_26
:cond_26
:try_end_26
.catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_26} :catch_3c
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
:cond_29
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V
invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v0
if-eqz v0, :cond_3b
iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v1, :cond_3b
iget-object v1, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->close()V
:cond_3b
return-void
:catch_3c
move-exception v1
goto :goto_26
.end method
.method  dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 8
const/4 v3, 0x1
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v4
const/16 v5, 0x52
if-ne v4, v5, :cond_12
iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
invoke-interface {v4, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v4
if-eqz v4, :cond_12
:goto_11
return v3
:cond_12
invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v2
invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I
move-result v0
if-nez v0, :cond_24
move v1, v3
:goto_1d
if-eqz v1, :cond_26
invoke-virtual {p0, v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v3
goto :goto_11
:cond_24
const/4 v1, 0x0
goto :goto_1d
:cond_26
invoke-virtual {p0, v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v3
goto :goto_11
.end method
.method  doInvalidatePanelMenu(I)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0, p1, v4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v1
const/4 v0, 0x0
iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-eqz v2, :cond_27
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v2, v0}, Landroid/support/v7/view/menu/MenuBuilder;->saveActionViewStates(Landroid/os/Bundle;)V
invoke-virtual {v0}, Landroid/os/Bundle;->size()I
move-result v2
if-lez v2, :cond_1d
iput-object v0, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->frozenActionViewState:Landroid/os/Bundle;
:cond_1d
iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->stopDispatchingItemsChanged()V
iget-object v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
invoke-virtual {v2}, Landroid/support/v7/view/menu/MenuBuilder;->clear()V
:cond_27
iput-boolean v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshMenuContent:Z
iput-boolean v4, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z
const/16 v2, 0x6c
if-eq p1, v2, :cond_31
if-nez p1, :cond_41
:cond_31
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v2, :cond_41
invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v1
if-eqz v1, :cond_41
iput-boolean v3, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z
const/4 v2, 0x0
invoke-direct {p0, v1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
:cond_41
return-void
.end method
.method  endOnGoingFadeAnimation()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V
:cond_9
return-void
.end method
.method  findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
.registers 7
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
if-eqz v3, :cond_11
array-length v0, v3
:goto_5
const/4 v1, 0x0
:goto_6
if-ge v1, v0, :cond_16
aget-object v2, v3, v1
if-eqz v2, :cond_13
iget-object v4, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->menu:Landroid/support/v7/view/menu/MenuBuilder;
if-ne v4, p1, :cond_13
:goto_10
return-object v2
:cond_11
const/4 v0, 0x0
goto :goto_5
:cond_13
add-int/lit8 v1, v1, 0x1
goto :goto_6
:cond_16
const/4 v2, 0x0
goto :goto_10
.end method
.method public findViewById(I)Landroid/view/View;
.registers 3
.parameter
.end parameter
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method protected getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
.registers 8
const/4 v4, 0x0
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
if-eqz v0, :cond_8
array-length v3, v0
if-gt v3, p1, :cond_15
:cond_8
add-int/lit8 v3, p1, 0x1
new-array v1, v3, [Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
if-eqz v0, :cond_12
array-length v3, v0
invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:cond_12
move-object v0, v1
iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPanels:[Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
:cond_15
aget-object v2, v0, p1
if-nez v2, :cond_20
new-instance v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
invoke-direct {v2, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;-><init>(I)V
aput-object v2, v0, p1
:cond_20
return-object v2
.end method
.method  getSubDecor()Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
return-object v0
.end method
.method public hasWindowFeature(I)Z
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I
move-result p1
sparse-switch p1, :sswitch_data_1c
const/4 v0, 0x0
:goto_8
return v0
:sswitch_9
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z
goto :goto_8
:sswitch_c
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z
goto :goto_8
:sswitch_f
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z
goto :goto_8
:sswitch_12
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z
goto :goto_8
:sswitch_15
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z
goto :goto_8
:sswitch_18
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z
goto :goto_8
nop
:sswitch_data_1c
.sparse-switch
0x1 -> :sswitch_18
0x2 -> :sswitch_12
0x5 -> :sswitch_15
0xa -> :sswitch_f
0x6c -> :sswitch_9
0x6d -> :sswitch_c
.end sparse-switch
.end method
.method public initWindowDecorActionBar()V
.registers 4
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;
if-eqz v0, :cond_c
:cond_b
:goto_b
return-void
:cond_c
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
instance-of v0, v0, Landroid/app/Activity;
if-eqz v0, :cond_2b
new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
check-cast v0, Landroid/app/Activity;
iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z
invoke-direct {v1, v0, v2}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Activity;Z)V
iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;
:goto_1f
:cond_1f
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;
iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V
goto :goto_b
:cond_2b
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
instance-of v0, v0, Landroid/app/Dialog;
if-eqz v0, :cond_1f
new-instance v1, Landroid/support/v7/app/WindowDecorActionBar;
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
check-cast v0, Landroid/app/Dialog;
invoke-direct {v1, v0}, Landroid/support/v7/app/WindowDecorActionBar;-><init>(Landroid/app/Dialog;)V
iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;
goto :goto_1f
.end method
.method public installViewFactory()V
.registers 4
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
move-result-object v1
if-nez v1, :cond_10
invoke-static {v0, p0}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
:goto_f
:cond_f
return-void
:cond_10
invoke-static {v0}, Landroid/support/v4/view/LayoutInflaterCompat;->getFactory(Landroid/view/LayoutInflater;)Landroid/support/v4/view/LayoutInflaterFactory;
move-result-object v1
instance-of v1, v1, Landroid/support/v7/app/AppCompatDelegateImplV9;
if-nez v1, :cond_f
const-string v1, "AppCompatDelegate"
const-string v2, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_f
.end method
.method public invalidateOptionsMenu()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->invalidateOptionsMenu()Z
move-result v1
if-eqz v1, :cond_d
:goto_c
return-void
:cond_d
const/4 v1, 0x0
invoke-direct {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidatePanelMenu(I)V
goto :goto_c
.end method
.method  onBackPressed()Z
.registers 4
const/4 v1, 0x1
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
if-eqz v2, :cond_b
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V
:cond_a
:goto_a
return v1
:cond_b
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->collapseActionView()Z
move-result v2
if-nez v2, :cond_a
:cond_17
const/4 v1, 0x0
goto :goto_a
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 5
iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z
if-eqz v1, :cond_11
iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z
if-eqz v1, :cond_11
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V
:cond_11
invoke-static {}, Landroid/support/v7/widget/AppCompatDrawableManager;->get()Landroid/support/v7/widget/AppCompatDrawableManager;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatDrawableManager;->onConfigurationChanged(Landroid/content/Context;)V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->applyDayNight()Z
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 5
const/4 v2, 0x1
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
instance-of v1, v1, Landroid/app/Activity;
if-eqz v1, :cond_19
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
check-cast v1, Landroid/app/Activity;
invoke-static {v1}, Landroid/support/v4/app/NavUtils;->getParentActivityName(Landroid/app/Activity;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_19
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-nez v0, :cond_1a
iput-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mEnableDefaultActionBarUp:Z
:goto_19
:cond_19
return-void
:cond_1a
invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setDefaultDisplayHomeAsUpEnabled(Z)V
goto :goto_19
.end method
.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 6
invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->callActivityOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_7
:goto_6
return-object v0
:cond_7
invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v7/app/AppCompatDelegateImplV9;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v0
goto :goto_6
.end method
.method public onDestroy()V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mInvalidatePanelMenuRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z
:cond_f
invoke-super {p0}, Landroid/support/v7/app/AppCompatDelegateImplBase;->onDestroy()V
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V
:cond_1b
return-void
.end method
.method  onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
sparse-switch p1, :sswitch_data_22
:goto_5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-ge v0, v2, :cond_e
invoke-virtual {p0, p1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyShortcut(ILandroid/view/KeyEvent;)Z
:cond_e
move v0, v1
:goto_f
return v0
:sswitch_10
invoke-direct {p0, v1, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyDownPanel(ILandroid/view/KeyEvent;)Z
goto :goto_f
:sswitch_14
invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I
move-result v2
and-int/lit16 v2, v2, 0x80
if-eqz v2, :cond_1f
:goto_1c
iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z
goto :goto_5
:cond_1f
move v0, v1
goto :goto_1c
nop
:sswitch_data_22
.sparse-switch
0x4 -> :sswitch_14
0x52 -> :sswitch_10
.end sparse-switch
.end method
.method  onKeyShortcut(ILandroid/view/KeyEvent;)Z
.registers 10
const/4 v4, 0x0
const/4 v3, 0x1
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBar;->onKeyShortcut(ILandroid/view/KeyEvent;)Z
move-result v5
if-eqz v5, :cond_f
:cond_e
:goto_e
return v3
:cond_f
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
if-eqz v5, :cond_28
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v6
invoke-direct {p0, v5, v6, p2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
move-result v1
if-eqz v1, :cond_28
iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
if-eqz v4, :cond_e
iget-object v4, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
iput-boolean v3, v4, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isHandled:Z
goto :goto_e
:cond_28
iget-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mPreparedPanel:Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
if-nez v5, :cond_3f
invoke-virtual {p0, v4, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v2
invoke-direct {p0, v2, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->preparePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Landroid/view/KeyEvent;)Z
invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I
move-result v5
invoke-direct {p0, v2, v5, p2, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->performPanelShortcut(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
move-result v1
iput-boolean v4, v2, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isPrepared:Z
if-nez v1, :cond_e
:cond_3f
move v3, v4
goto :goto_e
.end method
.method  onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 8
const/4 v2, 0x1
const/4 v3, 0x0
sparse-switch p1, :sswitch_data_26
:cond_5
move v2, v3
:goto_6
:cond_6
return v2
:sswitch_7
invoke-direct {p0, v3, p2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onKeyUpPanel(ILandroid/view/KeyEvent;)Z
goto :goto_6
:sswitch_b
iget-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z
iput-boolean v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mLongPressBackDown:Z
invoke-virtual {p0, v3, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v0
if-eqz v0, :cond_1f
iget-boolean v4, v0, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
if-eqz v4, :cond_1f
if-nez v1, :cond_6
invoke-virtual {p0, v0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
goto :goto_6
:cond_1f
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->onBackPressed()Z
move-result v4
if-eqz v4, :cond_5
goto :goto_6
:sswitch_data_26
.sparse-switch
0x4 -> :sswitch_b
0x52 -> :sswitch_7
.end sparse-switch
.end method
.method public onMenuItemSelected(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
.registers 6
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getWindowCallback()Landroid/view/Window$Callback;
move-result-object v0
if-eqz v0, :cond_1d
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v2
if-nez v2, :cond_1d
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
move-result-object v2
invoke-virtual {p0, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->findMenuPanel(Landroid/view/Menu;)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v1
if-eqz v1, :cond_1d
iget v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I
invoke-interface {v0, v2, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z
move-result v2
:goto_1c
return v2
:cond_1d
const/4 v2, 0x0
goto :goto_1c
.end method
.method public onMenuModeChange(Landroid/support/v7/view/menu/MenuBuilder;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->reopenMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
return-void
.end method
.method  onMenuOpened(ILandroid/view/Menu;)Z
.registers 6
const/4 v1, 0x1
const/16 v2, 0x6c
if-ne p1, v2, :cond_f
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V
:cond_e
:goto_e
return v1
:cond_f
const/4 v1, 0x0
goto :goto_e
.end method
.method  onPanelClosed(ILandroid/view/Menu;)V
.registers 7
const/4 v3, 0x0
const/16 v2, 0x6c
if-ne p1, v2, :cond_f
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->dispatchMenuVisibilityChanged(Z)V
:cond_e
:goto_e
return-void
:cond_f
if-nez p1, :cond_e
const/4 v2, 0x1
invoke-virtual {p0, p1, v2}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getPanelState(IZ)Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;
move-result-object v1
iget-boolean v2, v1, Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;->isOpen:Z
if-eqz v2, :cond_e
invoke-virtual {p0, v1, v3}, Landroid/support/v7/app/AppCompatDelegateImplV9;->closePanel(Landroid/support/v7/app/AppCompatDelegateImplV9$PanelFeatureState;Z)V
goto :goto_e
.end method
.method public onPostCreate(Landroid/os/Bundle;)V
.registers 2
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V
return-void
.end method
.method public onPostResume()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_a
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V
:cond_a
return-void
.end method
.method public onStop()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_a
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setShowHideAnimationEnabled(Z)V
:cond_a
return-void
.end method
.method  onSubDecorInstalled(Landroid/view/ViewGroup;)V
.registers 2
return-void
.end method
.method  onTitleChanged(Ljava/lang/CharSequence;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mDecorContentParent:Landroid/support/v7/widget/DecorContentParent;
invoke-interface {v0, p1}, Landroid/support/v7/widget/DecorContentParent;->setWindowTitle(Ljava/lang/CharSequence;)V
:cond_9
:goto_9
return-void
:cond_a
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_18
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->peekSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setWindowTitle(Ljava/lang/CharSequence;)V
goto :goto_9
:cond_18
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTitleView:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_9
.end method
.method public requestWindowFeature(I)Z
.registers 5
const/4 v0, 0x0
const/4 v1, 0x1
invoke-direct {p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->sanitizeWindowFeatureId(I)I
move-result p1
iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z
if-eqz v2, :cond_f
const/16 v2, 0x6c
if-ne p1, v2, :cond_f
:goto_e
return v0
:cond_f
iget-boolean v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z
if-eqz v2, :cond_17
if-ne p1, v1, :cond_17
iput-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z
:cond_17
sparse-switch p1, :sswitch_data_4c
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z
move-result v0
goto :goto_e
:sswitch_21
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V
iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mHasActionBar:Z
move v0, v1
goto :goto_e
:sswitch_28
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V
iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionBar:Z
move v0, v1
goto :goto_e
:sswitch_2f
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V
iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z
move v0, v1
goto :goto_e
:sswitch_36
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V
iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureProgress:Z
move v0, v1
goto :goto_e
:sswitch_3d
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V
iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFeatureIndeterminateProgress:Z
move v0, v1
goto :goto_e
:sswitch_44
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->throwFeatureRequestIfSubDecorInstalled()V
iput-boolean v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindowNoTitle:Z
move v0, v1
goto :goto_e
nop
:sswitch_data_4c
.sparse-switch
0x1 -> :sswitch_44
0x2 -> :sswitch_36
0x5 -> :sswitch_3d
0xa -> :sswitch_2f
0x6c -> :sswitch_21
0x6d -> :sswitch_28
.end sparse-switch
.end method
.method public setContentView(I)V
.registers 5
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V
return-void
.end method
.method public setContentView(Landroid/view/View;)V
.registers 5
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V
return-void
.end method
.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.registers 6
invoke-direct {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->ensureSubDecor()V
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
const v2, 0x1020002
invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
invoke-interface {v1}, Landroid/view/Window$Callback;->onContentChanged()V
return-void
.end method
.method public setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V
.registers 6
const/4 v3, 0x0
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
instance-of v2, v2, Landroid/app/Activity;
if-nez v2, :cond_8
:goto_7
return-void
:cond_8
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
instance-of v2, v0, Landroid/support/v7/app/WindowDecorActionBar;
if-eqz v2, :cond_18
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead."
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
:cond_18
iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mMenuInflater:Landroid/view/MenuInflater;
if-eqz v0, :cond_1f
invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->onDestroy()V
:cond_1f
if-eqz p1, :cond_3f
new-instance v1, Landroid/support/v7/app/ToolbarActionBar;
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOriginalWindowCallback:Landroid/view/Window$Callback;
check-cast v2, Landroid/app/Activity;
invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;
move-result-object v2
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;
invoke-direct {v1, p1, v2, v3}, Landroid/support/v7/app/ToolbarActionBar;-><init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
iput-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v1}, Landroid/support/v7/app/ToolbarActionBar;->getWrappedWindowCallback()Landroid/view/Window$Callback;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V
:goto_3b
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->invalidateOptionsMenu()V
goto :goto_7
:cond_3f
iput-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionBar:Landroid/support/v7/app/ActionBar;
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatWindowCallback:Landroid/view/Window$Callback;
invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V
goto :goto_3b
.end method
.method final shouldAnimateActionModeView()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecorInstalled:Z
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public startSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.registers 6
.parameter
.end parameter
if-nez p1, :cond_a
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "ActionMode callback can not be null."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_a
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
if-eqz v2, :cond_13
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
invoke-virtual {v2}, Landroid/support/v7/view/ActionMode;->finish()V
:cond_13
new-instance v1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;
invoke-direct {v1, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getSupportActionBar()Landroid/support/v7/app/ActionBar;
move-result-object v0
if-eqz v0, :cond_33
invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
move-result-object v2
iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
if-eqz v2, :cond_33
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;
if-eqz v2, :cond_33
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;
iget-object v3, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
invoke-interface {v2, v3}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
:cond_33
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
if-nez v2, :cond_3d
invoke-virtual {p0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
move-result-object v2
iput-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
:cond_3d
iget-object v2, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
return-object v2
.end method
.method  startSupportActionModeFromWindow(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.registers 13
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
if-eqz v8, :cond_c
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
invoke-virtual {v8}, Landroid/support/v7/view/ActionMode;->finish()V
:cond_c
instance-of v8, p1, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;
if-nez v8, :cond_16
new-instance v3, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;
invoke-direct {v3, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplV9$ActionModeCallbackWrapperV9;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;Landroid/support/v7/view/ActionMode$Callback;)V
move-object p1, v3
:cond_16
const/4 v5, 0x0
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;
if-eqz v8, :cond_27
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->isDestroyed()Z
move-result v8
if-nez v8, :cond_27
:try_start_21
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;
invoke-interface {v8, p1}, Landroid/support/v7/app/AppCompatCallback;->onWindowStartingSupportActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
:try_end_26
.catch Ljava/lang/AbstractMethodError; {:try_start_21 .. :try_end_26} :catch_187
move-result-object v5
:goto_27
:cond_27
if-eqz v5, :cond_3d
iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
:goto_2b
:cond_2b
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
if-eqz v8, :cond_3a
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;
if-eqz v8, :cond_3a
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mAppCompatCallback:Landroid/support/v7/app/AppCompatCallback;
iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
invoke-interface {v8, v9}, Landroid/support/v7/app/AppCompatCallback;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
:cond_3a
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
return-object v8
:cond_3d
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
if-nez v8, :cond_ca
iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mIsFloating:Z
if-eqz v8, :cond_135
new-instance v6, Landroid/util/TypedValue;
invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v2
sget v8, Landroid/support/v7/appcompat/R$attr;->actionBarTheme:I
const/4 v9, 0x1
invoke-virtual {v2, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
iget v8, v6, Landroid/util/TypedValue;->resourceId:I
if-eqz v8, :cond_131
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v8
invoke-virtual {v8}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
iget v8, v6, Landroid/util/TypedValue;->resourceId:I
const/4 v9, 0x1
invoke-virtual {v1, v8, v9}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
new-instance v0, Landroid/support/v7/view/ContextThemeWrapper;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
const/4 v9, 0x0
invoke-direct {v0, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v8
invoke-virtual {v8, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V
:goto_7c
new-instance v8, Landroid/support/v7/widget/ActionBarContextView;
invoke-direct {v8, v0}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
new-instance v8, Landroid/widget/PopupWindow;
const/4 v9, 0x0
sget v10, Landroid/support/v7/appcompat/R$attr;->actionModePopupWindowStyle:I
invoke-direct {v8, v0, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
const/4 v9, 0x2
invoke-static {v8, v9}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
const/4 v9, -0x1
invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setWidth(I)V
invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v8
sget v9, Landroid/support/v7/appcompat/R$attr;->actionBarSize:I
const/4 v10, 0x1
invoke-virtual {v8, v9, v6, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
iget v8, v6, Landroid/util/TypedValue;->data:I
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v9
invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v9
invoke-static {v8, v9}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
move-result v4
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8, v4}, Landroid/support/v7/widget/ActionBarContextView;->setContentHeight(I)V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
const/4 v9, -0x2
invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setHeight(I)V
new-instance v8, Landroid/support/v7/app/AppCompatDelegateImplV9$5;
invoke-direct {v8, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$5;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;
:cond_ca
:goto_ca
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
if-eqz v8, :cond_2b
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->endOnGoingFadeAnimation()V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->killMode()V
new-instance v5, Landroid/support/v7/view/StandaloneActionMode;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;
move-result-object v9
iget-object v10, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
if-nez v8, :cond_156
const/4 v8, 0x1
:goto_e5
invoke-direct {v5, v9, v10, p1, v8}, Landroid/support/v7/view/StandaloneActionMode;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Landroid/support/v7/view/ActionMode$Callback;Z)V
invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->getMenu()Landroid/view/Menu;
move-result-object v8
invoke-interface {p1, v5, v8}, Landroid/support/v7/view/ActionMode$Callback;->onCreateActionMode(Landroid/support/v7/view/ActionMode;Landroid/view/Menu;)Z
move-result v8
if-eqz v8, :cond_182
invoke-virtual {v5}, Landroid/support/v7/view/ActionMode;->invalidate()V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8, v5}, Landroid/support/v7/widget/ActionBarContextView;->initForMode(Landroid/support/v7/view/ActionMode;)V
iput-object v5, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->shouldAnimateActionModeView()Z
move-result v8
if-eqz v8, :cond_158
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
const/4 v9, 0x0
invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
move-result-object v8
const/high16 v9, 0x3f80
invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
move-result-object v8
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mFadeAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;
new-instance v9, Landroid/support/v7/app/AppCompatDelegateImplV9$6;
invoke-direct {v9, p0}, Landroid/support/v7/app/AppCompatDelegateImplV9$6;-><init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
invoke-virtual {v8, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;
:cond_120
:goto_120
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModePopup:Landroid/widget/PopupWindow;
if-eqz v8, :cond_2b
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mWindow:Landroid/view/Window;
invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v8
iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mShowActionModePopup:Ljava/lang/Runnable;
invoke-virtual {v8, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_2b
:cond_131
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
goto/16 :goto_7c
:cond_135
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
sget v9, Landroid/support/v7/appcompat/R$id;->action_mode_bar_stub:I
invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/support/v7/widget/ViewStubCompat;
if-eqz v7, :cond_ca
invoke-virtual {p0}, Landroid/support/v7/app/AppCompatDelegateImplV9;->getActionBarThemedContext()Landroid/content/Context;
move-result-object v8
invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v8
invoke-virtual {v7, v8}, Landroid/support/v7/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V
invoke-virtual {v7}, Landroid/support/v7/widget/ViewStubCompat;->inflate()Landroid/view/View;
move-result-object v8
check-cast v8, Landroid/support/v7/widget/ActionBarContextView;
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
goto/16 :goto_ca
:cond_156
const/4 v8, 0x0
goto :goto_e5
:cond_158
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
const/high16 v9, 0x3f80
invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
const/4 v9, 0x0
invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
const/16 v9, 0x20
invoke-virtual {v8, v9}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;
move-result-object v8
instance-of v8, v8, Landroid/view/View;
if-eqz v8, :cond_120
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;
move-result-object v8
check-cast v8, Landroid/view/View;
invoke-static {v8}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V
goto :goto_120
:cond_182
const/4 v8, 0x0
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionMode:Landroid/support/v7/view/ActionMode;
goto/16 :goto_2b
:catch_187
move-exception v8
goto/16 :goto_27
.end method
.method  updateStatusGuard(I)I
.registers 14
const/4 v11, -0x1
const/4 v7, 0x0
const/4 v6, 0x0
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
if-eqz v8, :cond_89
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v8
instance-of v8, v8, Landroid/view/ViewGroup$MarginLayoutParams;
if-eqz v8, :cond_89
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;
const/4 v4, 0x0
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z
move-result v8
if-eqz v8, :cond_ab
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;
if-nez v8, :cond_34
new-instance v8, Landroid/graphics/Rect;
invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;
new-instance v8, Landroid/graphics/Rect;
invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;
:cond_34
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect1:Landroid/graphics/Rect;
iget-object v1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mTempRect2:Landroid/graphics/Rect;
invoke-virtual {v0, v7, p1, v7, v7}, Landroid/graphics/Rect;->set(IIII)V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
invoke-static {v8, v0, v1}, Landroid/support/v7/widget/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
iget v8, v1, Landroid/graphics/Rect;->top:I
if-nez v8, :cond_95
move v5, p1
:goto_45
iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
if-eq v8, v5, :cond_76
const/4 v4, 0x1
iput p1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;
if-nez v8, :cond_97
new-instance v8, Landroid/view/View;
iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V
iput-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;
iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mContext:Landroid/content/Context;
invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v9
sget v10, Landroid/support/v7/appcompat/R$color;->abc_input_method_navigation_guard:I
invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I
move-result v9
invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mSubDecor:Landroid/view/ViewGroup;
iget-object v9, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;
new-instance v10, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v10, v11, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v8, v9, v11, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
:goto_76
:cond_76
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;
if-eqz v8, :cond_a9
const/4 v6, 0x1
:goto_7b
iget-boolean v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mOverlayActionMode:Z
if-nez v8, :cond_82
if-eqz v6, :cond_82
const/4 p1, 0x0
:cond_82
:goto_82
if-eqz v4, :cond_89
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mActionModeView:Landroid/support/v7/widget/ActionBarContextView;
invoke-virtual {v8, v3}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_89
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;
if-eqz v8, :cond_94
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;
if-eqz v6, :cond_b3
:goto_91
invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V
:cond_94
return p1
:cond_95
move v5, v7
goto :goto_45
:cond_97
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;
invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
iget v8, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
if-eq v8, p1, :cond_76
iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v8, p0, Landroid/support/v7/app/AppCompatDelegateImplV9;->mStatusGuard:Landroid/view/View;
invoke-virtual {v8, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_76
:cond_a9
move v6, v7
goto :goto_7b
:cond_ab
iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
if-eqz v8, :cond_82
const/4 v4, 0x1
iput v7, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
goto :goto_82
:cond_b3
const/16 v7, 0x8
goto :goto_91
.end method