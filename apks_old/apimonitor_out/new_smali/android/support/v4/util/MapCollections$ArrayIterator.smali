.class final Landroid/support/v4/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"
.implements Ljava/util/Iterator;
.field  mCanRemove:Z
.field  mIndex:I
.field final mOffset:I
.field  mSize:I
.field final synthetic this$0:Landroid/support/v4/util/MapCollections;
.method constructor <init>(Landroid/support/v4/util/MapCollections;I)V
.registers 4
iput-object p1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z
iput p2, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mOffset:I
invoke-virtual {p1}, Landroid/support/v4/util/MapCollections;->colGetSize()I
move-result v0
iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I
return-void
.end method
.method public hasNext()Z
.registers 3
iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I
iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I
if-ge v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public next()Ljava/lang/Object;
.registers 5
iget-object v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v2, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I
iget v3, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mOffset:I
invoke-virtual {v1, v2, v3}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
move-result-object v0
iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z
return-object v0
.end method
.method public remove()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z
if-nez v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I
iget v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mSize:I
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mCanRemove:Z
iget-object v0, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v1, p0, Landroid/support/v4/util/MapCollections$ArrayIterator;->mIndex:I
invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V
return-void
.end method