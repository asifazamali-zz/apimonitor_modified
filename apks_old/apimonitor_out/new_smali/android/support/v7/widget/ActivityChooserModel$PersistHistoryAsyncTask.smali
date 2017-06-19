.class final Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;
.super Landroid/os/AsyncTask;
.source "ActivityChooserModel.java"
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserModel;
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserModel;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method public varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
.registers 20
const/4 v13, 0x0
aget-object v4, p1, v13
check-cast v4, Ljava/util/List;
const/4 v13, 0x1
aget-object v5, p1, v13
check-cast v5, Ljava/lang/String;
const/4 v3, 0x0
:try_start_b
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
iget-object v13, v13, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
const/4 v14, 0x0
invoke-static {v13, v5, v14}, Ldroidbox/android/content/Context;->openFileOutput(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/FileOutputStream;
:try_end_15
.catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_15} :catch_71
move-result-object v3
invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
move-result-object v12
const/4 v13, 0x0
:try_start_1b
invoke-interface {v12, v3, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
const-string v13, "UTF-8"
const/4 v14, 0x1
invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v14
invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
const/4 v13, 0x0
const-string v14, "historical-records"
invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v11
const/4 v6, 0x0
:goto_33
if-ge v6, v11, :cond_8c
const/4 v13, 0x0
invoke-interface {v4, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v10
check-cast v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
const/4 v13, 0x0
const-string v14, "historical-record"
invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
const/4 v13, 0x0
const-string v14, "activity"
iget-object v15, v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->activity:Landroid/content/ComponentName;
invoke-virtual {v15}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;
move-result-object v15
invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
const/4 v13, 0x0
const-string v14, "time"
iget-wide v0, v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->time:J
move-wide/from16 v16, v0
invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v15
invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
const/4 v13, 0x0
const-string v14, "weight"
iget v15, v10, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;->weight:F
invoke-static {v15}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v15
invoke-interface {v12, v13, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
const/4 v13, 0x0
const-string v14, "historical-record"
invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
:try_end_6e
.catchall {:try_start_1b .. :try_end_6e} :catchall_12f
.catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_6e} :catch_a3
.catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_6e} :catch_d1
.catch Ljava/io/IOException; {:try_start_1b .. :try_end_6e} :catch_ff
add-int/lit8 v6, v6, 0x1
goto :goto_33
:catch_71
move-exception v2
sget-object v13, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Error writing historical record file: "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14, v2}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v13, 0x0
:goto_8b
return-object v13
:cond_8c
const/4 v13, 0x0
:try_start_8d
const-string v14, "historical-records"
invoke-interface {v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
invoke-interface {v12}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
:try_end_95
.catchall {:try_start_8d .. :try_end_95} :catchall_12f
.catch Ljava/lang/IllegalArgumentException; {:try_start_8d .. :try_end_95} :catch_a3
.catch Ljava/lang/IllegalStateException; {:try_start_8d .. :try_end_95} :catch_d1
.catch Ljava/io/IOException; {:try_start_8d .. :try_end_95} :catch_ff
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
const/4 v14, 0x1
iput-boolean v14, v13, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
if-eqz v3, :cond_a1
:try_start_9e
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_a1
.catch Ljava/io/IOException; {:try_start_9e .. :try_end_a1} :catch_13d
:goto_a1
:cond_a1
const/4 v13, 0x0
goto :goto_8b
:catch_a3
move-exception v7
:try_start_a4
sget-object v13, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Error writing historical record file: "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
iget-object v15, v15, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14, v7}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_c2
.catchall {:try_start_a4 .. :try_end_c2} :catchall_12f
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
const/4 v14, 0x1
iput-boolean v14, v13, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
if-eqz v3, :cond_a1
:try_start_cb
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_ce
.catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf
goto :goto_a1
:catch_cf
move-exception v13
goto :goto_a1
:catch_d1
move-exception v9
:try_start_d2
sget-object v13, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Error writing historical record file: "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
iget-object v15, v15, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14, v9}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_f0
.catchall {:try_start_d2 .. :try_end_f0} :catchall_12f
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
const/4 v14, 0x1
iput-boolean v14, v13, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
if-eqz v3, :cond_a1
:try_start_f9
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_fc
.catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fc} :catch_fd
goto :goto_a1
:catch_fd
move-exception v13
goto :goto_a1
:catch_ff
move-exception v8
:try_start_100
sget-object v13, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "Error writing historical record file: "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
iget-object v15, v15, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14, v8}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_11e
.catchall {:try_start_100 .. :try_end_11e} :catchall_12f
move-object/from16 v0, p0
iget-object v13, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
const/4 v14, 0x1
iput-boolean v14, v13, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
if-eqz v3, :cond_a1
:try_start_127
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_12a
.catch Ljava/io/IOException; {:try_start_127 .. :try_end_12a} :catch_12c
goto/16 :goto_a1
:catch_12c
move-exception v13
goto/16 :goto_a1
:catchall_12f
move-exception v13
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;->this$0:Landroid/support/v7/widget/ActivityChooserModel;
const/4 v15, 0x1
iput-boolean v15, v14, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
if-eqz v3, :cond_13c
:try_start_139
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:try_end_13c
.catch Ljava/io/IOException; {:try_start_139 .. :try_end_13c} :catch_140
:cond_13c
:goto_13c
throw v13
:catch_13d
move-exception v13
goto/16 :goto_a1
:catch_140
move-exception v14
goto :goto_13c
.end method