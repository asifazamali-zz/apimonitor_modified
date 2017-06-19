.class  Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"
.field  mChangingConfigurations:I
.field final mChildren:Ljava/util/ArrayList;
.field private mGroupName:Ljava/lang/String;
.field private final mLocalMatrix:Landroid/graphics/Matrix;
.field private mPivotX:F
.field private mPivotY:F
.field  mRotate:F
.field private mScaleX:F
.field private mScaleY:F
.field private final mStackedMatrix:Landroid/graphics/Matrix;
.field private mThemeAttrs:[I
.field private mTranslateX:F
.field private mTranslateY:F
.method public constructor <init>()V
.registers 4
const/high16 v2, 0x3f80
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
iput v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V
.registers 11
const/high16 v7, 0x3f80
const/4 v6, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;
iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
iput v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
iput v7, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
iput v6, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
const/4 v5, 0x0
iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;
iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
iget-object v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I
iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I
iget-object v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;
iput-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;
iget v5, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I
iput v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I
iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;
if-eqz v5, :cond_5d
iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;
invoke-virtual {p2, v5, p0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_5d
iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
iget-object v6, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V
iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;
const/4 v3, 0x0
:goto_67
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v5
if-ge v3, v5, :cond_b4
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
instance-of v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
if-eqz v5, :cond_85
move-object v2, v1
check-cast v2, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;
new-instance v6, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;
invoke-direct {v6, v2, p2}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;Landroid/support/v4/util/ArrayMap;)V
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_82
:cond_82
add-int/lit8 v3, v3, 0x1
goto :goto_67
:cond_85
const/4 v4, 0x0
instance-of v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
if-eqz v5, :cond_a0
new-instance v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
check-cast v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;
invoke-direct {v4, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VFullPath;)V
:goto_91
iget-object v5, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;
if-eqz v5, :cond_82
iget-object v5, v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;
invoke-virtual {p2, v5, v4}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_82
:cond_a0
instance-of v5, v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
if-eqz v5, :cond_ac
new-instance v4, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
check-cast v1, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
invoke-direct {v4, v1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V
goto :goto_91
:cond_ac
new-instance v5, Ljava/lang/IllegalStateException;
const-string v6, "Unknown object in the tree!"
invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v5
:cond_b4
return-void
.end method
.method static synthetic access$200(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
.registers 2
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;
return-object v0
.end method
.method static synthetic access$300(Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;)Landroid/graphics/Matrix;
.registers 2
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
return-object v0
.end method
.method private updateLocalMatrix()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
neg-float v1, v1
iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
neg-float v2, v2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
iget v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
add-float/2addr v1, v2
iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
add-float/2addr v2, v3
invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z
return-void
.end method
.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
.registers 7
const/4 v1, 0x0
iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mThemeAttrs:[I
const-string v1, "rotation"
const/4 v2, 0x5
iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
invoke-static {p1, p2, v1, v2, v3}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
move-result v1
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
const/4 v1, 0x1
iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v1
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
const/4 v1, 0x2
iget v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F
move-result v1
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
const-string v1, "scaleX"
const/4 v2, 0x3
iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
invoke-static {p1, p2, v1, v2, v3}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
move-result v1
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
const-string v1, "scaleY"
const/4 v2, 0x4
iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
invoke-static {p1, p2, v1, v2, v3}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
move-result v1
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
const-string v1, "translateX"
const/4 v2, 0x6
iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
invoke-static {p1, p2, v1, v2, v3}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
move-result v1
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
const-string v1, "translateY"
const/4 v2, 0x7
iget v3, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
invoke-static {p1, p2, v1, v2, v3}, Landroid/support/graphics/drawable/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F
move-result v1
iput v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
const/4 v1, 0x0
invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_55
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;
:cond_55
invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V
return-void
.end method
.method public getGroupName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mGroupName:Ljava/lang/String;
return-object v0
.end method
.method public getLocalMatrix()Landroid/graphics/Matrix;
.registers 2
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;
return-object v0
.end method
.method public getPivotX()F
.registers 2
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
return v0
.end method
.method public getPivotY()F
.registers 2
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
return v0
.end method
.method public getRotation()F
.registers 2
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
return v0
.end method
.method public getScaleX()F
.registers 2
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
return v0
.end method
.method public getScaleY()F
.registers 2
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
return v0
.end method
.method public getTranslateX()F
.registers 2
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
return v0
.end method
.method public getTranslateY()F
.registers 2
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
return v0
.end method
.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
.registers 7
sget-object v1, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableGroup:[I
invoke-static {p1, p3, p2, v1}, Landroid/support/graphics/drawable/VectorDrawableCommon;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-direct {p0, v0, p4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method public setPivotX(F)V
.registers 3
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
cmpl-float v0, p1, v0
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotX:F
invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V
:cond_b
return-void
.end method
.method public setPivotY(F)V
.registers 3
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
cmpl-float v0, p1, v0
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mPivotY:F
invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V
:cond_b
return-void
.end method
.method public setRotation(F)V
.registers 3
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
cmpl-float v0, p1, v0
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mRotate:F
invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V
:cond_b
return-void
.end method
.method public setScaleX(F)V
.registers 3
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
cmpl-float v0, p1, v0
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleX:F
invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V
:cond_b
return-void
.end method
.method public setScaleY(F)V
.registers 3
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
cmpl-float v0, p1, v0
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mScaleY:F
invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V
:cond_b
return-void
.end method
.method public setTranslateX(F)V
.registers 3
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
cmpl-float v0, p1, v0
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateX:F
invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V
:cond_b
return-void
.end method
.method public setTranslateY(F)V
.registers 3
iget v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
cmpl-float v0, p1, v0
if-eqz v0, :cond_b
iput p1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->mTranslateY:F
invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VGroup;->updateLocalMatrix()V
:cond_b
return-void
.end method