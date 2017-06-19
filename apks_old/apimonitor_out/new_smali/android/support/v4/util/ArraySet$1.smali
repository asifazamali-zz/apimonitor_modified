.class  Landroid/support/v4/util/ArraySet$1;
.super Landroid/support/v4/util/MapCollections;
.source "ArraySet.java"
.field final synthetic this$0:Landroid/support/v4/util/ArraySet;
.method constructor <init>(Landroid/support/v4/util/ArraySet;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;
invoke-direct {p0}, Landroid/support/v4/util/MapCollections;-><init>()V
return-void
.end method
.method protected colClear()V
.registers 2
iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;
invoke-virtual {v0}, Landroid/support/v4/util/ArraySet;->clear()V
return-void
.end method
.method protected colGetEntry(II)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;
iget-object v0, v0, Landroid/support/v4/util/ArraySet;->mArray:[Ljava/lang/Object;
aget-object v0, v0, p1
return-object v0
.end method
.method protected colGetMap()Ljava/util/Map;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "not a map"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected colGetSize()I
.registers 2
iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;
iget v0, v0, Landroid/support/v4/util/ArraySet;->mSize:I
return v0
.end method
.method protected colIndexOfKey(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;
invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method protected colIndexOfValue(Ljava/lang/Object;)I
.registers 3
iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;
invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->indexOf(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;
invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method protected colRemoveAt(I)V
.registers 3
iget-object v0, p0, Landroid/support/v4/util/ArraySet$1;->this$0:Landroid/support/v4/util/ArraySet;
invoke-virtual {v0, p1}, Landroid/support/v4/util/ArraySet;->removeAt(I)Ljava/lang/Object;
return-void
.end method
.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "not a map"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method