.class  Landroid/support/v7/widget/AppCompatPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AppCompatPopupWindow.java"
.field private static final COMPAT_OVERLAP_ANCHOR:Z = false
.field private static final TAG:Ljava/lang/String; = "AppCompatPopupWindow"
.field private mOverlapAnchor:Z
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-ge v0, v1, :cond_a
const/4 v0, 0x1
:goto_7
sput-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z
return-void
:cond_a
const/4 v0, 0x0
goto :goto_7
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/AppCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatPopupWindow;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
return-void
.end method
.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.registers 9
sget-object v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow:[I
invoke-static {p1, p2, v2, p3, p4}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I
invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_18
sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z
move-result v2
invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatPopupWindow;->setSupportOverlapAnchor(Z)V
:cond_18
sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupBackground:I
invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
if-eqz p4, :cond_3b
const/16 v2, 0xb
if-ge v1, v2, :cond_3b
sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupAnimationStyle:I
invoke-virtual {v0, v2}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z
move-result v2
if-eqz v2, :cond_3b
sget v2, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupAnimationStyle:I
const/4 v3, -0x1
invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v2
invoke-virtual {p0, v2}, Landroid/support/v7/widget/AppCompatPopupWindow;->setAnimationStyle(I)V
:cond_3b
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0xe
if-ge v2, v3, :cond_47
invoke-static {p0}, Landroid/support/v7/widget/AppCompatPopupWindow;->wrapOnScrollChangedListener(Landroid/widget/PopupWindow;)V
:cond_47
return-void
.end method
.method private static wrapOnScrollChangedListener(Landroid/widget/PopupWindow;)V
.registers 7
:try_start_0
const-class v4, Landroid/widget/PopupWindow;
const-string v5, "mAnchor"
invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
const/4 v4, 0x1
invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
const-class v4, Landroid/widget/PopupWindow;
const-string v5, "mOnScrollChangedListener"
invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v2
const/4 v4, 0x1
invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/ViewTreeObserver$OnScrollChangedListener;
new-instance v4, Landroid/support/v7/widget/AppCompatPopupWindow$1;
invoke-direct {v4, v1, p0, v3}, Landroid/support/v7/widget/AppCompatPopupWindow$1;-><init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:try_end_26
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27
:goto_26
return-void
:catch_27
move-exception v0
const-string v4, "AppCompatPopupWindow"
const-string v5, "Exception while installing workaround OnScrollChangedListener"
invoke-static {v4, v5, v0}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_26
.end method
.method public getSupportOverlapAnchor()Z
.registers 2
sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z
if-eqz v0, :cond_7
iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z
:goto_6
return v0
:cond_7
invoke-static {p0}, Landroid/support/v4/widget/PopupWindowCompat;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z
move-result v0
goto :goto_6
.end method
.method public setSupportOverlapAnchor(Z)V
.registers 3
sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z
if-eqz v0, :cond_7
iput-boolean p1, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z
:goto_6
return-void
:cond_7
invoke-static {p0, p1}, Landroid/support/v4/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
goto :goto_6
.end method
.method public showAsDropDown(Landroid/view/View;II)V
.registers 5
sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z
if-eqz v0, :cond_d
iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z
if-eqz v0, :cond_d
invoke-virtual {p1}, Landroid/view/View;->getHeight()I
move-result v0
sub-int/2addr p3, v0
:cond_d
invoke-super {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V
return-void
.end method
.method public showAsDropDown(Landroid/view/View;III)V
.registers 6
sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z
if-eqz v0, :cond_d
iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z
if-eqz v0, :cond_d
invoke-virtual {p1}, Landroid/view/View;->getHeight()I
move-result v0
sub-int/2addr p3, v0
:cond_d
invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V
return-void
.end method
.method public update(Landroid/view/View;IIII)V
.registers 7
sget-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z
if-eqz v0, :cond_d
iget-boolean v0, p0, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z
if-eqz v0, :cond_d
invoke-virtual {p1}, Landroid/view/View;->getHeight()I
move-result v0
sub-int/2addr p3, v0
:cond_d
invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V
return-void
.end method