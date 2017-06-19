.class  Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;
.super Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V
return-void
.end method
.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
.registers 5
const/4 v2, 0x0
invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_9
iput-object v1, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mPathName:Ljava/lang/String;
:cond_9
const/4 v2, 0x1
invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_16
invoke-static {v0}, Landroid/support/graphics/drawable/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
move-result-object v2
iput-object v2, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
:cond_16
return-void
.end method
.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
.registers 8
const-string v2, "pathData"
invoke-static {p4, v2}, Landroid/support/graphics/drawable/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9
:goto_8
return-void
:cond_9
sget-object v2, Landroid/support/graphics/drawable/AndroidResources;->styleable_VectorDrawableClipPath:[I
invoke-static {p1, p3, p2, v2}, Landroid/support/graphics/drawable/VectorDrawableCommon;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/graphics/drawable/VectorDrawableCompat$VClipPath;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
goto :goto_8
.end method
.method public isClipPath()Z
.registers 2
const/4 v0, 0x1
return v0
.end method