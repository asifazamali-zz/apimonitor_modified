.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "SwitchCompat.java"
.field private static final ACCESSIBILITY_EVENT_CLASS_NAME:Ljava/lang/String; = "android.widget.Switch"
.field private static final CHECKED_STATE_SET:[I = null
.field private static final MONOSPACE:I = 0x3
.field private static final SANS:I = 0x1
.field private static final SERIF:I = 0x2
.field private static final THUMB_ANIMATION_DURATION:I = 0xfa
.field private static final TOUCH_MODE_DOWN:I = 0x1
.field private static final TOUCH_MODE_DRAGGING:I = 0x2
.field private static final TOUCH_MODE_IDLE:I
.field private mHasThumbTint:Z
.field private mHasThumbTintMode:Z
.field private mHasTrackTint:Z
.field private mHasTrackTintMode:Z
.field private mMinFlingVelocity:I
.field private mOffLayout:Landroid/text/Layout;
.field private mOnLayout:Landroid/text/Layout;
.field  mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
.field private mShowText:Z
.field private mSplitTrack:Z
.field private mSwitchBottom:I
.field private mSwitchHeight:I
.field private mSwitchLeft:I
.field private mSwitchMinWidth:I
.field private mSwitchPadding:I
.field private mSwitchRight:I
.field private mSwitchTop:I
.field private mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;
.field private mSwitchWidth:I
.field private final mTempRect:Landroid/graphics/Rect;
.field private mTextColors:Landroid/content/res/ColorStateList;
.field private mTextOff:Ljava/lang/CharSequence;
.field private mTextOn:Ljava/lang/CharSequence;
.field private mTextPaint:Landroid/text/TextPaint;
.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;
.field private mThumbPosition:F
.field private mThumbTextPadding:I
.field private mThumbTintList:Landroid/content/res/ColorStateList;
.field private mThumbTintMode:Landroid/graphics/PorterDuff$Mode;
.field private mThumbWidth:I
.field private mTouchMode:I
.field private mTouchSlop:I
.field private mTouchX:F
.field private mTouchY:F
.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;
.field private mTrackTintList:Landroid/content/res/ColorStateList;
.field private mTrackTintMode:Landroid/graphics/PorterDuff$Mode;
.field private mVelocityTracker:Landroid/view/VelocityTracker;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x10100a0
aput v2, v0, v1
sput-object v0, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Landroid/support/v7/appcompat/R$attr;->switchStyle:I
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SwitchCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 14
invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v8, 0x0
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;
const/4 v8, 0x0
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;
const/4 v8, 0x0
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z
const/4 v8, 0x0
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z
const/4 v8, 0x0
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;
const/4 v8, 0x0
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;
const/4 v8, 0x0
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z
const/4 v8, 0x0
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v8
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;
new-instance v8, Landroid/graphics/Rect;
invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;
new-instance v8, Landroid/text/TextPaint;
const/4 v9, 0x1
invoke-direct {v8, v9}, Landroid/text/TextPaint;-><init>(I)V
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getResources()Landroid/content/res/Resources;
move-result-object v3
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v9
iget v9, v9, Landroid/util/DisplayMetrics;->density:F
iput v9, v8, Landroid/text/TextPaint;->density:F
sget-object v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat:[I
const/4 v9, 0x0
invoke-static {p1, p2, v8, p3, v9}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;
move-result-object v0
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_thumb:I
invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v8
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v8, :cond_56
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_56
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_track:I
invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v8
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v8, :cond_67
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v8, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_67
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOn:I
invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v8
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_android_textOff:I
invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v8
iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_showText:I
const/4 v9, 0x1
invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z
move-result v8
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTextPadding:I
const/4 v9, 0x0
invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I
move-result v8
iput v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchMinWidth:I
const/4 v9, 0x0
invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I
move-result v8
iput v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchPadding:I
const/4 v9, 0x0
invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I
move-result v8
iput v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_splitTrack:I
const/4 v9, 0x0
invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z
move-result v8
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTint:I
invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v4
if-eqz v4, :cond_b1
iput-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;
const/4 v8, 0x1
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z
:cond_b1
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_thumbTintMode:I
const/4 v9, -0x1
invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v8
const/4 v9, 0x0
invoke-static {v8, v9}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
move-result-object v5
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;
if-eq v8, v5, :cond_c6
iput-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;
const/4 v8, 0x1
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z
:cond_c6
iget-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z
if-nez v8, :cond_ce
iget-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z
if-eqz v8, :cond_d1
:cond_ce
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V
:cond_d1
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_trackTint:I
invoke-virtual {v0, v8}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v6
if-eqz v6, :cond_de
iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;
const/4 v8, 0x1
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z
:cond_de
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_trackTintMode:I
const/4 v9, -0x1
invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v8
const/4 v9, 0x0
invoke-static {v8, v9}, Landroid/support/v7/widget/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
move-result-object v7
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;
if-eq v8, v7, :cond_f3
iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;
const/4 v8, 0x1
iput-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z
:cond_f3
iget-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z
if-nez v8, :cond_fb
iget-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z
if-eqz v8, :cond_fe
:cond_fb
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V
:cond_fe
sget v8, Landroid/support/v7/appcompat/R$styleable;->SwitchCompat_switchTextAppearance:I
const/4 v9, 0x0
invoke-virtual {v0, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->getResourceId(II)I
move-result v1
if-eqz v1, :cond_10a
invoke-virtual {p0, p1, v1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTextAppearance(Landroid/content/Context;I)V
:cond_10a
invoke-virtual {v0}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v2
invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v8
iput v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I
invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
move-result v8
iput v8, p0, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->refreshDrawableState()V
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z
move-result v8
invoke-virtual {p0, v8}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V
return-void
.end method
.method private animateThumbToCheckedState(Z)V
.registers 6
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
if-eqz v0, :cond_7
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V
:cond_7
new-instance v1, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F
if-eqz p1, :cond_2b
const/high16 v0, 0x3f80
:goto_f
invoke-direct {v1, p0, v2, v0}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;-><init>(Landroid/support/v7/widget/SwitchCompat;FF)V
iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
const-wide/16 v2, 0xfa
invoke-virtual {v0, v2, v3}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->setDuration(J)V
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
new-instance v1, Landroid/support/v7/widget/SwitchCompat$1;
invoke-direct {v1, p0, p1}, Landroid/support/v7/widget/SwitchCompat$1;-><init>(Landroid/support/v7/widget/SwitchCompat;Z)V
invoke-virtual {v0, v1}, Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->startAnimation(Landroid/view/animation/Animation;)V
return-void
:cond_2b
const/4 v0, 0x0
goto :goto_f
.end method
.method private applyThumbTint()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_3b
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z
if-nez v0, :cond_c
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z
if-eqz v0, :cond_3b
:cond_c
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z
if-eqz v0, :cond_1f
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;
invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
:cond_1f
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;
invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
:cond_2a
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_3b
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_3b
return-void
.end method
.method private applyTrackTint()V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_3b
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z
if-nez v0, :cond_c
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z
if-eqz v0, :cond_3b
:cond_c
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z
if-eqz v0, :cond_1f
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;
invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
:cond_1f
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z
if-eqz v0, :cond_2a
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;
invoke-static {v0, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
:cond_2a
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_3b
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_3b
return-void
.end method
.method private cancelPositionAnimator()V
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
if-eqz v0, :cond_a
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->clearAnimation()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mPositionAnimator:Landroid/support/v7/widget/SwitchCompat$ThumbAnimation;
:cond_a
return-void
.end method
.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
.registers 4
invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V
invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z
invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
return-void
.end method
.method private static constrain(FFF)F
.registers 4
cmpg-float v0, p0, p1
if-gez v0, :cond_5
:goto_4
return p1
:cond_5
cmpl-float v0, p0, p2
if-lez v0, :cond_b
move p1, p2
goto :goto_4
:cond_b
move p1, p0
goto :goto_4
.end method
.method private getTargetCheckedState()Z
.registers 3
iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F
const/high16 v1, 0x3f00
cmpl-float v0, v0, v1
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method private getThumbOffset()I
.registers 4
invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v1
if-eqz v1, :cond_17
const/high16 v1, 0x3f80
iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F
sub-float v0, v1, v2
:goto_c
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I
move-result v1
int-to-float v1, v1
mul-float/2addr v1, v0
const/high16 v2, 0x3f00
add-float/2addr v1, v2
float-to-int v1, v1
return v1
:cond_17
iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F
goto :goto_c
.end method
.method private getThumbScrollRange()I
.registers 5
iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_2a
iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;
iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_27
iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-static {v2}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
move-result-object v0
:goto_15
iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I
iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I
sub-int/2addr v2, v3
iget v3, v1, Landroid/graphics/Rect;->left:I
sub-int/2addr v2, v3
iget v3, v1, Landroid/graphics/Rect;->right:I
sub-int/2addr v2, v3
iget v3, v0, Landroid/graphics/Rect;->left:I
sub-int/2addr v2, v3
iget v3, v0, Landroid/graphics/Rect;->right:I
sub-int/2addr v2, v3
:goto_26
return v2
:cond_27
sget-object v0, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;
goto :goto_15
:cond_2a
const/4 v2, 0x0
goto :goto_26
.end method
.method private hitThumb(FF)Z
.registers 11
const/4 v5, 0x0
iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-nez v6, :cond_6
:cond_5
:goto_5
return v5
:cond_6
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I
move-result v2
iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;
invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I
iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I
sub-int v4, v6, v7
iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I
add-int/2addr v6, v2
iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I
sub-int v1, v6, v7
iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I
add-int/2addr v6, v1
iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
add-int/2addr v6, v7
iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->right:I
add-int/2addr v6, v7
iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I
add-int v3, v6, v7
iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I
iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I
add-int v0, v6, v7
int-to-float v6, v1
cmpl-float v6, p1, v6
if-lez v6, :cond_5
int-to-float v6, v3
cmpg-float v6, p1, v6
if-gez v6, :cond_5
int-to-float v6, v4
cmpl-float v6, p2, v6
if-lez v6, :cond_5
int-to-float v6, v0
cmpg-float v6, p2, v6
if-gez v6, :cond_5
const/4 v5, 0x1
goto :goto_5
.end method
.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
.registers 10
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;
if-eqz v0, :cond_26
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;
invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
move-result-object v1
:goto_a
new-instance v0, Landroid/text/StaticLayout;
iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
if-eqz v1, :cond_28
iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
invoke-static {v1, v3}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
move-result v3
float-to-double v4, v3
invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D
move-result-wide v4
double-to-int v3, v4
:goto_1c
sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;
const/high16 v5, 0x3f80
const/4 v6, 0x0
const/4 v7, 0x1
invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
return-object v0
:cond_26
move-object v1, p1
goto :goto_a
:cond_28
const/4 v3, 0x0
goto :goto_1c
.end method
.method private setSwitchTypefaceByIndex(II)V
.registers 4
const/4 v0, 0x0
packed-switch p1, :pswitch_data_12
:goto_4
invoke-virtual {p0, v0, p2}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;I)V
return-void
:pswitch_8
sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;
goto :goto_4
:pswitch_b
sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;
goto :goto_4
:pswitch_e
sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;
goto :goto_4
nop
:pswitch_data_12
.packed-switch 0x1
:pswitch_8
:pswitch_b
:pswitch_e
.end packed-switch
.end method
.method private stopDrag(Landroid/view/MotionEvent;)V
.registers 11
const/4 v8, 0x0
const/4 v4, 0x1
const/4 v5, 0x0
iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v6
if-ne v6, v4, :cond_47
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z
move-result v6
if-eqz v6, :cond_47
move v0, v4
:goto_12
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z
move-result v2
if-eqz v0, :cond_58
iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;
const/16 v7, 0x3e8
invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V
iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F
move-result v3
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v6
iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mMinFlingVelocity:I
int-to-float v7, v7
cmpl-float v6, v6, v7
if-lez v6, :cond_53
invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v6
if-eqz v6, :cond_4b
cmpg-float v6, v3, v8
if-gez v6, :cond_49
move v1, v4
:goto_3b
if-eq v1, v2, :cond_40
invoke-virtual {p0, v5}, Landroid/support/v7/widget/SwitchCompat;->playSoundEffect(I)V
:cond_40
invoke-virtual {p0, v1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V
invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->cancelSuperTouch(Landroid/view/MotionEvent;)V
return-void
:cond_47
move v0, v5
goto :goto_12
:cond_49
move v1, v5
goto :goto_3b
:cond_4b
cmpl-float v6, v3, v8
if-lez v6, :cond_51
move v1, v4
goto :goto_3b
:cond_51
move v1, v5
goto :goto_3b
:cond_53
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z
move-result v1
goto :goto_3b
:cond_58
move v1, v2
goto :goto_3b
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 19
move-object/from16 v0, p0
iget-object v2, v0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget v4, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I
move-object/from16 v0, p0
iget v6, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I
move-object/from16 v0, p0
iget v5, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I
move-object/from16 v0, p0
iget v3, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I
invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbOffset()I
move-result v15
add-int v7, v4, v15
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v15, :cond_c1
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-static {v15}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
move-result-object v8
:goto_28
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v15, :cond_91
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget v15, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v7, v15
move v12, v4
move v14, v6
move v13, v5
move v11, v3
if-eqz v8, :cond_8a
iget v15, v8, Landroid/graphics/Rect;->left:I
iget v0, v2, Landroid/graphics/Rect;->left:I
move/from16 v16, v0
move/from16 v0, v16
if-le v15, v0, :cond_51
iget v15, v8, Landroid/graphics/Rect;->left:I
iget v0, v2, Landroid/graphics/Rect;->left:I
move/from16 v16, v0
sub-int v15, v15, v16
add-int/2addr v12, v15
:cond_51
iget v15, v8, Landroid/graphics/Rect;->top:I
iget v0, v2, Landroid/graphics/Rect;->top:I
move/from16 v16, v0
move/from16 v0, v16
if-le v15, v0, :cond_64
iget v15, v8, Landroid/graphics/Rect;->top:I
iget v0, v2, Landroid/graphics/Rect;->top:I
move/from16 v16, v0
sub-int v15, v15, v16
add-int/2addr v14, v15
:cond_64
iget v15, v8, Landroid/graphics/Rect;->right:I
iget v0, v2, Landroid/graphics/Rect;->right:I
move/from16 v16, v0
move/from16 v0, v16
if-le v15, v0, :cond_77
iget v15, v8, Landroid/graphics/Rect;->right:I
iget v0, v2, Landroid/graphics/Rect;->right:I
move/from16 v16, v0
sub-int v15, v15, v16
sub-int/2addr v13, v15
:cond_77
iget v15, v8, Landroid/graphics/Rect;->bottom:I
iget v0, v2, Landroid/graphics/Rect;->bottom:I
move/from16 v16, v0
move/from16 v0, v16
if-le v15, v0, :cond_8a
iget v15, v8, Landroid/graphics/Rect;->bottom:I
iget v0, v2, Landroid/graphics/Rect;->bottom:I
move/from16 v16, v0
sub-int v15, v15, v16
sub-int/2addr v11, v15
:cond_8a
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v15, v12, v14, v13, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_91
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v15, :cond_bd
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v15, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget v15, v2, Landroid/graphics/Rect;->left:I
sub-int v9, v7, v15
move-object/from16 v0, p0
iget v15, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I
add-int/2addr v15, v7
iget v0, v2, Landroid/graphics/Rect;->right:I
move/from16 v16, v0
add-int v10, v15, v16
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v15, v9, v6, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v1
if-eqz v1, :cond_bd
invoke-static {v1, v9, v6, v10, v3}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
:cond_bd
invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V
return-void
:cond_c1
sget-object v8, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;
goto/16 :goto_28
.end method
.method public drawableHotspotChanged(FF)V
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_9
invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V
:cond_9
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V
:cond_12
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-static {v0, p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V
:cond_1b
return-void
.end method
.method protected drawableStateChanged()V
.registers 6
invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I
move-result-object v1
const/4 v0, 0x0
iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_17
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v4
if-eqz v4, :cond_17
invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move-result v4
or-int/2addr v0, v4
:cond_17
iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_26
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v4
if-eqz v4, :cond_26
invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move-result v4
or-int/2addr v0, v4
:cond_26
if-eqz v0, :cond_2b
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V
:cond_2b
return-void
.end method
.method public getCompoundPaddingLeft()I
.registers 4
invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v1
if-nez v1, :cond_b
invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I
move-result v0
:cond_a
:goto_a
return v0
:cond_b
invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I
move-result v1
iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I
add-int v0, v1, v2
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_a
iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I
add-int/2addr v0, v1
goto :goto_a
.end method
.method public getCompoundPaddingRight()I
.registers 4
invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v1
if-eqz v1, :cond_b
invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I
move-result v0
:cond_a
:goto_a
return v0
:cond_b
invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I
move-result v1
iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I
add-int v0, v1, v2
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_a
iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I
add-int/2addr v0, v1
goto :goto_a
.end method
.method public getShowText()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z
return v0
.end method
.method public getSplitTrack()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z
return v0
.end method
.method public getSwitchMinWidth()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I
return v0
.end method
.method public getSwitchPadding()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I
return v0
.end method
.method public getTextOff()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getTextOn()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getThumbDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getThumbTextPadding()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I
return v0
.end method
.method public getThumbTintList()Landroid/content/res/ColorStateList;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;
return-object v0
.end method
.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;
return-object v0
.end method
.method public getTrackDrawable()Landroid/graphics/drawable/Drawable;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
return-object v0
.end method
.method public getTrackTintList()Landroid/content/res/ColorStateList;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;
return-object v0
.end method
.method public getTrackTintMode()Landroid/graphics/PorterDuff$Mode;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;
return-object v0
.end method
.method public jumpDrawablesToCurrentState()V
.registers 3
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xb
if-lt v0, v1, :cond_29
invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
:cond_12
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V
:cond_1b
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z
move-result v0
if-eqz v0, :cond_2a
const/high16 v0, 0x3f80
:goto_26
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V
:cond_29
return-void
:cond_2a
const/4 v0, 0x0
goto :goto_26
.end method
.method protected onCreateDrawableState(I)[I
.registers 4
add-int/lit8 v1, p1, 0x1
invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I
move-result-object v0
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z
move-result v1
if-eqz v1, :cond_11
sget-object v1, Landroid/support/v7/widget/SwitchCompat;->CHECKED_STATE_SET:[I
invoke-static {v0, v1}, Landroid/support/v7/widget/SwitchCompat;->mergeDrawableStates([I[I)[I
:cond_11
return-object v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 23
invoke-super/range {p0 .. p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V
move-object/from16 v0, p0
iget-object v8, v0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
move-object/from16 v17, v0
if-eqz v17, :cond_fc
move-object/from16 v0, v17
invoke-virtual {v0, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
:goto_14
move-object/from16 v0, p0
iget v14, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I
move-object/from16 v0, p0
iget v10, v0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I
iget v0, v8, Landroid/graphics/Rect;->top:I
move/from16 v18, v0
add-int v12, v14, v18
iget v0, v8, Landroid/graphics/Rect;->bottom:I
move/from16 v18, v0
sub-int v11, v10, v18
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v17, :cond_74
move-object/from16 v0, p0
iget-boolean v0, v0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z
move/from16 v18, v0
if-eqz v18, :cond_101
if-eqz v15, :cond_101
invoke-static {v15}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
move-result-object v6
invoke-virtual {v15, v8}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V
iget v0, v8, Landroid/graphics/Rect;->left:I
move/from16 v18, v0
iget v0, v6, Landroid/graphics/Rect;->left:I
move/from16 v19, v0
add-int v18, v18, v19
move/from16 v0, v18
iput v0, v8, Landroid/graphics/Rect;->left:I
iget v0, v8, Landroid/graphics/Rect;->right:I
move/from16 v18, v0
iget v0, v6, Landroid/graphics/Rect;->right:I
move/from16 v19, v0
sub-int v18, v18, v19
move/from16 v0, v18
iput v0, v8, Landroid/graphics/Rect;->right:I
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
move-result v9
sget-object v18, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;
move-object/from16 v0, p1
move-object/from16 v1, v18
invoke-virtual {v0, v8, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
move-object/from16 v0, p1
invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V
:cond_74
:goto_74
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
move-result v9
if-eqz v15, :cond_7f
move-object/from16 v0, p1
invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_7f
invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getTargetCheckedState()Z
move-result v18
if-eqz v18, :cond_10a
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;
:goto_89
if-eqz v13, :cond_f6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getDrawableState()[I
move-result-object v5
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;
move-object/from16 v18, v0
if-eqz v18, :cond_b0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
move-object/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;
move-object/from16 v19, v0
const/16 v20, 0x0
move-object/from16 v0, v19
move/from16 v1, v20
invoke-virtual {v0, v5, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I
move-result v19
invoke-virtual/range {v18 .. v19}, Landroid/text/TextPaint;->setColor(I)V
:cond_b0
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
move-object/from16 v18, v0
move-object/from16 v0, v18
iput-object v5, v0, Landroid/text/TextPaint;->drawableState:[I
if-eqz v15, :cond_110
invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v3
iget v0, v3, Landroid/graphics/Rect;->left:I
move/from16 v18, v0
iget v0, v3, Landroid/graphics/Rect;->right:I
move/from16 v19, v0
add-int v4, v18, v19
:goto_ca
div-int/lit8 v18, v4, 0x2
invoke-virtual {v13}, Landroid/text/Layout;->getWidth()I
move-result v19
div-int/lit8 v19, v19, 0x2
sub-int v7, v18, v19
add-int v18, v12, v11
div-int/lit8 v18, v18, 0x2
invoke-virtual {v13}, Landroid/text/Layout;->getHeight()I
move-result v19
div-int/lit8 v19, v19, 0x2
sub-int v16, v18, v19
int-to-float v0, v7
move/from16 v18, v0
move/from16 v0, v16
int-to-float v0, v0
move/from16 v19, v0
move-object/from16 v0, p1
move/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
move-object/from16 v0, p1
invoke-virtual {v13, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V
:cond_f6
move-object/from16 v0, p1
invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V
return-void
:cond_fc
invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V
goto/16 :goto_14
:cond_101
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto/16 :goto_74
:cond_10a
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;
goto/16 :goto_89
:cond_110
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I
move-result v4
goto :goto_ca
.end method
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
const-string v0, "android.widget.Switch"
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V
return-void
.end method
.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
.registers 7
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0xe
if-lt v3, v4, :cond_29
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
const-string v3, "android.widget.Switch"
invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z
move-result v3
if-eqz v3, :cond_2a
iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;
:goto_16
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_29
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_2d
invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V
:goto_29
:cond_29
return-void
:cond_2a
iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;
goto :goto_16
:cond_2d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x20
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V
goto :goto_29
.end method
.method protected onLayout(ZIIII)V
.registers 17
invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V
const/4 v1, 0x0
const/4 v2, 0x0
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v8, :cond_2e
iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v8, :cond_5a
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v8, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
:goto_14
iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-static {v8}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
move-result-object v0
const/4 v8, 0x0
iget v9, v0, Landroid/graphics/Rect;->left:I
iget v10, v7, Landroid/graphics/Rect;->left:I
sub-int/2addr v9, v10
invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I
move-result v1
const/4 v8, 0x0
iget v9, v0, Landroid/graphics/Rect;->right:I
iget v10, v7, Landroid/graphics/Rect;->right:I
sub-int/2addr v9, v10
invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I
move-result v2
:cond_2e
invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v8
if-eqz v8, :cond_5e
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingLeft()I
move-result v8
add-int v4, v8, v1
iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I
add-int/2addr v8, v4
sub-int/2addr v8, v1
sub-int v5, v8, v2
:goto_40
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getGravity()I
move-result v8
and-int/lit8 v8, v8, 0x70
sparse-switch v8, :sswitch_data_9c
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I
move-result v6
iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I
add-int v3, v6, v8
:goto_51
iput v4, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchLeft:I
iput v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTop:I
iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchBottom:I
iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchRight:I
return-void
:cond_5a
invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V
goto :goto_14
:cond_5e
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWidth()I
move-result v8
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingRight()I
move-result v9
sub-int/2addr v8, v9
sub-int v5, v8, v2
iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I
sub-int v8, v5, v8
add-int/2addr v8, v1
add-int v4, v8, v2
goto :goto_40
:sswitch_71
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingTop()I
move-result v8
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I
move-result v9
add-int/2addr v8, v9
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I
move-result v9
sub-int/2addr v8, v9
div-int/lit8 v8, v8, 0x2
iget v9, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I
div-int/lit8 v9, v9, 0x2
sub-int v6, v8, v9
iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I
add-int v3, v6, v8
goto :goto_51
:sswitch_8c
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getHeight()I
move-result v8
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getPaddingBottom()I
move-result v9
sub-int v3, v8, v9
iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I
sub-int v6, v3, v8
goto :goto_51
nop
:sswitch_data_9c
.sparse-switch
0x10 -> :sswitch_71
0x50 -> :sswitch_8c
.end sparse-switch
.end method
.method public onMeasure(II)V
.registers 16
iget-boolean v11, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z
if-eqz v11, :cond_1c
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;
if-nez v11, :cond_10
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;
invoke-direct {p0, v11}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
move-result-object v11
iput-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;
:cond_10
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;
if-nez v11, :cond_1c
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;
invoke-direct {p0, v11}, Landroid/support/v7/widget/SwitchCompat;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
move-result-object v11
iput-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;
:cond_1c
iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->mTempRect:Landroid/graphics/Rect;
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v11, :cond_a8
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v11
iget v12, v3, Landroid/graphics/Rect;->left:I
sub-int/2addr v11, v12
iget v12, v3, Landroid/graphics/Rect;->right:I
sub-int v9, v11, v12
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v8
:goto_3a
iget-boolean v11, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z
if-eqz v11, :cond_ab
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mOnLayout:Landroid/text/Layout;
invoke-virtual {v11}, Landroid/text/Layout;->getWidth()I
move-result v11
iget-object v12, p0, Landroid/support/v7/widget/SwitchCompat;->mOffLayout:Landroid/text/Layout;
invoke-virtual {v12}, Landroid/text/Layout;->getWidth()I
move-result v12
invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I
move-result v11
iget v12, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I
mul-int/lit8 v12, v12, 0x2
add-int v1, v11, v12
:goto_54
invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I
move-result v11
iput v11, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v11, :cond_ad
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v11, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v10
:goto_69
iget v4, v3, Landroid/graphics/Rect;->left:I
iget v5, v3, Landroid/graphics/Rect;->right:I
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v11, :cond_83
iget-object v11, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-static {v11}, Landroid/support/v7/widget/DrawableUtils;->getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
move-result-object v0
iget v11, v0, Landroid/graphics/Rect;->left:I
invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I
move-result v4
iget v11, v0, Landroid/graphics/Rect;->right:I
invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I
move-result v5
:cond_83
iget v11, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I
iget v12, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbWidth:I
mul-int/lit8 v12, v12, 0x2
add-int/2addr v12, v4
add-int/2addr v12, v5
invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I
move-result v7
invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I
move-result v6
iput v7, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchWidth:I
iput v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchHeight:I
invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getMeasuredHeight()I
move-result v2
if-ge v2, v6, :cond_a7
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I
move-result v11
invoke-virtual {p0, v11, v6}, Landroid/support/v7/widget/SwitchCompat;->setMeasuredDimension(II)V
:cond_a7
return-void
:cond_a8
const/4 v9, 0x0
const/4 v8, 0x0
goto :goto_3a
:cond_ab
const/4 v1, 0x0
goto :goto_54
:cond_ad
invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V
const/4 v10, 0x0
goto :goto_69
.end method
.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
.registers 4
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z
move-result v1
if-eqz v1, :cond_15
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;
:goto_b
if-eqz v0, :cond_14
invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;
move-result-object v1
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_14
return-void
:cond_15
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;
goto :goto_b
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 14
const/4 v11, 0x2
const/high16 v7, 0x3f80
const/4 v10, 0x0
const/4 v8, 0x1
iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I
move-result v0
packed-switch v0, :pswitch_data_ba
:cond_11
:pswitch_11
:goto_11
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v7
:goto_15
return v7
:pswitch_16
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v5
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v6
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isEnabled()Z
move-result v7
if-eqz v7, :cond_11
invoke-direct {p0, v5, v6}, Landroid/support/v7/widget/SwitchCompat;->hitThumb(FF)Z
move-result v7
if-eqz v7, :cond_11
iput v8, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I
iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F
iput v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F
goto :goto_11
:pswitch_31
iget v9, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I
packed-switch v9, :pswitch_data_c6
goto :goto_11
:pswitch_37
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v5
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v6
iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F
sub-float v7, v5, v7
invoke-static {v7}, Ljava/lang/Math;->abs(F)F
move-result v7
iget v9, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I
int-to-float v9, v9
cmpl-float v7, v7, v9
if-gtz v7, :cond_5d
iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F
sub-float v7, v6, v7
invoke-static {v7}, Ljava/lang/Math;->abs(F)F
move-result v7
iget v9, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchSlop:I
int-to-float v9, v9
cmpl-float v7, v7, v9
if-lez v7, :cond_11
:cond_5d
iput v11, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getParent()Landroid/view/ViewParent;
move-result-object v7
invoke-interface {v7, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F
iput v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchY:F
move v7, v8
goto :goto_15
:pswitch_6c
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v5
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->getThumbScrollRange()I
move-result v4
iget v9, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F
sub-float v3, v5, v9
if-eqz v4, :cond_99
int-to-float v9, v4
div-float v1, v3, v9
:goto_7d
invoke-static {p0}, Landroid/support/v7/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z
move-result v9
if-eqz v9, :cond_84
neg-float v1, v1
:cond_84
iget v9, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F
add-float/2addr v9, v1
invoke-static {v9, v10, v7}, Landroid/support/v7/widget/SwitchCompat;->constrain(FFF)F
move-result v2
iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F
cmpl-float v7, v2, v7
if-eqz v7, :cond_96
iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchX:F
invoke-virtual {p0, v2}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V
:cond_96
move v7, v8
goto/16 :goto_15
:cond_99
cmpl-float v9, v3, v10
if-lez v9, :cond_9f
move v1, v7
:goto_9e
goto :goto_7d
:cond_9f
const/high16 v1, -0x4080
goto :goto_9e
:pswitch_a2
iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I
if-ne v7, v11, :cond_af
invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->stopDrag(Landroid/view/MotionEvent;)V
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z
move v7, v8
goto/16 :goto_15
:cond_af
const/4 v7, 0x0
iput v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTouchMode:I
iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mVelocityTracker:Landroid/view/VelocityTracker;
invoke-virtual {v7}, Landroid/view/VelocityTracker;->clear()V
goto/16 :goto_11
nop
:pswitch_data_ba
.packed-switch 0x0
:pswitch_16
:pswitch_a2
:pswitch_31
:pswitch_a2
.end packed-switch
:pswitch_data_c6
.packed-switch 0x0
:pswitch_11
:pswitch_37
:pswitch_6c
.end packed-switch
.end method
.method public setChecked(Z)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z
move-result p1
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getWindowToken()Landroid/os/IBinder;
move-result-object v0
if-eqz v0, :cond_1d
invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isShown()Z
move-result v0
if-eqz v0, :cond_1d
invoke-direct {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->animateThumbToCheckedState(Z)V
:goto_1c
return-void
:cond_1d
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->cancelPositionAnimator()V
if-eqz p1, :cond_28
const/high16 v0, 0x3f80
:goto_24
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbPosition(F)V
goto :goto_1c
:cond_28
const/4 v0, 0x0
goto :goto_24
.end method
.method public setShowText(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z
if-eq v0, p1, :cond_9
iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mShowText:Z
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
:cond_9
return-void
.end method
.method public setSplitTrack(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSplitTrack:Z
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V
return-void
.end method
.method public setSwitchMinWidth(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchMinWidth:I
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
return-void
.end method
.method public setSwitchPadding(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchPadding:I
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
return-void
.end method
.method public setSwitchTextAppearance(Landroid/content/Context;I)V
.registers 13
const/4 v9, 0x0
const/4 v8, -0x1
sget-object v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance:[I
invoke-static {p1, p2, v6}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;I[I)Landroid/support/v7/widget/TintTypedArray;
move-result-object v1
sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textColor:I
invoke-virtual {v1, v6}, Landroid/support/v7/widget/TintTypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v2
if-eqz v2, :cond_54
iput-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;
:goto_12
sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textSize:I
invoke-virtual {v1, v6, v9}, Landroid/support/v7/widget/TintTypedArray;->getDimensionPixelSize(II)I
move-result v4
if-eqz v4, :cond_2e
int-to-float v6, v4
iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F
move-result v7
cmpl-float v6, v6, v7
if-eqz v6, :cond_2e
iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
int-to-float v7, v4
invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
:cond_2e
sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_typeface:I
invoke-virtual {v1, v6, v8}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v5
sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_android_textStyle:I
invoke-virtual {v1, v6, v8}, Landroid/support/v7/widget/TintTypedArray;->getInt(II)I
move-result v3
invoke-direct {p0, v5, v3}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypefaceByIndex(II)V
sget v6, Landroid/support/v7/appcompat/R$styleable;->TextAppearance_textAllCaps:I
invoke-virtual {v1, v6, v9}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z
move-result v0
if-eqz v0, :cond_5b
new-instance v6, Landroid/support/v7/text/AllCapsTransformationMethod;
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;
move-result-object v7
invoke-direct {v6, v7}, Landroid/support/v7/text/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V
iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;
:goto_50
invoke-virtual {v1}, Landroid/support/v7/widget/TintTypedArray;->recycle()V
return-void
:cond_54
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getTextColors()Landroid/content/res/ColorStateList;
move-result-object v6
iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mTextColors:Landroid/content/res/ColorStateList;
goto :goto_12
:cond_5b
const/4 v6, 0x0
iput-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->mSwitchTransformationMethod:Landroid/text/method/TransformationMethod;
goto :goto_50
.end method
.method public setSwitchTypeface(Landroid/graphics/Typeface;)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;
move-result-object v0
if-eq v0, p1, :cond_13
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V
:cond_13
return-void
.end method
.method public setSwitchTypeface(Landroid/graphics/Typeface;I)V
.registers 9
const/4 v3, 0x0
const/4 v2, 0x0
if-lez p2, :cond_36
if-nez p1, :cond_2d
invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;
move-result-object p1
:goto_a
invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V
if-eqz p1, :cond_32
invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I
move-result v1
:goto_13
xor-int/lit8 v4, v1, -0x1
and-int v0, p2, v4
iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
and-int/lit8 v5, v0, 0x1
if-eqz v5, :cond_1e
const/4 v2, 0x1
:cond_1e
invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V
iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
and-int/lit8 v2, v0, 0x2
if-eqz v2, :cond_34
const/high16 v2, -0x4180
:goto_29
invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V
:goto_2c
return-void
:cond_2d
invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
move-result-object p1
goto :goto_a
:cond_32
move v1, v2
goto :goto_13
:cond_34
move v2, v3
goto :goto_29
:cond_36
iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V
iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->mTextPaint:Landroid/text/TextPaint;
invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V
invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setSwitchTypeface(Landroid/graphics/Typeface;)V
goto :goto_2c
.end method
.method public setTextOff(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOff:Ljava/lang/CharSequence;
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
return-void
.end method
.method public setTextOn(Ljava/lang/CharSequence;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTextOn:Ljava/lang/CharSequence;
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
return-void
.end method
.method public setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_a
iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_11
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_11
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
return-void
.end method
.method  setThumbPosition(F)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbPosition:F
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->invalidate()V
return-void
.end method
.method public setThumbResource(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setThumbTextPadding(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTextPadding:I
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
return-void
.end method
.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
.registers 3
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintList:Landroid/content/res/ColorStateList;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTint:Z
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V
return-void
.end method
.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 3
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbTintMode:Landroid/graphics/PorterDuff$Mode;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasThumbTintMode:Z
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyThumbTint()V
return-void
.end method
.method public setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_a
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_a
iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_11
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_11
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->requestLayout()V
return-void
.end method
.method public setTrackResource(I)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v7/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setTrackTintList(Landroid/content/res/ColorStateList;)V
.registers 3
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintList:Landroid/content/res/ColorStateList;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTint:Z
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V
return-void
.end method
.method public setTrackTintMode(Landroid/graphics/PorterDuff$Mode;)V
.registers 3
.parameter
.end parameter
iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackTintMode:Landroid/graphics/PorterDuff$Mode;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->mHasTrackTintMode:Z
invoke-direct {p0}, Landroid/support/v7/widget/SwitchCompat;->applyTrackTint()V
return-void
.end method
.method public toggle()V
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z
move-result v0
if-nez v0, :cond_b
const/4 v0, 0x1
:goto_7
invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method
.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
.registers 3
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-nez v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eq p1, v0, :cond_e
iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->mTrackDrawable:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_10
:cond_e
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method