.class  Landroid/support/v4/content/FileProvider$SimplePathStrategy;
.super Ljava/lang/Object;
.source "FileProvider.java"
.implements Landroid/support/v4/content/FileProvider$PathStrategy;
.field private final mAuthority:Ljava/lang/String;
.field private final mRoots:Ljava/util/HashMap;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;
iput-object p1, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;
return-void
.end method
.method public addRoot(Ljava/lang/String;Ljava/io/File;)V
.registers 7
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_e
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Name must not be empty"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:try_start_e
:cond_e
invoke-virtual {p2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
:try_end_11
.catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_18
move-result-object p2
iget-object v1, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;
invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:catch_18
move-exception v0
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Failed to resolve canonical path for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public getFileForUri(Landroid/net/Uri;)Ljava/io/File;
.registers 11
const/4 v7, 0x1
invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;
move-result-object v2
const/16 v6, 0x2f
invoke-virtual {v2, v6, v7}, Ljava/lang/String;->indexOf(II)I
move-result v4
invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
add-int/lit8 v6, v4, 0x1
invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iget-object v6, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;
invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/io/File;
if-nez v3, :cond_40
new-instance v6, Ljava/lang/IllegalArgumentException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Unable to find configured root for "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_40
new-instance v1, Ljava/io/File;
invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_start_45
invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;
:try_end_48
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_5f
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v6
invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_79
new-instance v6, Ljava/lang/SecurityException;
const-string v7, "Resolved path jumped beyond configured root"
invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V
throw v6
:catch_5f
move-exception v0
new-instance v6, Ljava/lang/IllegalArgumentException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Failed to resolve canonical path for "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_79
return-object v1
.end method
.method public getUriForFile(Ljava/io/File;)Landroid/net/Uri;
.registers 10
:try_start_0
invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_43
move-result-object v2
const/4 v1, 0x0
iget-object v5, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mRoots:Ljava/util/HashMap;
invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v5
invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_f
:goto_f
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_5d
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/Map$Entry;
invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/io/File;
invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_f
if-eqz v1, :cond_41
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v7
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/io/File;
invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/String;->length()I
move-result v5
if-le v7, v5, :cond_f
:cond_41
move-object v1, v3
goto :goto_f
:catch_43
move-exception v0
new-instance v5, Ljava/lang/IllegalArgumentException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Failed to resolve canonical path for "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_5d
if-nez v1, :cond_78
new-instance v5, Ljava/lang/IllegalArgumentException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "Failed to find configured root that contains "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_78
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/io/File;
invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v4
const-string v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_d3
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
:goto_92
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/lang/String;
invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const/16 v6, 0x2f
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "/"
invoke-static {v2, v6}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
new-instance v5, Landroid/net/Uri$Builder;
invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V
const-string v6, "content"
invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v5
iget-object v6, p0, Landroid/support/v4/content/FileProvider$SimplePathStrategy;->mAuthority:Ljava/lang/String;
invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v5
invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v5
return-object v5
:cond_d3
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
add-int/lit8 v5, v5, 0x1
invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
goto :goto_92
.end method