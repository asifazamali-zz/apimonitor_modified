.class  Landroid/support/v7/view/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"
.field private static final defaultGroupId:I = 0x0
.field private static final defaultItemCategory:I = 0x0
.field private static final defaultItemCheckable:I = 0x0
.field private static final defaultItemChecked:Z = false
.field private static final defaultItemEnabled:Z = true
.field private static final defaultItemId:I = 0x0
.field private static final defaultItemOrder:I = 0x0
.field private static final defaultItemVisible:Z = true
.field private groupCategory:I
.field private groupCheckable:I
.field private groupEnabled:Z
.field private groupId:I
.field private groupOrder:I
.field private groupVisible:Z
.field  itemActionProvider:Landroid/support/v4/view/ActionProvider;
.field private itemActionProviderClassName:Ljava/lang/String;
.field private itemActionViewClassName:Ljava/lang/String;
.field private itemActionViewLayout:I
.field private itemAdded:Z
.field private itemAlphabeticShortcut:C
.field private itemCategoryOrder:I
.field private itemCheckable:I
.field private itemChecked:Z
.field private itemEnabled:Z
.field private itemIconResId:I
.field private itemId:I
.field private itemListenerMethodName:Ljava/lang/String;
.field private itemNumericShortcut:C
.field private itemShowAsAction:I
.field private itemTitle:Ljava/lang/CharSequence;
.field private itemTitleCondensed:Ljava/lang/CharSequence;
.field private itemVisible:Z
.field private menu:Landroid/view/Menu;
.field final synthetic this$0:Landroid/support/v7/view/SupportMenuInflater;
.method public constructor <init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V
.registers 3
iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;
invoke-virtual {p0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V
return-void
.end method
.method private getShortcut(Ljava/lang/String;)C
.registers 3
const/4 v0, 0x0
if-nez p1, :cond_4
:goto_3
return v0
:cond_4
invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
goto :goto_3
.end method
.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 10
:try_start_0
iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;
iget-object v3, v3, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
const/4 v3, 0x1
invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19
move-result-object v3
:goto_18
return-object v3
:catch_19
move-exception v2
const-string v3, "SupportMenuInflater"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Cannot instantiate class: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v2}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v3, 0x0
goto :goto_18
.end method
.method private setItem(Landroid/view/MenuItem;)V
.registers 9
const/4 v4, 0x1
iget-boolean v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z
invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;
move-result-object v3
iget-boolean v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
move-result-object v3
iget-boolean v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;
move-result-object v5
iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I
if-lt v3, v4, :cond_52
move v3, v4
:goto_18
invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;
move-result-object v3
iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v3
iget v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
move-result-object v3
iget-char v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;
move-result-object v3
iget-char v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C
invoke-interface {v3, v5}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;
iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I
if-ltz v3, :cond_3c
iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I
invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V
:cond_3c
iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;
if-eqz v3, :cond_64
iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;
iget-object v3, v3, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z
move-result v3
if-eqz v3, :cond_54
new-instance v3, Ljava/lang/IllegalStateException;
const-string v4, "The android:onClick attribute cannot be used within a restricted context"
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_52
const/4 v3, 0x0
goto :goto_18
:cond_54
new-instance v3, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;
invoke-virtual {v5}, Landroid/support/v7/view/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;
move-result-object v5
iget-object v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;
invoke-direct {v3, v5, v6}, Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;
:cond_64
instance-of v3, p1, Landroid/support/v7/view/menu/MenuItemImpl;
if-eqz v3, :cond_a8
move-object v3, p1
check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;
move-object v2, v3
:goto_6c
iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I
const/4 v5, 0x2
if-lt v3, v5, :cond_7b
instance-of v3, p1, Landroid/support/v7/view/menu/MenuItemImpl;
if-eqz v3, :cond_aa
move-object v3, p1
check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;
invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V
:cond_7b
:goto_7b
const/4 v1, 0x0
iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;
if-eqz v3, :cond_92
iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;
sget-object v4, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;
iget-object v5, v5, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;
invoke-direct {p0, v3, v4, v5}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
const/4 v1, 0x1
:cond_92
iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I
if-lez v3, :cond_9e
if-nez v1, :cond_b5
iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I
invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
const/4 v1, 0x1
:goto_9e
:cond_9e
iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
if-eqz v3, :cond_a7
iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
invoke-static {p1, v3}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;
:cond_a7
return-void
:cond_a8
const/4 v2, 0x0
goto :goto_6c
:cond_aa
instance-of v3, p1, Landroid/support/v7/view/menu/MenuItemWrapperICS;
if-eqz v3, :cond_7b
move-object v3, p1
check-cast v3, Landroid/support/v7/view/menu/MenuItemWrapperICS;
invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V
goto :goto_7b
:cond_b5
const-string v3, "SupportMenuInflater"
const-string v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."
invoke-static {v3, v4}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_9e
.end method
.method public addItem()V
.registers 6
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z
iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;
iget v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I
iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I
iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I
iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;
invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V
return-void
.end method
.method public addSubMenuItem()Landroid/view/SubMenu;
.registers 7
const/4 v1, 0x1
iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z
iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;
iget v2, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I
iget v3, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I
iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I
iget-object v5, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;
invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
move-result-object v0
invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;
move-result-object v1
invoke-direct {p0, v1}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V
return-object v0
.end method
.method public hasAddedItem()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z
return v0
.end method
.method public readGroup(Landroid/util/AttributeSet;)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
iget-object v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;
iget-object v1, v1, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;
sget-object v2, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I
invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_id:I
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I
sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_menuCategory:I
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I
sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I
sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I
invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
iput v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I
sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_visible:I
invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z
sget v1, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_enabled:I
invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method public readItem(Landroid/util/AttributeSet;)V
.registers 10
const/4 v5, 0x1
const/4 v6, 0x0
iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;
iget-object v4, v4, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;
sget-object v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I
invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_id:I
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_menuCategory:I
iget v7, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I
invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_orderInCategory:I
iget v7, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I
invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v3
const/high16 v4, -0x1
and-int/2addr v4, v1
const v7, 0xffff
and-int/2addr v7, v3
or-int/2addr v4, v7
iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_title:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_titleCondensed:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_icon:I
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v4}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C
move-result v4
iput-char v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_numericShortcut:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {p0, v4}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C
move-result v4
iput-char v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v4
if-eqz v4, :cond_dd
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
if-eqz v4, :cond_db
move v4, v5
:goto_6f
iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I
:goto_71
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checked:I
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
iput-boolean v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_visible:I
iget-boolean v7, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z
invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
iput-boolean v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_enabled:I
iget-boolean v7, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z
invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v4
iput-boolean v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_showAsAction:I
const/4 v7, -0x1
invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v4
iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_onClick:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionLayout:I
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v4
iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionViewClass:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;
sget v4, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionProviderClass:I
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;
iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;
if-eqz v4, :cond_e2
move v2, v5
:goto_bb
if-eqz v2, :cond_e4
iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I
if-nez v4, :cond_e4
iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;
if-nez v4, :cond_e4
iget-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;
sget-object v5, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
iget-object v7, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;
iget-object v7, v7, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;
invoke-direct {p0, v4, v5, v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/support/v4/view/ActionProvider;
iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
:goto_d5
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
iput-boolean v6, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z
return-void
:cond_db
move v4, v6
goto :goto_6f
:cond_dd
iget v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I
iput v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I
goto :goto_71
:cond_e2
move v2, v6
goto :goto_bb
:cond_e4
if-eqz v2, :cond_ed
const-string v4, "SupportMenuInflater"
const-string v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:cond_ed
const/4 v4, 0x0
iput-object v4, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;
goto :goto_d5
.end method
.method public resetGroup()V
.registers 3
const/4 v1, 0x1
const/4 v0, 0x0
iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I
iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I
iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I
iput v0, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I
iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z
iput-boolean v1, p0, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z
return-void
.end method