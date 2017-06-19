.class public Landroid/support/v7/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"
.implements Landroid/support/v7/view/menu/ShowableListMenu;
.field private static final DEBUG:Z = false
.field static final EXPAND_LIST_TIMEOUT:I = 0xfa
.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0
.field public static final INPUT_METHOD_NEEDED:I = 0x1
.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2
.field public static final MATCH_PARENT:I = -0x1
.field public static final POSITION_PROMPT_ABOVE:I = 0x0
.field public static final POSITION_PROMPT_BELOW:I = 0x1
.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"
.field public static final WRAP_CONTENT:I = -0x2
.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
.field private mAdapter:Landroid/widget/ListAdapter;
.field private mContext:Landroid/content/Context;
.field private mDropDownAlwaysVisible:Z
.field private mDropDownAnchorView:Landroid/view/View;
.field private mDropDownGravity:I
.field private mDropDownHeight:I
.field private mDropDownHorizontalOffset:I
.field  mDropDownList:Landroid/support/v7/widget/DropDownListView;
.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;
.field private mDropDownVerticalOffset:I
.field private mDropDownVerticalOffsetSet:Z
.field private mDropDownWidth:I
.field private mDropDownWindowLayoutType:I
.field private mEpicenterBounds:Landroid/graphics/Rect;
.field private mForceIgnoreOutsideTouch:Z
.field final mHandler:Landroid/os/Handler;
.field private final mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;
.field private mIsAnimatedFromAnchor:Z
.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
.field  mListItemExpandMaximum:I
.field private mModal:Z
.field private mObserver:Landroid/database/DataSetObserver;
.field  mPopup:Landroid/widget/PopupWindow;
.field private mPromptPosition:I
.field private mPromptView:Landroid/view/View;
.field final mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;
.field private final mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;
.field private mShowDropDownRunnable:Ljava/lang/Runnable;
.field private final mTempRect:Landroid/graphics/Rect;
.field private final mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;
.method static constructor <clinit>()V
.registers 6
:try_start_0
const-class v1, Landroid/widget/PopupWindow;
const-string v2, "setClipToScreenEnabled"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
:try_start_12
:goto_12
:try_end_12
.catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_41
const-class v1, Landroid/widget/PopupWindow;
const-string v2, "getMaxAvailableHeight"
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
const-class v5, Landroid/view/View;
aput-object v5, v3, v4
const/4 v4, 0x1
sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
const/4 v4, 0x2
sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
:try_end_2e
.catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_2e} :catch_4a
:try_start_2e
:goto_2e
const-class v1, Landroid/widget/PopupWindow;
const-string v2, "setEpicenterBounds"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Class;
const/4 v4, 0x0
const-class v5, Landroid/graphics/Rect;
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sput-object v1, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
:try_end_40
.catch Ljava/lang/NoSuchMethodException; {:try_start_2e .. :try_end_40} :catch_53
:goto_40
return-void
:catch_41
move-exception v0
const-string v1, "ListPopupWindow"
const-string v2, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_12
:catch_4a
move-exception v0
const-string v1, "ListPopupWindow"
const-string v2, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_2e
:catch_53
move-exception v0
const-string v1, "ListPopupWindow"
const-string v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_40
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
.parameter
.end parameter
const/4 v0, 0x0
sget v1, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I
invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
sget v0, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.registers 10
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v1, -0x2
const/4 v4, 0x1
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
const/16 v1, 0x3ea
iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I
iput-boolean v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z
iput v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I
iput-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
iput-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z
const v1, 0x7fffffff
iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I
iput v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I
new-instance v1, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V
iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;
new-instance v1, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V
iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;
new-instance v1, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V
iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;
new-instance v1, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;
invoke-direct {v1, p0}, Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V
iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;
new-instance v1, Landroid/os/Handler;
invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;
move-result-object v2
invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
sget-object v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I
invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v1
iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I
sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v1
iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I
iget v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I
if-eqz v1, :cond_69
iput-boolean v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z
:cond_69
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_7f
new-instance v1, Landroid/support/v7/widget/AppCompatPopupWindow;
invoke-direct {v1, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
:goto_79
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
return-void
:cond_7f
new-instance v1, Landroid/support/v7/widget/AppCompatPopupWindow;
invoke-direct {v1, p1, p2, p3}, Landroid/support/v7/widget/AppCompatPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
goto :goto_79
.end method
.method private buildDropDown()I
.registers 26
const/16 v19, 0x0
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
if-nez v2, :cond_171
move-object/from16 v0, p0
iget-object v9, v0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;
new-instance v2, Landroid/support/v7/widget/ListPopupWindow$2;
move-object/from16 v0, p0
invoke-direct {v2, v0}, Landroid/support/v7/widget/ListPopupWindow$2;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;
move-object/from16 v0, p0
iget-boolean v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z
if-nez v2, :cond_158
const/4 v2, 0x1
:goto_1e
move-object/from16 v0, p0
invoke-virtual {v0, v9, v2}, Landroid/support/v7/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
move-result-object v2
move-object/from16 v0, p0
iput-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_39
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
:cond_39
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
const/4 v4, 0x1
invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setFocusable(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
const/4 v4, 0x1
invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setFocusableInTouchMode(Z)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
new-instance v4, Landroid/support/v7/widget/ListPopupWindow$3;
move-object/from16 v0, p0
invoke-direct {v4, v0}, Landroid/support/v7/widget/ListPopupWindow$3;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V
invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mScrollListener:Landroid/support/v7/widget/ListPopupWindow$PopupScrollListener;
invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
if-eqz v2, :cond_89
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
invoke-virtual {v2, v4}, Landroid/support/v7/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
:cond_89
move-object/from16 v0, p0
iget-object v10, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
if-eqz v14, :cond_f7
new-instance v12, Landroid/widget/LinearLayout;
invoke-direct {v12, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
const/4 v2, 0x1
invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v13, Landroid/widget/LinearLayout$LayoutParams;
const/4 v2, -0x1
const/4 v4, 0x0
const/high16 v5, 0x3f80
invoke-direct {v13, v2, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I
packed-switch v2, :pswitch_data_222
const-string v2, "ListPopupWindow"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Invalid hint position "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_c8
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
if-ltz v2, :cond_16b
const/high16 v22, -0x8000
move-object/from16 v0, p0
iget v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
move/from16 v23, v0
:goto_d6
move/from16 v0, v23
move/from16 v1, v22
invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v24
const/4 v11, 0x0
const/4 v2, 0x0
move/from16 v0, v24
invoke-virtual {v14, v0, v2}, Landroid/view/View;->measure(II)V
invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v13
check-cast v13, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
add-int/2addr v2, v4
iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
add-int v19, v2, v4
move-object v10, v12
:cond_f7
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v2, v10}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
:goto_fe
:cond_fe
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v2}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v8
if-eqz v8, :cond_196
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v8, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
add-int v20, v2, v4
move-object/from16 v0, p0
iget-boolean v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z
if-nez v2, :cond_12e
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
neg-int v2, v2
move-object/from16 v0, p0
iput v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I
:goto_12e
:cond_12e
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v2}, Landroid/widget/PopupWindow;->getInputMethodMode()I
move-result v2
const/4 v4, 0x2
if-ne v2, v4, :cond_1a0
const/4 v15, 0x1
:goto_13a
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v2
move-object/from16 v0, p0
iget v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I
move-object/from16 v0, p0
invoke-direct {v0, v2, v4, v15}, Landroid/support/v7/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I
move-result v18
move-object/from16 v0, p0
iget-boolean v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
if-nez v2, :cond_155
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
const/4 v4, -0x1
if-ne v2, v4, :cond_1a2
:cond_155
add-int v2, v18, v20
:goto_157
return v2
:cond_158
const/4 v2, 0x0
goto/16 :goto_1e
:pswitch_15b
invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
goto/16 :goto_c8
:pswitch_163
invoke-virtual {v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v12, v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto/16 :goto_c8
:cond_16b
const/16 v22, 0x0
const/16 v23, 0x0
goto/16 :goto_d6
:cond_171
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;
move-result-object v10
check-cast v10, Landroid/view/ViewGroup;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
move-object/from16 v21, v0
if-eqz v21, :cond_fe
invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v13
check-cast v13, Landroid/widget/LinearLayout$LayoutParams;
invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I
move-result v2
iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
add-int/2addr v2, v4
iget v4, v13, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I
add-int v19, v2, v4
goto/16 :goto_fe
:cond_196
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V
const/16 v20, 0x0
goto :goto_12e
:cond_1a0
const/4 v15, 0x0
goto :goto_13a
:cond_1a2
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
packed-switch v2, :pswitch_data_22a
move-object/from16 v0, p0
iget v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
const/high16 v4, 0x4000
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
:goto_1b3
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
const/4 v4, 0x0
const/4 v5, -0x1
sub-int v6, v18, v19
const/4 v7, -0x1
invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I
move-result v16
if-lez v16, :cond_1d8
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v2}, Landroid/support/v7/widget/DropDownListView;->getPaddingTop()I
move-result v2
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v4}, Landroid/support/v7/widget/DropDownListView;->getPaddingBottom()I
move-result v4
add-int v17, v2, v4
add-int v2, v20, v17
add-int v19, v19, v2
:cond_1d8
add-int v2, v16, v19
goto/16 :goto_157
:pswitch_1dc
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->right:I
add-int/2addr v4, v5
sub-int/2addr v2, v4
const/high16 v4, -0x8000
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
goto :goto_1b3
:pswitch_1ff
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/ListPopupWindow;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v2
iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I
move-object/from16 v0, p0
iget-object v4, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->right:I
add-int/2addr v4, v5
sub-int/2addr v2, v4
const/high16 v4, 0x4000
invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v3
goto :goto_1b3
:pswitch_data_22a
.packed-switch -0x2
:pswitch_1dc
:pswitch_1ff
.end packed-switch
:pswitch_data_222
.packed-switch 0x0
:pswitch_163
:pswitch_15b
.end packed-switch
.end method
.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
.registers 10
sget-object v1, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
if-eqz v1, :cond_2f
:try_start_4
sget-object v1, Landroid/support/v7/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
const/4 v4, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x2
invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
:try_end_25
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_27
move-result v1
:goto_26
return v1
:catch_27
move-exception v0
const-string v1, "ListPopupWindow"
const-string v2, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_2f
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v1, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I
move-result v1
goto :goto_26
.end method
.method private static isConfirmKey(I)Z
.registers 2
const/16 v0, 0x42
if-eq p0, v0, :cond_8
const/16 v0, 0x17
if-ne p0, v0, :cond_a
:cond_8
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private removePromptView()V
.registers 4
iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
if-eqz v2, :cond_16
iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
instance-of v2, v1, Landroid/view/ViewGroup;
if-eqz v2, :cond_16
move-object v0, v1
check-cast v0, Landroid/view/ViewGroup;
iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_16
return-void
.end method
.method private setPopupClipToScreenEnabled(Z)V
.registers 8
sget-object v1, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
if-eqz v1, :cond_15
:try_start_4
sget-object v1, Landroid/support/v7/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_15
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16
:goto_15
:cond_15
return-void
:catch_16
move-exception v0
const-string v1, "ListPopupWindow"
const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."
invoke-static {v1, v2}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_15
.end method
.method public clearListSelection()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
if-eqz v0, :cond_b
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V
invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->requestLayout()V
:cond_b
return-void
.end method
.method public createDragToOpenListener(Landroid/view/View;)Landroid/view/View$OnTouchListener;
.registers 3
new-instance v0, Landroid/support/v7/widget/ListPopupWindow$1;
invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ListPopupWindow$1;-><init>(Landroid/support/v7/widget/ListPopupWindow;Landroid/view/View;)V
return-object v0
.end method
.method  createDropDownListView(Landroid/content/Context;Z)Landroid/support/v7/widget/DropDownListView;
.registers 4
new-instance v0, Landroid/support/v7/widget/DropDownListView;
invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V
return-object v0
.end method
.method public dismiss()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V
iput-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mResizePopupRunnable:Landroid/support/v7/widget/ListPopupWindow$ResizePopupRunnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public getAnchorView()Landroid/view/View;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;
return-object v0
.end method
.method public getAnimationStyle()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I
move-result v0
return v0
.end method
.method public getBackground()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
return v0
.end method
.method public getHorizontalOffset()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I
return v0
.end method
.method public getInputMethodMode()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I
move-result v0
return v0
.end method
.method public getListView()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
return-object v0
.end method
.method public getPromptPosition()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I
return v0
.end method
.method public getSelectedItem()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;
move-result-object v0
goto :goto_7
.end method
.method public getSelectedItemId()J
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-nez v0, :cond_9
const-wide/high16 v0, -0x8000
:goto_8
return-wide v0
:cond_9
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemId()J
move-result-wide v0
goto :goto_8
.end method
.method public getSelectedItemPosition()I
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, -0x1
:goto_7
return v0
:cond_8
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I
move-result v0
goto :goto_7
.end method
.method public getSelectedView()Landroid/view/View;
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getSelectedView()Landroid/view/View;
move-result-object v0
goto :goto_7
.end method
.method public getSoftInputMode()I
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getSoftInputMode()I
move-result v0
return v0
.end method
.method public getVerticalOffset()I
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I
goto :goto_5
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
return v0
.end method
.method public isDropDownAlwaysVisible()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
return v0
.end method
.method public isInputMethodNotNeeded()Z
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public isModal()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z
return v0
.end method
.method public isShowing()Z
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
return v0
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 16
.parameter
.end parameter
.parameter
.end parameter
const/16 v12, 0x14
const/16 v11, 0x13
const/4 v8, 0x0
const/4 v7, 0x1
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v9
if-eqz v9, :cond_91
const/16 v9, 0x3e
if-eq p1, v9, :cond_91
iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v9}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I
move-result v9
if-gez v9, :cond_1e
invoke-static {p1}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z
move-result v9
if-nez v9, :cond_91
:cond_1e
iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v9}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I
move-result v4
iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v9}, Landroid/widget/PopupWindow;->isAboveAnchor()Z
move-result v9
if-nez v9, :cond_5d
move v2, v7
:goto_2d
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
const v5, 0x7fffffff
const/high16 v6, -0x8000
if-eqz v0, :cond_45
invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
move-result v1
if-eqz v1, :cond_5f
move v5, v8
:goto_3d
if-eqz v1, :cond_66
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v9
add-int/lit8 v6, v9, -0x1
:goto_45
:cond_45
if-eqz v2, :cond_4b
if-ne p1, v11, :cond_4b
if-le v4, v5, :cond_51
:cond_4b
if-nez v2, :cond_73
if-ne p1, v12, :cond_73
if-lt v4, v6, :cond_73
:cond_51
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V
iget-object v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v8, v7}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V
:goto_5c
:sswitch_5c
return v7
:cond_5d
move v2, v8
goto :goto_2d
:cond_5f
iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v9, v8, v7}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I
move-result v5
goto :goto_3d
:cond_66
iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v10
add-int/lit8 v10, v10, -0x1
invoke-virtual {v9, v10, v8}, Landroid/support/v7/widget/DropDownListView;->lookForSelectablePosition(IZ)I
move-result v6
goto :goto_45
:cond_73
iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v9, v8}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V
iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v9, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v3
if-eqz v3, :cond_93
iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
const/4 v10, 0x2
invoke-virtual {v9, v10}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
iget-object v9, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v9}, Landroid/support/v7/widget/DropDownListView;->requestFocusFromTouch()Z
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V
sparse-switch p1, :sswitch_data_a2
:cond_91
move v7, v8
goto :goto_5c
:cond_93
if-eqz v2, :cond_9a
if-ne p1, v12, :cond_9a
if-ne v4, v6, :cond_91
goto :goto_5c
:cond_9a
if-nez v2, :cond_91
if-ne p1, v11, :cond_91
if-ne v4, v5, :cond_91
goto :goto_5c
nop
:sswitch_data_a2
.sparse-switch
0x13 -> :sswitch_5c
0x14 -> :sswitch_5c
0x17 -> :sswitch_5c
0x42 -> :sswitch_5c
.end sparse-switch
.end method
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
.registers 7
.parameter
.end parameter
.parameter
.end parameter
const/4 v2, 0x1
const/4 v3, 0x4
if-ne p1, v3, :cond_41
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v3
if-eqz v3, :cond_41
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;
invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I
move-result v3
if-nez v3, :cond_22
invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I
move-result v3
if-nez v3, :cond_22
invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
move-result-object v1
if-eqz v1, :cond_21
invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V
:goto_21
:cond_21
return v2
:cond_22
invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I
move-result v3
if-ne v3, v2, :cond_41
invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
move-result-object v1
if-eqz v1, :cond_31
invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V
:cond_31
invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z
move-result v3
if-eqz v3, :cond_41
invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z
move-result v3
if-nez v3, :cond_41
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V
goto :goto_21
:cond_41
const/4 v2, 0x0
goto :goto_21
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 5
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v1
if-eqz v1, :cond_20
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I
move-result v1
if-ltz v1, :cond_20
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v1, p1, p2}, Landroid/support/v7/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_1f
invoke-static {p1}, Landroid/support/v7/widget/ListPopupWindow;->isConfirmKey(I)Z
move-result v1
if-eqz v1, :cond_1f
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->dismiss()V
:cond_1f
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method public performItemClick(I)Z
.registers 9
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_26
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
if-eqz v0, :cond_24
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I
move-result v0
sub-int v0, p1, v0
invoke-virtual {v1, v0}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v1}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v6
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J
move-result-wide v4
move v3, p1
invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
:cond_24
const/4 v0, 0x1
:goto_25
return v0
:cond_26
const/4 v0, 0x0
goto :goto_25
.end method
.method public postShow()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 4
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;
if-nez v0, :cond_22
new-instance v0, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;
invoke-direct {v0, p0}, Landroid/support/v7/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Landroid/support/v7/widget/ListPopupWindow;)V
iput-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;
:goto_b
:cond_b
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v0, :cond_16
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;
invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_16
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
if-eqz v0, :cond_21
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V
:cond_21
return-void
:cond_22
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
if-eqz v0, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;
invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
goto :goto_b
.end method
.method public setAnchorView(Landroid/view/View;)V
.registers 2
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;
return-void
.end method
.method public setAnimationStyle(I)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V
return-void
.end method
.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setContentWidth(I)V
.registers 5
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v1, v2
add-int/2addr v1, p1
iput v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
:goto_19
return-void
:cond_1a
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ListPopupWindow;->setWidth(I)V
goto :goto_19
.end method
.method public setDropDownAlwaysVisible(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
return-void
.end method
.method public setDropDownGravity(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I
return-void
.end method
.method public setEpicenterBounds(Landroid/graphics/Rect;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;
return-void
.end method
.method public setForceIgnoreOutsideTouch(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z
return-void
.end method
.method public setHeight(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
return-void
.end method
.method public setHorizontalOffset(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I
return-void
.end method
.method public setInputMethodMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V
return-void
.end method
.method  setListItemExpandMax(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mListItemExpandMaximum:I
return-void
.end method
.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;
return-void
.end method
.method public setModal(Z)V
.registers 3
iput-boolean p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V
return-void
.end method
.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.registers 3
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
return-void
.end method
.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
.registers 2
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;
return-void
.end method
.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
.registers 2
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;
return-void
.end method
.method public setPromptPosition(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptPosition:I
return-void
.end method
.method public setPromptView(Landroid/view/View;)V
.registers 3
.parameter
.end parameter
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_9
invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow;->removePromptView()V
:cond_9
iput-object p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPromptView:Landroid/view/View;
if-eqz v0, :cond_10
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->show()V
:cond_10
return-void
.end method
.method public setSelection(I)V
.registers 5
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isShowing()Z
move-result v1
if-eqz v1, :cond_21
if-eqz v0, :cond_21
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v7/widget/DropDownListView;->setListSelectionHidden(Z)V
invoke-virtual {v0, p1}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-lt v1, v2, :cond_21
invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->getChoiceMode()I
move-result v1
if-eqz v1, :cond_21
const/4 v1, 0x1
invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/DropDownListView;->setItemChecked(IZ)V
:cond_21
return-void
.end method
.method public setSoftInputMode(I)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V
return-void
.end method
.method public setVerticalOffset(I)V
.registers 3
iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z
return-void
.end method
.method public setWidth(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
return-void
.end method
.method public setWindowLayoutType(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I
return-void
.end method
.method public show()V
.registers 12
const/4 v2, 0x1
const/4 v4, -0x2
const/4 v1, 0x0
const/4 v5, -0x1
invoke-direct {p0}, Landroid/support/v7/widget/ListPopupWindow;->buildDropDown()I
move-result v7
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->isInputMethodNotNeeded()Z
move-result v9
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWindowLayoutType:I
invoke-static {v0, v3}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_8c
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v0, v5, :cond_59
const/4 v10, -0x1
:goto_20
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
if-ne v0, v5, :cond_7f
if-eqz v9, :cond_69
move v8, v7
:goto_27
if-eqz v9, :cond_6d
iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v0, v5, :cond_6b
move v0, v5
:goto_30
invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V
:goto_38
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z
if-nez v3, :cond_43
iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
if-nez v3, :cond_43
move v1, v2
:cond_43
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v1
iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I
iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I
if-gez v10, :cond_88
move v4, v5
:goto_53
if-gez v8, :cond_8a
:goto_55
invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V
:cond_58
:goto_58
return-void
:cond_59
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v0, v4, :cond_66
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v10
goto :goto_20
:cond_66
iget v10, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
goto :goto_20
:cond_69
move v8, v5
goto :goto_27
:cond_6b
move v0, v1
goto :goto_30
:cond_6d
iget-object v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v0, v5, :cond_7d
move v0, v5
:goto_74
invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setWidth(I)V
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setHeight(I)V
goto :goto_38
:cond_7d
move v0, v1
goto :goto_74
:cond_7f
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
if-ne v0, v4, :cond_85
move v8, v7
goto :goto_38
:cond_85
iget v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
goto :goto_38
:cond_88
move v4, v10
goto :goto_53
:cond_8a
move v5, v8
goto :goto_55
:cond_8c
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v0, v5, :cond_fa
const/4 v10, -0x1
:goto_91
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
if-ne v0, v5, :cond_10a
const/4 v8, -0x1
:goto_96
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, v10}, Landroid/widget/PopupWindow;->setWidth(I)V
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {v0, v8}, Landroid/widget/PopupWindow;->setHeight(I)V
invoke-direct {p0, v2}, Landroid/support/v7/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z
if-nez v3, :cond_113
iget-boolean v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z
if-nez v3, :cond_113
:goto_ad
invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mTouchInterceptor:Landroid/support/v7/widget/ListPopupWindow$PopupTouchInterceptor;
invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
if-eqz v0, :cond_ca
:try_start_bb
sget-object v0, Landroid/support/v7/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:cond_ca
:goto_ca
:try_end_ca
.catch Ljava/lang/Exception; {:try_start_bb .. :try_end_ca} :catch_115
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v1
iget v2, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHorizontalOffset:I
iget v3, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownVerticalOffset:I
iget v4, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownGravity:I
invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v0, v5}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V
iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z
if-eqz v0, :cond_ea
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownList:Landroid/support/v7/widget/DropDownListView;
invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z
move-result v0
if-eqz v0, :cond_ed
:cond_ea
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->clearListSelection()V
:cond_ed
iget-boolean v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mModal:Z
if-nez v0, :cond_58
iget-object v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v7/widget/ListPopupWindow;->mHideSelector:Landroid/support/v7/widget/ListPopupWindow$ListSelectorHider;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_58
:cond_fa
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
if-ne v0, v4, :cond_107
invoke-virtual {p0}, Landroid/support/v7/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v10
goto :goto_91
:cond_107
iget v10, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownWidth:I
goto :goto_91
:cond_10a
iget v0, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
if-ne v0, v4, :cond_110
move v8, v7
goto :goto_96
:cond_110
iget v8, p0, Landroid/support/v7/widget/ListPopupWindow;->mDropDownHeight:I
goto :goto_96
:cond_113
move v2, v1
goto :goto_ad
:catch_115
move-exception v6
const-string v0, "ListPopupWindow"
const-string v1, "Could not invoke setEpicenterBounds on PopupWindow"
invoke-static {v0, v1, v6}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_ca
.end method