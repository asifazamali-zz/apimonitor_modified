.class public Landroid/support/v4/util/ArrayMap;
.super Landroid/support/v4/util/SimpleArrayMap;
.source "ArrayMap.java"
.implements Ljava/util/Map;
.field  mCollections:Landroid/support/v4/util/MapCollections;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>(I)V
return-void
.end method
.method public constructor <init>(Landroid/support/v4/util/SimpleArrayMap;)V
.registers 2
invoke-direct {p0, p1}, Landroid/support/v4/util/SimpleArrayMap;-><init>(Landroid/support/v4/util/SimpleArrayMap;)V
return-void
.end method
.method private getCollection()Landroid/support/v4/util/MapCollections;
.registers 2
iget-object v0, p0, Landroid/support/v4/util/ArrayMap;->mCollections:Landroid/support/v4/util/MapCollections;
if-nez v0, :cond_b
new-instance v0, Landroid/support/v4/util/ArrayMap$1;
invoke-direct {v0, p0}, Landroid/support/v4/util/ArrayMap$1;-><init>(Landroid/support/v4/util/ArrayMap;)V
iput-object v0, p0, Landroid/support/v4/util/ArrayMap;->mCollections:Landroid/support/v4/util/MapCollections;
:cond_b
iget-object v0, p0, Landroid/support/v4/util/ArrayMap;->mCollections:Landroid/support/v4/util/MapCollections;
return-object v0
.end method
.method public containsAll(Ljava/util/Collection;)Z
.registers 3
invoke-static {p0, p1}, Landroid/support/v4/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public entrySet()Ljava/util/Set;
.registers 2
invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;->getCollection()Landroid/support/v4/util/MapCollections;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->getEntrySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public keySet()Ljava/util/Set;
.registers 2
invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;->getCollection()Landroid/support/v4/util/MapCollections;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->getKeySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public putAll(Ljava/util/Map;)V
.registers 6
iget v1, p0, Landroid/support/v4/util/ArrayMap;->mSize:I
invoke-interface {p1}, Ljava/util/Map;->size()I
move-result v2
add-int/2addr v1, v2
invoke-virtual {p0, v1}, Landroid/support/v4/util/ArrayMap;->ensureCapacity(I)V
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_12
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_2a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
invoke-virtual {p0, v2, v3}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_12
:cond_2a
return-void
.end method
.method public removeAll(Ljava/util/Collection;)Z
.registers 3
invoke-static {p0, p1}, Landroid/support/v4/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public retainAll(Ljava/util/Collection;)Z
.registers 3
invoke-static {p0, p1}, Landroid/support/v4/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public values()Ljava/util/Collection;
.registers 2
invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;->getCollection()Landroid/support/v4/util/MapCollections;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->getValues()Ljava/util/Collection;
move-result-object v0
return-object v0
.end method