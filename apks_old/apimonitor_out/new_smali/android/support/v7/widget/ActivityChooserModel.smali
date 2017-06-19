.class  Landroid/support/v7/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"
.field static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"
.field static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"
.field static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"
.field static final DEBUG:Z = false
.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5
.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f
.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"
.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32
.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"
.field private static final INVALID_INDEX:I = -0x1
.field static final LOG_TAG:Ljava/lang/String; = null
.field static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"
.field static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"
.field private static final sDataModelRegistry:Ljava/util/Map;
.field private static final sRegistryLock:Ljava/lang/Object;
.field private final mActivities:Ljava/util/List;
.field private mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;
.field private mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;
.field  mCanReadHistoricalData:Z
.field final mContext:Landroid/content/Context;
.field private final mHistoricalRecords:Ljava/util/List;
.field private mHistoricalRecordsChanged:Z
.field final mHistoryFileName:Ljava/lang/String;
.field private mHistoryMaxSize:I
.field private final mInstanceLock:Ljava/lang/Object;
.field private mIntent:Landroid/content/Intent;
.field private mReadShareHistoryCalled:Z
.field private mReloadActivities:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Landroid/support/v7/widget/ActivityChooserModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
new-instance v0, Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;
invoke-direct {v0, p0}, Landroid/support/v7/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V
iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;
const/16 v0, 0x32
iput v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I
iput-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z
iput-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_57
const-string v0, ".xml"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_57
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".xml"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
:goto_56
return-void
:cond_57
iput-object p2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
goto :goto_56
.end method
.method private addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z
invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V
:cond_17
return v0
.end method
.method private ensureConsistentState()V
.registers 3
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z
move-result v0
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z
move-result v1
or-int/2addr v0, v1
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V
if-eqz v0, :cond_14
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z
invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V
:cond_14
return-void
.end method
.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/widget/ActivityChooserModel;
.registers 5
sget-object v2, Landroid/support/v7/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;
monitor-enter v2
:try_start_3
sget-object v1, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;
invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ActivityChooserModel;
if-nez v0, :cond_17
new-instance v0, Landroid/support/v7/widget/ActivityChooserModel;
invoke-direct {v0, p0, p1}, Landroid/support/v7/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V
sget-object v1, Landroid/support/v7/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;
invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_17
monitor-exit v2
return-object v0
:catchall_19
move-exception v1
monitor-exit v2
:try_end_1b
.catchall {:try_start_3 .. :try_end_1b} :catchall_19
throw v1
.end method
.method private loadActivitiesIfNeeded()Z
.registers 8
const/4 v4, 0x0
iget-boolean v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z
if-eqz v5, :cond_37
iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
if-eqz v5, :cond_37
iput-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z
iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->clear()V
iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v5
iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
invoke-virtual {v5, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v2
const/4 v0, 0x0
:goto_21
if-ge v0, v2, :cond_36
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/pm/ResolveInfo;
iget-object v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
new-instance v5, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
invoke-direct {v5, p0, v1}, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_36
const/4 v4, 0x1
:cond_37
return v4
.end method
.method private persistHistoricalDataIfNeeded()V
.registers 6
const/4 v4, 0x0
iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z
if-nez v0, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No preceding call to #readHistoricalData"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
if-nez v0, :cond_12
:goto_11
:cond_11
return-void
:cond_12
iput-boolean v4, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_11
new-instance v0, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;
invoke-direct {v0, p0}, Landroid/support/v7/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/support/v7/widget/ActivityChooserModel;)V
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
new-instance v2, Ljava/util/ArrayList;
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
aput-object v2, v1, v4
const/4 v2, 0x1
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v0, v1}, Landroid/support/v4/os/AsyncTaskCompat;->executeParallel(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_11
.end method
.method private pruneExcessiveHistoricalRecordsIfNeeded()V
.registers 5
iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
iget v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I
sub-int v1, v2, v3
if-gtz v1, :cond_d
:cond_c
return-void
:cond_d
const/4 v2, 0x1
iput-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
const/4 v0, 0x0
:goto_11
if-ge v0, v1, :cond_c
iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
const/4 v3, 0x0
invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
add-int/lit8 v0, v0, 0x1
goto :goto_11
.end method
.method private readHistoricalDataIfNeeded()Z
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
iget-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
if-eqz v2, :cond_1a
iget-boolean v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z
if-eqz v2, :cond_1a
iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_1a
iput-boolean v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mCanReadHistoricalData:Z
iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->readHistoricalDataImpl()V
:goto_19
return v0
:cond_1a
move v0, v1
goto :goto_19
.end method
.method private readHistoricalDataImpl()V
.registers 19
const/4 v3, 0x0
:try_start_1
move-object/from16 v0, p0
iget-object v15, v0, Landroid/support/v7/widget/ActivityChooserModel;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
move-object/from16 v16, v0
invoke-static/range {v15 .. v16}, Ldroidbox/android/content/Context;->openFileInput(Landroid/content/Context;Ljava/lang/String;)Ljava/io/FileInputStream;
:try_end_e
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_24
move-result-object v3
:try_start_f
invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
move-result-object v8
const-string v15, "UTF-8"
invoke-interface {v8, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
const/4 v12, 0x0
:goto_19
const/4 v15, 0x1
if-eq v12, v15, :cond_26
const/4 v15, 0x2
if-eq v12, v15, :cond_26
invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
move-result v12
goto :goto_19
:catch_24
move-exception v4
:goto_25
:cond_25
return-void
:cond_26
const-string v15, "historical-records"
invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v15
if-nez v15, :cond_63
new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;
const-string v16, "Share records file does not start with historical-records tag."
invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
throw v15
:try_end_3a
.catchall {:try_start_f .. :try_end_3a} :catchall_ea
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_3a} :catch_3a
.catch Ljava/io/IOException; {:try_start_f .. :try_end_3a} :catch_93
:catch_3a
move-exception v14
:try_start_3b
sget-object v15, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
const-string v17, "Error reading historical recrod file: "
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
move-object/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-static {v15, v0, v14}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_5b
.catchall {:try_start_3b .. :try_end_5b} :catchall_ea
if-eqz v3, :cond_25
:try_start_5d
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
:try_end_60
.catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61
goto :goto_25
:catch_61
move-exception v15
goto :goto_25
:cond_63
:try_start_63
move-object/from16 v0, p0
iget-object v5, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->clear()V
:goto_6a
:cond_6a
invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
:try_end_6d
.catchall {:try_start_63 .. :try_end_6d} :catchall_ea
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_63 .. :try_end_6d} :catch_3a
.catch Ljava/io/IOException; {:try_start_63 .. :try_end_6d} :catch_93
move-result v12
const/4 v15, 0x1
if-ne v12, v15, :cond_79
if-eqz v3, :cond_25
:try_start_73
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
:try_end_76
.catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
goto :goto_25
:catch_77
move-exception v15
goto :goto_25
:cond_79
const/4 v15, 0x3
if-eq v12, v15, :cond_6a
const/4 v15, 0x4
if-eq v12, v15, :cond_6a
:try_start_7f
invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v7
const-string v15, "historical-record"
invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v15
if-nez v15, :cond_be
new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;
const-string v16, "Share records file not well-formed."
invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V
throw v15
:catch_93
:try_end_93
.catchall {:try_start_7f .. :try_end_93} :catchall_ea
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7f .. :try_end_93} :catch_3a
.catch Ljava/io/IOException; {:try_start_7f .. :try_end_93} :catch_93
move-exception v6
:try_start_94
sget-object v15, Landroid/support/v7/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;
new-instance v16, Ljava/lang/StringBuilder;
invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V
const-string v17, "Error reading historical recrod file: "
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
move-object/from16 v0, p0
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;
move-object/from16 v17, v0
invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-static {v15, v0, v6}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_b4
.catchall {:try_start_94 .. :try_end_b4} :catchall_ea
if-eqz v3, :cond_25
:try_start_b6
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
:try_end_b9
.catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_bb
goto/16 :goto_25
:catch_bb
move-exception v15
goto/16 :goto_25
:cond_be
const/4 v15, 0x0
:try_start_bf
const-string v16, "activity"
move-object/from16 v0, v16
invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const/4 v15, 0x0
const-string v16, "time"
move-object/from16 v0, v16
invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v10
const/4 v15, 0x0
const-string v16, "weight"
move-object/from16 v0, v16
invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v13
new-instance v9, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
invoke-direct {v9, v2, v10, v11, v13}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V
invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_e9
.catchall {:try_start_bf .. :try_end_e9} :catchall_ea
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bf .. :try_end_e9} :catch_3a
.catch Ljava/io/IOException; {:try_start_bf .. :try_end_e9} :catch_93
goto :goto_6a
:catchall_ea
move-exception v15
if-eqz v3, :cond_f0
:try_start_ed
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
:cond_f0
:try_end_f0
.catch Ljava/io/IOException; {:try_start_ed .. :try_end_f0} :catch_f1
:goto_f0
throw v15
:catch_f1
move-exception v16
goto :goto_f0
.end method
.method private sortActivitiesIfNeeded()Z
.registers 5
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;
if-eqz v0, :cond_29
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
if-eqz v0, :cond_29
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_29
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_29
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
iget-object v2, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
iget-object v3, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v3
invoke-interface {v0, v1, v2, v3}, Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V
const/4 v0, 0x1
:goto_28
return v0
:cond_29
const/4 v0, 0x0
goto :goto_28
.end method
.method public chooseActivity(I)Landroid/content/Intent;
.registers 12
const/4 v6, 0x0
iget-object v7, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v7
:try_start_4
iget-object v8, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
if-nez v8, :cond_b
monitor-exit v7
move-object v0, v6
:goto_a
return-object v0
:cond_b
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V
iget-object v8, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
new-instance v3, Landroid/content/ComponentName;
iget-object v8, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
iget-object v9, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
iget-object v8, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
invoke-static {v8}, Ldroidbox/android/content/Intent;->droidbox_cons(Landroid/content/Intent;)V
invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
iget-object v8, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;
if-eqz v8, :cond_45
new-instance v1, Landroid/content/Intent;
invoke-static {v0}, Ldroidbox/android/content/Intent;->droidbox_cons(Landroid/content/Intent;)V
invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
iget-object v8, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;
invoke-interface {v8, p0, v1}, Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/support/v7/widget/ActivityChooserModel;Landroid/content/Intent;)Z
move-result v4
if-eqz v4, :cond_45
monitor-exit v7
move-object v0, v6
goto :goto_a
:cond_45
new-instance v5, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
const/high16 v6, 0x3f80
invoke-direct {v5, v3, v8, v9, v6}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V
invoke-direct {p0, v5}, Landroid/support/v7/widget/ActivityChooserModel;->addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
monitor-exit v7
goto :goto_a
:catchall_55
move-exception v6
monitor-exit v7
:try_end_57
.catchall {:try_start_4 .. :try_end_57} :catchall_55
throw v6
.end method
.method public getActivity(I)Landroid/content/pm/ResolveInfo;
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method public getActivityCount()I
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
monitor-exit v1
return v0
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_e
throw v0
.end method
.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
.registers 8
iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v5
:try_start_3
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
const/4 v3, 0x0
:goto_d
if-ge v3, v1, :cond_1e
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
iget-object v4, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
if-ne v4, p1, :cond_1b
monitor-exit v5
:goto_1a
return v3
:cond_1b
add-int/lit8 v3, v3, 0x1
goto :goto_d
:cond_1e
const/4 v3, -0x1
monitor-exit v5
goto :goto_1a
:catchall_21
move-exception v4
monitor-exit v5
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_21
throw v4
.end method
.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
const/4 v2, 0x0
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
iget-object v0, v0, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
monitor-exit v1
:goto_1a
return-object v0
:cond_1b
monitor-exit v1
const/4 v0, 0x0
goto :goto_1a
:catchall_1e
move-exception v0
monitor-exit v1
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_1e
throw v0
.end method
.method public getHistoryMaxSize()I
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I
monitor-exit v1
return v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public getHistorySize()I
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
monitor-exit v1
return v0
:catchall_e
move-exception v0
monitor-exit v1
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_e
throw v0
.end method
.method public getIntent()Landroid/content/Intent;
.registers 3
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
monitor-exit v1
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public setActivitySorter(Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;)V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;
if-ne v0, p1, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivitySorter:Landroid/support/v7/widget/ActivityChooserModel$ActivitySorter;
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V
:cond_14
monitor-exit v1
goto :goto_8
:catchall_16
move-exception v0
monitor-exit v1
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_16
throw v0
.end method
.method public setDefaultActivity(I)V
.registers 12
iget-object v6, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v6
:try_start_3
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V
iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
iget-object v5, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivities:Ljava/util/List;
const/4 v7, 0x0
invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;
if-eqz v3, :cond_41
iget v5, v3, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F
iget v7, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F
sub-float/2addr v5, v7
const/high16 v7, 0x40a0
add-float v4, v5, v7
:goto_22
new-instance v0, Landroid/content/ComponentName;
iget-object v5, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
iget-object v7, v2, Landroid/support/v7/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;
iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
invoke-direct {v1, v0, v8, v9, v4}, Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V
invoke-direct {p0, v1}, Landroid/support/v7/widget/ActivityChooserModel;->addHistoricalRecord(Landroid/support/v7/widget/ActivityChooserModel$HistoricalRecord;)Z
monitor-exit v6
return-void
:cond_41
const/high16 v4, 0x3f80
goto :goto_22
:catchall_44
move-exception v5
monitor-exit v6
:try_end_46
.catchall {:try_start_3 .. :try_end_46} :catchall_44
throw v5
.end method
.method public setHistoryMaxSize(I)V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I
if-ne v0, p1, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
iput p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mHistoryMaxSize:I
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p0}, Landroid/support/v7/widget/ActivityChooserModel;->notifyChanged()V
:cond_17
monitor-exit v1
goto :goto_8
:catchall_19
move-exception v0
monitor-exit v1
:try_end_1b
.catchall {:try_start_3 .. :try_end_1b} :catchall_19
throw v0
.end method
.method public setIntent(Landroid/content/Intent;)V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
if-ne v0, p1, :cond_9
monitor-exit v1
:goto_8
return-void
:cond_9
iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/ActivityChooserModel;->mReloadActivities:Z
invoke-direct {p0}, Landroid/support/v7/widget/ActivityChooserModel;->ensureConsistentState()V
monitor-exit v1
goto :goto_8
:catchall_13
move-exception v0
monitor-exit v1
:try_end_15
.catchall {:try_start_3 .. :try_end_15} :catchall_13
throw v0
.end method
.method public setOnChooseActivityListener(Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;)V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/support/v7/widget/ActivityChooserModel$OnChooseActivityListener;
monitor-exit v1
return-void
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method