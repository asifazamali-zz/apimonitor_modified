.class public Landroid/support/v7/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"
.field static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class; = null
.field static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class; = null
.field static final LOG_TAG:Ljava/lang/String; = "SupportMenuInflater"
.field static final NO_ID:I = 0x0
.field private static final XML_GROUP:Ljava/lang/String; = "group"
.field private static final XML_ITEM:Ljava/lang/String; = "item"
.field private static final XML_MENU:Ljava/lang/String; = "menu"
.field final mActionProviderConstructorArguments:[Ljava/lang/Object;
.field final mActionViewConstructorArguments:[Ljava/lang/Object;
.field  mContext:Landroid/content/Context;
.field private mRealOwner:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Class;
const/4 v1, 0x0
const-class v2, Landroid/content/Context;
aput-object v2, v0, v1
sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
sget-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V
iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
aput-object p1, v0, v1
iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;
return-void
.end method
.method private findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
instance-of v0, p1, Landroid/app/Activity;
if-eqz v0, :cond_5
:goto_4
:cond_4
return-object p1
:cond_5
instance-of v0, p1, Landroid/content/ContextWrapper;
if-eqz v0, :cond_4
check-cast p1, Landroid/content/ContextWrapper;
invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p1
goto :goto_4
.end method
.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
.registers 14
new-instance v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;
invoke-direct {v2, p0, p3}, Landroid/support/v7/view/SupportMenuInflater$MenuState;-><init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
move-result v0
const/4 v1, 0x0
const/4 v6, 0x0
:cond_b
const/4 v7, 0x2
if-ne v0, v7, :cond_42
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v5
const-string v7, "menu"
invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_29
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
move-result v0
:goto_1e
const/4 v3, 0x0
:goto_1f
if-nez v3, :cond_cd
packed-switch v0, :pswitch_data_ce
:goto_24
:cond_24
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
move-result v0
goto :goto_1f
:cond_29
new-instance v7, Ljava/lang/RuntimeException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "Expecting menu, got "
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v7
:cond_42
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I
move-result v0
const/4 v7, 0x1
if-ne v0, v7, :cond_b
goto :goto_1e
:pswitch_4a
if-nez v1, :cond_24
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v5
const-string v7, "group"
invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_5c
invoke-virtual {v2, p2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->readGroup(Landroid/util/AttributeSet;)V
goto :goto_24
:cond_5c
const-string v7, "item"
invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_68
invoke-virtual {v2, p2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->readItem(Landroid/util/AttributeSet;)V
goto :goto_24
:cond_68
const-string v7, "menu"
invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_78
invoke-virtual {v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;
move-result-object v4
invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
goto :goto_24
:cond_78
const/4 v1, 0x1
move-object v6, v5
goto :goto_24
:pswitch_7b
invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
move-result-object v5
if-eqz v1, :cond_8a
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_8a
const/4 v1, 0x0
const/4 v6, 0x0
goto :goto_24
:cond_8a
const-string v7, "group"
invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_96
invoke-virtual {v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V
goto :goto_24
:cond_96
const-string v7, "item"
invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_ba
invoke-virtual {v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->hasAddedItem()Z
move-result v7
if-nez v7, :cond_24
iget-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
if-eqz v7, :cond_b5
iget-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
invoke-virtual {v7}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z
move-result v7
if-eqz v7, :cond_b5
invoke-virtual {v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;
goto/16 :goto_24
:cond_b5
invoke-virtual {v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addItem()V
goto/16 :goto_24
:cond_ba
const-string v7, "menu"
invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_24
const/4 v3, 0x1
goto/16 :goto_24
:pswitch_c5
new-instance v7, Ljava/lang/RuntimeException;
const-string v8, "Unexpected end of document"
invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v7
:cond_cd
return-void
:pswitch_data_ce
.packed-switch 0x1
:pswitch_c5
:pswitch_4a
:pswitch_7b
.end packed-switch
.end method
.method  getRealOwner()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;
if-nez v0, :cond_c
iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;
invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater;->findRealOwner(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;
:cond_c
iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;
return-object v0
.end method
.method public inflate(ILandroid/view/Menu;)V
.registers 8
instance-of v3, p2, Landroid/support/v4/internal/view/SupportMenu;
if-nez v3, :cond_8
invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
:goto_7
:cond_7
return-void
:cond_8
const/4 v2, 0x0
:try_start_9
iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
move-result-object v2
invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;
move-result-object v0
invoke-direct {p0, v2, v0, p2}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
:try_end_1a
.catchall {:try_start_9 .. :try_end_1a} :catchall_29
.catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1a} :catch_20
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_30
if-eqz v2, :cond_7
invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
goto :goto_7
:catch_20
move-exception v1
:try_start_21
new-instance v3, Landroid/view/InflateException;
const-string v4, "Error inflating menu XML"
invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:catchall_29
:try_end_29
.catchall {:try_start_21 .. :try_end_29} :catchall_29
move-exception v3
if-eqz v2, :cond_2f
invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
:cond_2f
throw v3
:catch_30
move-exception v1
:try_start_31
new-instance v3, Landroid/view/InflateException;
const-string v4, "Error inflating menu XML"
invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
:try_end_39
.catchall {:try_start_31 .. :try_end_39} :catchall_29
.end method