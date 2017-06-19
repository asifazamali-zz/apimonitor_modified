.class  Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"
.field  mChangingConfigurations:I
.field protected mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
.field  mPathName:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
return-void
.end method
.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;
iget v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I
iput v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I
iget-object v0, p1, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
invoke-static {v0}, Landroid/support/graphics/drawable/PathParser;->deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
move-result-object v0
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
return-void
.end method
.method public NodesToString([Landroid/support/graphics/drawable/PathParser$PathDataNode;)Ljava/lang/String;
.registers 8
const-string v3, " "
const/4 v0, 0x0
:goto_3
array-length v4, p1
if-ge v0, v4, :cond_48
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
aget-object v5, p1, v0
iget-char v5, v5, Landroid/support/graphics/drawable/PathParser$PathDataNode;->type:C
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ":"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
aget-object v4, p1, v0
iget-object v2, v4, Landroid/support/graphics/drawable/PathParser$PathDataNode;->params:[F
const/4 v1, 0x0
:goto_26
array-length v4, v2
if-ge v1, v4, :cond_45
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
aget v5, v2, v1
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ","
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
add-int/lit8 v1, v1, 0x1
goto :goto_26
:cond_45
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_48
return-object v3
.end method
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
.registers 2
return-void
.end method
.method public canApplyTheme()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getPathData()[Landroid/support/graphics/drawable/PathParser$PathDataNode;
.registers 2
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
return-object v0
.end method
.method public getPathName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;
return-object v0
.end method
.method public isClipPath()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public printVPath(I)V
.registers 7
const-string v1, ""
const/4 v0, 0x0
:goto_3
if-ge v0, p1, :cond_1b
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "    "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_1b
const-string v2, "VectorDrawableCompat"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "current path is :"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " pathData is "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
invoke-virtual {p0, v4}, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->NodesToString([Landroid/support/graphics/drawable/PathParser$PathDataNode;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public setPathData([Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
.registers 3
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
invoke-static {v0, p1}, Landroid/support/graphics/drawable/PathParser;->canMorph([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)Z
move-result v0
if-nez v0, :cond_f
invoke-static {p1}, Landroid/support/graphics/drawable/PathParser;->deepCopyNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;)[Landroid/support/graphics/drawable/PathParser$PathDataNode;
move-result-object v0
iput-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
:goto_e
return-void
:cond_f
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
invoke-static {v0, p1}, Landroid/support/graphics/drawable/PathParser;->updateNodes([Landroid/support/graphics/drawable/PathParser$PathDataNode;[Landroid/support/graphics/drawable/PathParser$PathDataNode;)V
goto :goto_e
.end method
.method public toPath(Landroid/graphics/Path;)V
.registers 3
invoke-virtual {p1}, Landroid/graphics/Path;->reset()V
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Landroid/support/graphics/drawable/PathParser$PathDataNode;
invoke-static {v0, p1}, Landroid/support/graphics/drawable/PathParser$PathDataNode;->nodesToPath([Landroid/support/graphics/drawable/PathParser$PathDataNode;Landroid/graphics/Path;)V
:cond_c
return-void
.end method