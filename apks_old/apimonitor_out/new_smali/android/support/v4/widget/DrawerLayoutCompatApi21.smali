.class  Landroid/support/v4/widget/DrawerLayoutCompatApi21;
.super Ljava/lang/Object;
.source "DrawerLayoutCompatApi21.java"
.field private static final THEME_ATTRS:[I
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x1010434
aput v2, v0, v1
sput-object v0, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->THEME_ATTRS:[I
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V
.registers 8
const/4 v4, 0x0
move-object v0, p1
check-cast v0, Landroid/view/WindowInsets;
const/4 v1, 0x3
if-ne p2, v1, :cond_30
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I
move-result v1
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I
move-result v2
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I
move-result v3
invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
move-result-object v0
:cond_17
:goto_17
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I
move-result v1
iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I
move-result v1
iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I
move-result v1
iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I
move-result v1
iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I
return-void
:cond_30
const/4 v1, 0x5
if-ne p2, v1, :cond_17
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I
move-result v1
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I
move-result v2
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I
move-result v3
invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
move-result-object v0
goto :goto_17
.end method
.method public static configureApplyInsets(Landroid/view/View;)V
.registers 2
instance-of v0, p0, Landroid/support/v4/widget/DrawerLayoutImpl;
if-eqz v0, :cond_11
new-instance v0, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;
invoke-direct {v0}, Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;-><init>()V
invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
const/16 v0, 0x500
invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
:cond_11
return-void
.end method
.method public static dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V
.registers 8
const/4 v4, 0x0
move-object v0, p1
check-cast v0, Landroid/view/WindowInsets;
const/4 v1, 0x3
if-ne p2, v1, :cond_1b
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I
move-result v1
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I
move-result v2
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I
move-result v3
invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
move-result-object v0
:cond_17
:goto_17
invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
return-void
:cond_1b
const/4 v1, 0x5
if-ne p2, v1, :cond_17
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I
move-result v1
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I
move-result v2
invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I
move-result v3
invoke-virtual {v0, v4, v1, v2, v3}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;
move-result-object v0
goto :goto_17
.end method
.method public static getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.registers 3
sget-object v1, Landroid/support/v4/widget/DrawerLayoutCompatApi21;->THEME_ATTRS:[I
invoke-virtual {p0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x0
:try_start_7
invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
:try_end_a
.catchall {:try_start_7 .. :try_end_a} :catchall_f
move-result-object v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-object v1
:catchall_f
move-exception v1
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
throw v1
.end method
.method public static getTopInset(Ljava/lang/Object;)I
.registers 2
if-eqz p0, :cond_9
check-cast p0, Landroid/view/WindowInsets;
invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method