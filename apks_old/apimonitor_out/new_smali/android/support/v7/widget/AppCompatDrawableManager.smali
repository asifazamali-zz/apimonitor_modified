.class public final Landroid/support/v7/widget/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I = null
.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I = null
.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I = null
.field private static final COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache; = null
.field private static final DEBUG:Z = false
.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode; = null
.field private static INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager; = null
.field private static final PLATFORM_VD_CLAZZ:Ljava/lang/String; = "android.graphics.drawable.VectorDrawable"
.field private static final SKIP_DRAWABLE_TAG:Ljava/lang/String; = "appcompat_skip_skip"
.field private static final TAG:Ljava/lang/String; = "AppCompatDrawableManager"
.field private static final TINT_CHECKABLE_BUTTON_LIST:[I
.field private static final TINT_COLOR_CONTROL_NORMAL:[I
.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I
.field private mDelegates:Landroid/support/v4/util/ArrayMap;
.field private final mDrawableCacheLock:Ljava/lang/Object;
.field private final mDrawableCaches:Ljava/util/WeakHashMap;
.field private mHasCheckedVectorDrawableSetup:Z
.field private mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;
.field private mTintLists:Ljava/util/WeakHashMap;
.field private mTypedValue:Landroid/util/TypedValue;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x6
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
invoke-direct {v0, v7}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
new-array v0, v6, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_default_mtrl_alpha:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_default_mtrl_alpha:I
aput v1, v0, v4
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ab_share_pack_mtrl_alpha:I
aput v1, v0, v5
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I
const/4 v0, 0x7
new-array v0, v0, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_tick_mark_material:I
aput v1, v0, v4
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_share_mtrl_alpha:I
aput v1, v0, v5
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I
aput v1, v0, v6
const/4 v1, 0x4
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I
aput v2, v0, v1
const/4 v1, 0x5
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I
aput v2, v0, v1
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I
aput v1, v0, v7
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I
const/16 v0, 0xa
new-array v0, v0, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_activated_mtrl_alpha:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I
aput v1, v0, v4
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I
aput v1, v0, v5
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_cursor_material:I
aput v1, v0, v6
const/4 v1, 0x4
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_dark:I
aput v2, v0, v1
const/4 v1, 0x5
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I
aput v2, v0, v1
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_dark:I
aput v1, v0, v7
const/4 v1, 0x7
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_left_mtrl_light:I
aput v2, v0, v1
const/16 v1, 0x8
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_middle_mtrl_light:I
aput v2, v0, v1
const/16 v1, 0x9
sget v2, Landroid/support/v7/appcompat/R$drawable;->abc_text_select_handle_right_mtrl_light:I
aput v2, v0, v1
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I
new-array v0, v6, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_popup_background_mtrl_mult:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I
aput v1, v0, v4
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I
aput v1, v0, v5
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I
new-array v0, v5, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_tab_indicator_material:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_textfield_search_material:I
aput v1, v0, v4
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I
new-array v0, v5, [I
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_check_material:I
aput v1, v0, v3
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_radio_material:I
aput v1, v0, v4
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I
return-void
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;
new-instance v0, Ljava/util/WeakHashMap;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;
return-void
.end method
.method private addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v4/util/ArrayMap;
invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
:cond_b
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
.registers 9
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v1
if-eqz v1, :cond_2b
iget-object v3, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;
monitor-enter v3
:try_start_9
iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;
invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/LongSparseArray;
if-nez v0, :cond_1d
new-instance v0, Landroid/support/v4/util/LongSparseArray;
invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V
iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;
invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1d
new-instance v2, Ljava/lang/ref/WeakReference;
invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v0, p2, p3, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
monitor-exit v3
const/4 v2, 0x1
:goto_27
return v2
:catchall_28
move-exception v2
monitor-exit v3
:try_end_2a
.catchall {:try_start_9 .. :try_end_2a} :catchall_28
throw v2
:cond_2b
const/4 v2, 0x0
goto :goto_27
.end method
.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
if-nez v1, :cond_b
new-instance v1, Ljava/util/WeakHashMap;
invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V
iput-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
:cond_b
iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/SparseArrayCompat;
if-nez v0, :cond_1f
new-instance v0, Landroid/support/v4/util/SparseArrayCompat;
invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V
iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1f
invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V
return-void
.end method
.method private static arrayContains([II)Z
.registers 6
const/4 v1, 0x0
array-length v3, p0
move v2, v1
:goto_3
if-ge v2, v3, :cond_a
aget v0, p0, v2
if-ne v0, p1, :cond_b
const/4 v1, 0x1
:cond_a
return v1
:cond_b
add-int/lit8 v2, v2, 0x1
goto :goto_3
.end method
.method private checkVectorDrawableSetup(Landroid/content/Context;)V
.registers 5
.parameter
.end parameter
iget-boolean v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z
if-eqz v1, :cond_5
:cond_4
return-void
:cond_5
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_vector_test:I
invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_16
invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v1
if-nez v1, :cond_4
:cond_16
const/4 v1, 0x0
iput-boolean v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat."
invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method private createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 3
.parameter
.end parameter
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method private createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
.registers 9
.parameter
.end parameter
.parameter
.end parameter
const/4 v5, 0x4
new-array v4, v5, [[I
new-array v1, v5, [I
const/4 v3, 0x0
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlHighlight:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v0
sget v5, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I
move-result v2
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->DISABLED_STATE_SET:[I
aput-object v5, v4, v3
aput v2, v1, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->PRESSED_STATE_SET:[I
aput-object v5, v4, v3
invoke-static {v0, p2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I
move-result v5
aput v5, v1, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->FOCUSED_STATE_SET:[I
aput-object v5, v4, v3
invoke-static {v0, p2}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I
move-result v5
aput v5, v1, v3
add-int/lit8 v3, v3, 0x1
sget-object v5, Landroid/support/v7/widget/ThemeUtils;->EMPTY_STATE_SET:[I
aput-object v5, v4, v3
aput p2, v1, v3
add-int/lit8 v3, v3, 0x1
new-instance v5, Landroid/content/res/ColorStateList;
invoke-direct {v5, v4, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V
return-object v5
.end method
.method private static createCacheKey(Landroid/util/TypedValue;)J
.registers 5
iget v0, p0, Landroid/util/TypedValue;->assetCookie:I
int-to-long v0, v0
const/16 v2, 0x20
shl-long/2addr v0, v2
iget v2, p0, Landroid/util/TypedValue;->data:I
int-to-long v2, v2
or-long/2addr v0, v2
return-wide v0
.end method
.method private createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 3
.parameter
.end parameter
sget v0, Landroid/support/v7/appcompat/R$attr;->colorAccent:I
invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method private createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
.registers 3
.parameter
.end parameter
sget v0, Landroid/support/v7/appcompat/R$attr;->colorButtonNormal:I
invoke-static {p1, v0}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
.registers 12
.parameter
.end parameter
.parameter
.end parameter
const/4 v8, 0x1
iget-object v5, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;
if-nez v5, :cond_c
new-instance v5, Landroid/util/TypedValue;
invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V
iput-object v5, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;
:cond_c
iget-object v4, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v5
invoke-virtual {v5, p2, v4, v8}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
invoke-static {v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J
move-result-wide v2
invoke-direct {p0, p1, v2, v3}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_21
move-object v1, v0
:goto_20
return-object v1
:cond_21
sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_material:I
if-ne p2, v5, :cond_3e
new-instance v0, Landroid/graphics/drawable/LayerDrawable;
const/4 v5, 0x2
new-array v5, v5, [Landroid/graphics/drawable/Drawable;
const/4 v6, 0x0
sget v7, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_internal_bg:I
invoke-virtual {p0, p1, v7}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v7
aput-object v7, v5, v6
sget v6, Landroid/support/v7/appcompat/R$drawable;->abc_cab_background_top_mtrl_alpha:I
invoke-virtual {p0, p1, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v6
aput-object v6, v5, v8
invoke-direct {v0, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
:cond_3e
if-eqz v0, :cond_48
iget v5, v4, Landroid/util/TypedValue;->changingConfigurations:I
invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
invoke-direct {p0, p1, v2, v3, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
:cond_48
move-object v1, v0
goto :goto_20
.end method
.method private static createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
.registers 5
if-eqz p0, :cond_4
if-nez p1, :cond_6
:cond_4
const/4 v1, 0x0
:goto_5
return-object v1
:cond_6
const/4 v1, 0x0
invoke-virtual {p0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I
move-result v0
invoke-static {v0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v1
goto :goto_5
.end method
.method public static get()Landroid/support/v7/widget/AppCompatDrawableManager;
.registers 1
sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;
if-nez v0, :cond_10
new-instance v0, Landroid/support/v7/widget/AppCompatDrawableManager;
invoke-direct {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;-><init>()V
sput-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;
sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;
invoke-static {v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V
:cond_10
sget-object v0, Landroid/support/v7/widget/AppCompatDrawableManager;->INSTANCE:Landroid/support/v7/widget/AppCompatDrawableManager;
return-object v0
.end method
.method private getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
.registers 10
.parameter
.end parameter
.parameter
.end parameter
const/4 v3, 0x0
iget-object v4, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;
monitor-enter v4
:try_start_4
iget-object v5, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;
invoke-virtual {v5, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/LongSparseArray;
if-nez v0, :cond_10
monitor-exit v4
:goto_f
return-object v3
:cond_10
invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/ref/WeakReference;
if-eqz v2, :cond_30
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/graphics/drawable/Drawable$ConstantState;
if-eqz v1, :cond_2d
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
move-result-object v3
monitor-exit v4
goto :goto_f
:catchall_2a
move-exception v3
monitor-exit v4
:try_end_2c
.catchall {:try_start_4 .. :try_end_2c} :catchall_2a
throw v3
:try_start_2d
:cond_2d
invoke-virtual {v0, p2, p3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V
:cond_30
monitor-exit v4
:try_end_31
.catchall {:try_start_2d .. :try_end_31} :catchall_2a
goto :goto_f
.end method
.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
.registers 4
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
invoke-virtual {v1, p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v0
if-nez v0, :cond_12
new-instance v0, Landroid/graphics/PorterDuffColorFilter;
invoke-direct {v0, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;
invoke-virtual {v1, p0, p1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;
:cond_12
return-object v0
.end method
.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
.registers 6
.parameter
.end parameter
.parameter
.end parameter
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
if-eqz v2, :cond_15
iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;
invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/SparseArrayCompat;
if-eqz v0, :cond_15
invoke-virtual {v0, p2}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/res/ColorStateList;
:cond_15
return-object v1
.end method
.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
.registers 3
const/4 v0, 0x0
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I
if-ne p0, v1, :cond_7
sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
:cond_7
return-object v0
.end method
.method private static installDefaultInflateDelegates(Landroid/support/v7/widget/AppCompatDrawableManager;)V
.registers 3
.parameter
.end parameter
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x18
if-ge v0, v1, :cond_20
const-string v0, "vector"
new-instance v1, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;
invoke-direct {v1}, Landroid/support/v7/widget/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V
invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_20
const-string v0, "animated-vector"
new-instance v1, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;
invoke-direct {v1}, Landroid/support/v7/widget/AppCompatDrawableManager$AvdcInflateDelegate;-><init>()V
invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
:cond_20
return-void
.end method
.method private static isVectorDrawable(Landroid/graphics/drawable/Drawable;)Z
.registers 3
.parameter
.end parameter
instance-of v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat;
if-nez v0, :cond_14
const-string v0, "android.graphics.drawable.VectorDrawable"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
:cond_14
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
.registers 19
.parameter
.end parameter
.parameter
.end parameter
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
if-eqz v14, :cond_e8
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v14}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z
move-result v14
if-nez v14, :cond_e8
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;
if-eqz v14, :cond_38
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;
move/from16 v0, p2
invoke-virtual {v14, v0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
const-string v14, "appcompat_skip_skip"
invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v14
if-nez v14, :cond_36
if-eqz v3, :cond_41
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v14, v3}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
if-nez v14, :cond_41
:cond_36
const/4 v5, 0x0
:goto_37
:cond_37
return-object v5
:cond_38
new-instance v14, Landroid/support/v4/util/SparseArrayCompat;
invoke-direct {v14}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V
move-object/from16 v0, p0
iput-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;
:cond_41
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;
if-nez v14, :cond_50
new-instance v14, Landroid/util/TypedValue;
invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V
move-object/from16 v0, p0
iput-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;
:cond_50
move-object/from16 v0, p0
iget-object v12, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v10
const/4 v14, 0x1
move/from16 v0, p2
invoke-virtual {v10, v0, v12, v14}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V
invoke-static {v12}, Landroid/support/v7/widget/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J
move-result-wide v8
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v8, v9}, Landroid/support/v7/widget/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
move-result-object v5
if-nez v5, :cond_37
iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;
if-eqz v14, :cond_a5
iget-object v14, v12, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;
invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v14
const-string v15, ".xml"
invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v14
if-eqz v14, :cond_a5
:try_start_7e
move/from16 v0, p2
invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
move-result-object v7
invoke-static {v7}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
move-result-object v2
:cond_88
invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
move-result v13
const/4 v14, 0x2
if-eq v13, v14, :cond_92
const/4 v14, 0x1
if-ne v13, v14, :cond_88
:cond_92
const/4 v14, 0x2
if-eq v13, v14, :cond_b3
new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;
const-string v15, "No start tag found"
invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
throw v14
:catch_9d
:try_end_9d
.catch Ljava/lang/Exception; {:try_start_7e .. :try_end_9d} :catch_9d
move-exception v6
const-string v14, "AppCompatDrawableManager"
const-string v15, "Exception while inflating drawable"
invoke-static {v14, v15, v6}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:goto_a5
:cond_a5
if-nez v5, :cond_37
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;
const-string v15, "appcompat_skip_skip"
move/from16 v0, p2
invoke-virtual {v14, v0, v15}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V
goto :goto_37
:try_start_b3
:cond_b3
invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v11
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/support/v4/util/SparseArrayCompat;
move/from16 v0, p2
invoke-virtual {v14, v0, v11}, Landroid/support/v4/util/SparseArrayCompat;->append(ILjava/lang/Object;)V
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v14, v11}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;
if-eqz v4, :cond_d6
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v14
move-object/from16 v0, p1
invoke-interface {v4, v0, v7, v2, v14}, Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
move-result-object v5
:cond_d6
if-eqz v5, :cond_a5
iget v14, v12, Landroid/util/TypedValue;->changingConfigurations:I
invoke-virtual {v5, v14}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V
move-object/from16 v0, p0
move-object/from16 v1, p1
invoke-direct {v0, v1, v8, v9, v5}, Landroid/support/v7/widget/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
:try_end_e4
.catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_e4} :catch_9d
move-result v14
if-eqz v14, :cond_a5
goto :goto_a5
:cond_e8
const/4 v5, 0x0
goto/16 :goto_37
.end method
.method private removeDelegate(Ljava/lang/String;Landroid/support/v7/widget/AppCompatDrawableManager$InflateDelegate;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
if-eqz v0, :cond_11
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-ne v0, p2, :cond_11
iget-object v0, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;
invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_11
return-void
.end method
.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
.registers 4
invoke-static {p0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object p0
:cond_a
if-nez p2, :cond_e
sget-object p2, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
:cond_e
invoke-static {p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
.registers 14
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const v8, 0x102000f
const v7, 0x102000d
const/high16 v5, 0x102
invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v1
if-eqz v1, :cond_29
invoke-static {p4}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v4
if-eqz v4, :cond_18
invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object p4
:cond_18
invoke-static {p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object p4
invoke-static {p4, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
invoke-static {p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;
move-result-object v2
if-eqz v2, :cond_28
invoke-static {p4, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
:cond_28
:goto_28
return-object p4
:cond_29
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_track_material:I
if-ne p2, v4, :cond_5e
move-object v0, p4
check-cast v0, Landroid/graphics/drawable/LayerDrawable;
invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v5
sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v5
sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v5
sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
goto :goto_28
:cond_5e
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_material:I
if-eq p2, v4, :cond_6a
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_indicator_material:I
if-eq p2, v4, :cond_6a
sget v4, Landroid/support/v7/appcompat/R$drawable;->abc_ratingbar_small_material:I
if-ne p2, v4, :cond_9b
:cond_6a
move-object v0, p4
check-cast v0, Landroid/graphics/drawable/LayerDrawable;
invoke-virtual {v0, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I
move-result v5
sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v8}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v5
sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;
move-result-object v4
sget v5, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
invoke-static {p1, v5}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v5
sget-object v6, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
invoke-static {v4, v5, v6}, Landroid/support/v7/widget/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
goto :goto_28
:cond_9b
invoke-static {p1, p2, p4}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
move-result v3
if-nez v3, :cond_28
if-eqz p3, :cond_28
const/4 p4, 0x0
goto :goto_28
.end method
.method static tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/support/v7/widget/TintInfo;[I)V
.registers 5
invoke-static {p0}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eq v0, p0, :cond_14
const-string v0, "AppCompatDrawableManager"
const-string v1, "Mutated drawable is not the same instance as the input."
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_13
:goto_13
return-void
:cond_14
iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
if-nez v0, :cond_1c
iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z
if-eqz v0, :cond_3e
:cond_1c
iget-boolean v0, p1, Landroid/support/v7/widget/TintInfo;->mHasTintList:Z
if-eqz v0, :cond_39
iget-object v0, p1, Landroid/support/v7/widget/TintInfo;->mTintList:Landroid/content/res/ColorStateList;
:goto_22
iget-boolean v1, p1, Landroid/support/v7/widget/TintInfo;->mHasTintMode:Z
if-eqz v1, :cond_3b
iget-object v1, p1, Landroid/support/v7/widget/TintInfo;->mTintMode:Landroid/graphics/PorterDuff$Mode;
:goto_28
invoke-static {v0, v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;[I)Landroid/graphics/PorterDuffColorFilter;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
:goto_2f
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-gt v0, v1, :cond_13
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V
goto :goto_13
:cond_39
const/4 v0, 0x0
goto :goto_22
:cond_3b
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
goto :goto_28
:cond_3e
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V
goto :goto_2f
.end method
.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
.registers 9
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
sget-object v4, Landroid/support/v7/widget/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;
const/4 v3, 0x0
const/4 v2, 0x0
const/4 v0, -0x1
sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I
invoke-static {v5, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v5
if-eqz v5, :cond_2f
sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
const/4 v3, 0x1
:cond_10
:goto_10
if-eqz v3, :cond_63
invoke-static {p2}, Landroid/support/v7/widget/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v5
if-eqz v5, :cond_1c
invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object p2
:cond_1c
invoke-static {p0, v2}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I
move-result v1
invoke-static {v1, v4}, Landroid/support/v7/widget/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
move-result-object v5
invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
const/4 v5, -0x1
if-eq v0, v5, :cond_2d
invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:cond_2d
const/4 v5, 0x1
:goto_2e
return v5
:cond_2f
sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I
invoke-static {v5, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v5
if-eqz v5, :cond_3b
sget v2, Landroid/support/v7/appcompat/R$attr;->colorControlActivated:I
const/4 v3, 0x1
goto :goto_10
:cond_3b
sget-object v5, Landroid/support/v7/widget/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I
invoke-static {v5, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v5
if-eqz v5, :cond_4a
const v2, 0x1010031
const/4 v3, 0x1
sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;
goto :goto_10
:cond_4a
sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_list_divider_mtrl_alpha:I
if-ne p1, v5, :cond_5a
const v2, 0x1010030
const/4 v3, 0x1
const v5, 0x42233333
invoke-static {v5}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_10
:cond_5a
sget v5, Landroid/support/v7/appcompat/R$drawable;->abc_dialog_material_background:I
if-ne p1, v5, :cond_10
const v2, 0x1010031
const/4 v3, 0x1
goto :goto_10
:cond_63
const/4 v5, 0x0
goto :goto_2e
.end method
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
.registers 4
.parameter
.end parameter
.parameter
.end parameter
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method  getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V
invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_d
invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_d
if-nez v0, :cond_13
invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_13
if-eqz v0, :cond_19
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_19
if-eqz v0, :cond_1e
invoke-static {v0}, Landroid/support/v7/widget/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_1e
return-object v0
.end method
.method  getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
.registers 5
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
if-nez v0, :cond_15
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_edit_text_material:I
if-ne p2, v1, :cond_16
sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_edittext:I
invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
:cond_10
:goto_10
if-eqz v0, :cond_15
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
:cond_15
return-object v0
:cond_16
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_track_mtrl_alpha:I
if-ne p2, v1, :cond_21
sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_switch_track:I
invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
:cond_21
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_switch_thumb_material:I
if-ne p2, v1, :cond_2c
sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_switch_thumb:I
invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
:cond_2c
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_default_mtrl_shape:I
if-ne p2, v1, :cond_35
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
:cond_35
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_borderless_material:I
if-ne p2, v1, :cond_3e
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
:cond_3e
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_btn_colored_material:I
if-ne p2, v1, :cond_47
invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
:cond_47
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_mtrl_am_alpha:I
if-eq p2, v1, :cond_4f
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_spinner_textfield_background_material:I
if-ne p2, v1, :cond_56
:cond_4f
sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_spinner:I
invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
:cond_56
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I
invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v1
if-eqz v1, :cond_65
sget v1, Landroid/support/v7/appcompat/R$attr;->colorControlNormal:I
invoke-static {p1, v1}, Landroid/support/v7/widget/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
:cond_65
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I
invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v1
if-eqz v1, :cond_74
sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_default:I
invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
:cond_74
sget-object v1, Landroid/support/v7/widget/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I
invoke-static {v1, p2}, Landroid/support/v7/widget/AppCompatDrawableManager;->arrayContains([II)Z
move-result v1
if-eqz v1, :cond_83
sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_btn_checkable:I
invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
:cond_83
sget v1, Landroid/support/v7/appcompat/R$drawable;->abc_seekbar_thumb_material:I
if-ne p2, v1, :cond_10
sget v1, Landroid/support/v7/appcompat/R$color;->abc_tint_seek_thumb:I
invoke-static {p1, v1}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
move-result-object v0
goto :goto_10
.end method
.method public onConfigurationChanged(Landroid/content/Context;)V
.registers 5
.parameter
.end parameter
iget-object v2, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;
monitor-enter v2
:try_start_3
iget-object v1, p0, Landroid/support/v7/widget/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;
invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/util/LongSparseArray;
if-eqz v0, :cond_10
invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V
:cond_10
monitor-exit v2
return-void
:catchall_12
move-exception v1
monitor-exit v2
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v1
.end method
.method  onDrawableLoadedFromResources(Landroid/content/Context;Landroid/support/v7/widget/VectorEnabledTintResources;I)Landroid/graphics/drawable/Drawable;
.registers 6
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1, p3}, Landroid/support/v7/widget/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_a
invoke-virtual {p2, p3}, Landroid/support/v7/widget/VectorEnabledTintResources;->superGetDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
:cond_a
if-eqz v0, :cond_12
const/4 v1, 0x0
invoke-direct {p0, p1, p3, v1, v0}, Landroid/support/v7/widget/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
move-result-object v1
:goto_11
return-object v1
:cond_12
const/4 v1, 0x0
goto :goto_11
.end method