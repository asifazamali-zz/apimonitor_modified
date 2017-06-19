.class  Landroid/support/v4/provider/DocumentsContractApi21;
.super Ljava/lang/Object;
.source "DocumentsContractApi21.java"
.field private static final TAG:Ljava/lang/String; = "DocumentFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
.registers 3
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
:goto_5
:try_end_5
.catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8
:cond_5
return-void
:catch_6
move-exception v0
throw v0
:catch_8
move-exception v1
goto :goto_5
.end method
.method public static createDirectory(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
.registers 4
const-string v0, "vnd.android.document/directory"
invoke-static {p0, p1, v0, p2}, Landroid/support/v4/provider/DocumentsContractApi21;->createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static createFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {v0, p1, p2, p3}, Landroid/provider/DocumentsContract;->createDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static listFiles(Landroid/content/Context;Landroid/net/Uri;)[Landroid/net/Uri;
.registers 13
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {p1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v2}, Landroid/provider/DocumentsContract;->buildChildDocumentsUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
const/4 v6, 0x0
const/4 v2, 0x1
:try_start_13
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "document_id"
aput-object v4, v2, v3
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-static/range {v0 .. v5}, Ldroidbox/android/content/ContentResolver;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
:goto_21
invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
move-result v2
if-eqz v2, :cond_5d
const/4 v2, 0x0
invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-static {p1, v7}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v8
invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_33
.catchall {:try_start_13 .. :try_end_33} :catchall_61
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_33} :catch_34
goto :goto_21
:catch_34
move-exception v9
:try_start_35
const-string v2, "DocumentFile"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Failed query: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:try_end_4d
.catchall {:try_start_35 .. :try_end_4d} :catchall_61
invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi21;->closeQuietly(Ljava/lang/AutoCloseable;)V
:goto_50
invoke-virtual {v10}, Ljava/util/ArrayList;->size()I
move-result v2
new-array v2, v2, [Landroid/net/Uri;
invoke-virtual {v10, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v2
check-cast v2, [Landroid/net/Uri;
return-object v2
:cond_5d
invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi21;->closeQuietly(Ljava/lang/AutoCloseable;)V
goto :goto_50
:catchall_61
move-exception v2
invoke-static {v6}, Landroid/support/v4/provider/DocumentsContractApi21;->closeQuietly(Ljava/lang/AutoCloseable;)V
throw v2
.end method
.method public static prepareTreeUri(Landroid/net/Uri;)Landroid/net/Uri;
.registers 2
invoke-static {p0}, Landroid/provider/DocumentsContract;->getTreeDocumentId(Landroid/net/Uri;)Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Landroid/provider/DocumentsContract;->buildDocumentUriUsingTree(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method public static renameTo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-static {v0, p1, p2}, Landroid/provider/DocumentsContract;->renameDocument(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method