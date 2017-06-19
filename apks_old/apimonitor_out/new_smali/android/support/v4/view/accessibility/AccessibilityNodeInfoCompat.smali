.class public Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"
.field public static final ACTION_ACCESSIBILITY_FOCUS:I = 0x40
.field public static final ACTION_ARGUMENT_COLUMN_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_COLUMN_INT"
.field public static final ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN:Ljava/lang/String; = "ACTION_ARGUMENT_EXTEND_SELECTION_BOOLEAN"
.field public static final ACTION_ARGUMENT_HTML_ELEMENT_STRING:Ljava/lang/String; = "ACTION_ARGUMENT_HTML_ELEMENT_STRING"
.field public static final ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT:Ljava/lang/String; = "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"
.field public static final ACTION_ARGUMENT_PROGRESS_VALUE:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"
.field public static final ACTION_ARGUMENT_ROW_INT:Ljava/lang/String; = "android.view.accessibility.action.ARGUMENT_ROW_INT"
.field public static final ACTION_ARGUMENT_SELECTION_END_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_END_INT"
.field public static final ACTION_ARGUMENT_SELECTION_START_INT:Ljava/lang/String; = "ACTION_ARGUMENT_SELECTION_START_INT"
.field public static final ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE:Ljava/lang/String; = "ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE"
.field public static final ACTION_CLEAR_ACCESSIBILITY_FOCUS:I = 0x80
.field public static final ACTION_CLEAR_FOCUS:I = 0x2
.field public static final ACTION_CLEAR_SELECTION:I = 0x8
.field public static final ACTION_CLICK:I = 0x10
.field public static final ACTION_COLLAPSE:I = 0x80000
.field public static final ACTION_COPY:I = 0x4000
.field public static final ACTION_CUT:I = 0x10000
.field public static final ACTION_DISMISS:I = 0x100000
.field public static final ACTION_EXPAND:I = 0x40000
.field public static final ACTION_FOCUS:I = 0x1
.field public static final ACTION_LONG_CLICK:I = 0x20
.field public static final ACTION_NEXT_AT_MOVEMENT_GRANULARITY:I = 0x100
.field public static final ACTION_NEXT_HTML_ELEMENT:I = 0x400
.field public static final ACTION_PASTE:I = 0x8000
.field public static final ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY:I = 0x200
.field public static final ACTION_PREVIOUS_HTML_ELEMENT:I = 0x800
.field public static final ACTION_SCROLL_BACKWARD:I = 0x2000
.field public static final ACTION_SCROLL_FORWARD:I = 0x1000
.field public static final ACTION_SELECT:I = 0x4
.field public static final ACTION_SET_SELECTION:I = 0x20000
.field public static final ACTION_SET_TEXT:I = 0x200000
.field public static final FOCUS_ACCESSIBILITY:I = 0x2
.field public static final FOCUS_INPUT:I = 0x1
.field static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl; = null
.field public static final MOVEMENT_GRANULARITY_CHARACTER:I = 0x1
.field public static final MOVEMENT_GRANULARITY_LINE:I = 0x4
.field public static final MOVEMENT_GRANULARITY_PAGE:I = 0x10
.field public static final MOVEMENT_GRANULARITY_PARAGRAPH:I = 0x8
.field public static final MOVEMENT_GRANULARITY_WORD:I = 0x2
.field private final mInfo:Ljava/lang/Object;
.field public mParentVirtualDescendantId:I
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x18
if-lt v0, v1, :cond_e
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi24Impl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
:goto_d
return-void
:cond_e
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-lt v0, v1, :cond_1c
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi23Impl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
goto :goto_d
:cond_1c
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x16
if-lt v0, v1, :cond_2a
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi22Impl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
goto :goto_d
:cond_2a
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x15
if-lt v0, v1, :cond_38
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoApi21Impl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
goto :goto_d
:cond_38
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x13
if-lt v0, v1, :cond_46
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoKitKatImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
goto :goto_d
:cond_46
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x12
if-lt v0, v1, :cond_54
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr2Impl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
goto :goto_d
:cond_54
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x11
if-lt v0, v1, :cond_62
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanMr1Impl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
goto :goto_d
:cond_62
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_70
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
goto :goto_d
:cond_70
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_7e
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
goto :goto_d
:cond_7e
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
invoke-direct {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;-><init>()V
sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
goto :goto_d
.end method
.method public constructor <init>(Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I
iput-object p1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
return-void
.end method
.method private static getActionSymbolicName(I)Ljava/lang/String;
.registers 2
sparse-switch p0, :sswitch_data_3c
const-string v0, "ACTION_UNKNOWN"
:goto_5
return-object v0
:sswitch_6
const-string v0, "ACTION_FOCUS"
goto :goto_5
:sswitch_9
const-string v0, "ACTION_CLEAR_FOCUS"
goto :goto_5
:sswitch_c
const-string v0, "ACTION_SELECT"
goto :goto_5
:sswitch_f
const-string v0, "ACTION_CLEAR_SELECTION"
goto :goto_5
:sswitch_12
const-string v0, "ACTION_CLICK"
goto :goto_5
:sswitch_15
const-string v0, "ACTION_LONG_CLICK"
goto :goto_5
:sswitch_18
const-string v0, "ACTION_ACCESSIBILITY_FOCUS"
goto :goto_5
:sswitch_1b
const-string v0, "ACTION_CLEAR_ACCESSIBILITY_FOCUS"
goto :goto_5
:sswitch_1e
const-string v0, "ACTION_NEXT_AT_MOVEMENT_GRANULARITY"
goto :goto_5
:sswitch_21
const-string v0, "ACTION_PREVIOUS_AT_MOVEMENT_GRANULARITY"
goto :goto_5
:sswitch_24
const-string v0, "ACTION_NEXT_HTML_ELEMENT"
goto :goto_5
:sswitch_27
const-string v0, "ACTION_PREVIOUS_HTML_ELEMENT"
goto :goto_5
:sswitch_2a
const-string v0, "ACTION_SCROLL_FORWARD"
goto :goto_5
:sswitch_2d
const-string v0, "ACTION_SCROLL_BACKWARD"
goto :goto_5
:sswitch_30
const-string v0, "ACTION_CUT"
goto :goto_5
:sswitch_33
const-string v0, "ACTION_COPY"
goto :goto_5
:sswitch_36
const-string v0, "ACTION_PASTE"
goto :goto_5
:sswitch_39
const-string v0, "ACTION_SET_SELECTION"
goto :goto_5
:sswitch_data_3c
.sparse-switch
0x1 -> :sswitch_6
0x2 -> :sswitch_9
0x4 -> :sswitch_c
0x8 -> :sswitch_f
0x10 -> :sswitch_12
0x20 -> :sswitch_15
0x40 -> :sswitch_18
0x80 -> :sswitch_1b
0x100 -> :sswitch_1e
0x200 -> :sswitch_21
0x400 -> :sswitch_24
0x800 -> :sswitch_27
0x1000 -> :sswitch_2a
0x2000 -> :sswitch_2d
0x4000 -> :sswitch_33
0x8000 -> :sswitch_36
0x10000 -> :sswitch_30
0x20000 -> :sswitch_39
.end sparse-switch
.end method
.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 1
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
invoke-interface {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain()Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public static obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 2
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
invoke-interface {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Landroid/view/View;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public static obtain(Landroid/view/View;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->obtain(Landroid/view/View;I)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method static wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 2
if-eqz p0, :cond_8
new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
invoke-direct {v0, p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V
:goto_7
return-object v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public addAction(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addAction(Ljava/lang/Object;I)V
return-void
.end method
.method public addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;
invoke-interface {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addAction(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public addChild(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addChild(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public addChild(Landroid/view/View;I)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->addChild(Ljava/lang/Object;Landroid/view/View;I)V
return-void
.end method
.method public canOpenPopup()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->canOpenPopup(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-nez p1, :cond_9
move v1, v2
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_15
move v1, v2
goto :goto_4
:cond_15
move-object v0, p1
check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
if-nez v3, :cond_22
iget-object v3, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
if-eqz v3, :cond_4
move v1, v2
goto :goto_4
:cond_22
iget-object v3, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
iget-object v4, v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
move v1, v2
goto :goto_4
.end method
.method public findAccessibilityNodeInfosByText(Ljava/lang/String;)Ljava/util/List;
.registers 9
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
sget-object v5, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v6, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v5, v6, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v2
const/4 v0, 0x0
:goto_12
if-ge v0, v2, :cond_23
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
new-instance v5, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
invoke-direct {v5, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_23
return-object v4
.end method
.method public findAccessibilityNodeInfosByViewId(Ljava/lang/String;)Ljava/util/List;
.registers 7
sget-object v3, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v4, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v3, v4, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findAccessibilityNodeInfosByViewId(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
move-result-object v1
if-eqz v1, :cond_26
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_13
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_2a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
new-instance v4, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
invoke-direct {v4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;-><init>(Ljava/lang/Object;)V
invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_13
:cond_26
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v2
:cond_2a
return-object v2
.end method
.method public findFocus(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public focusSearch(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public getActionList()Ljava/util/List;
.registers 8
sget-object v5, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v6, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getActionList(Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
if-eqz v2, :cond_25
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
const/4 v3, 0x0
:goto_14
if-ge v3, v1, :cond_29
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
new-instance v5, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;
invoke-direct {v5, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(Ljava/lang/Object;)V
invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v3, v3, 0x1
goto :goto_14
:cond_25
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v4
:cond_29
return-object v4
.end method
.method public getActions()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getActions(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getBoundsInParent(Landroid/graphics/Rect;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
return-void
.end method
.method public getBoundsInScreen(Landroid/graphics/Rect;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
return-void
.end method
.method public getChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public getChildCount()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getChildCount(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getClassName()Ljava/lang/CharSequence;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getCollectionInfo()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
.registers 4
sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionInfo(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
return-object v1
:cond_c
new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;-><init>(Ljava/lang/Object;)V
goto :goto_b
.end method
.method public getCollectionItemInfo()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
.registers 4
sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getCollectionItemInfo(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
return-object v1
:cond_c
new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;-><init>(Ljava/lang/Object;)V
goto :goto_b
.end method
.method public getContentDescription()Ljava/lang/CharSequence;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getDrawingOrder()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getDrawingOrder(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getError()Ljava/lang/CharSequence;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getError(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getExtras()Landroid/os/Bundle;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getExtras(Ljava/lang/Object;)Landroid/os/Bundle;
move-result-object v0
return-object v0
.end method
.method public getInfo()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
return-object v0
.end method
.method public getInputType()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getInputType(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getLabelFor()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getLabelFor(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public getLabeledBy()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getLabeledBy(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public getLiveRegion()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getLiveRegion(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getMaxTextLength()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getMaxTextLength(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getMovementGranularities()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getMovementGranularities(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getPackageName()Ljava/lang/CharSequence;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getParent()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getParent(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public getRangeInfo()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
.registers 4
sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getRangeInfo(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
const/4 v1, 0x0
:goto_b
return-object v1
:cond_c
new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;
invoke-direct {v1, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;-><init>(Ljava/lang/Object;)V
goto :goto_b
.end method
.method public getRoleDescription()Ljava/lang/CharSequence;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getRoleDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getText()Ljava/lang/CharSequence;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
move-result-object v0
return-object v0
.end method
.method public getTextSelectionEnd()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTextSelectionEnd(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getTextSelectionStart()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTextSelectionStart(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public getTraversalAfter()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTraversalAfter(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public getTraversalBefore()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getTraversalBefore(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public getViewIdResourceName()Ljava/lang/String;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getViewIdResourceName(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getWindow()Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getWindow(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
move-result-object v0
return-object v0
.end method
.method public getWindowId()I
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->getWindowId(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
iget-object v0, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_5
.end method
.method public isAccessibilityFocused()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isAccessibilityFocused(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isCheckable()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isCheckable(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isChecked()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isChecked(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isClickable()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isClickable(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isContentInvalid()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isContentInvalid(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isContextClickable()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isContextClickable(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isDismissable()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isDismissable(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isEditable()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isEditable(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isEnabled()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isEnabled(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isFocusable()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isFocusable(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isFocused()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isFocused(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isImportantForAccessibility()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isImportantForAccessibility(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isLongClickable()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isLongClickable(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isMultiLine()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isMultiLine(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isPassword()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isPassword(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isScrollable()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isScrollable(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isSelected()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isSelected(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isVisibleToUser()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->isVisibleToUser(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public performAction(I)Z
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->performAction(Ljava/lang/Object;I)Z
move-result v0
return v0
.end method
.method public performAction(ILandroid/os/Bundle;)Z
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
move-result v0
return v0
.end method
.method public recycle()V
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->recycle(Ljava/lang/Object;)V
return-void
.end method
.method public refresh()Z
.registers 3
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->refresh(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public removeAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->mAction:Ljava/lang/Object;
invoke-interface {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->removeAction(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public removeChild(Landroid/view/View;)Z
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->removeChild(Ljava/lang/Object;Landroid/view/View;)Z
move-result v0
return v0
.end method
.method public removeChild(Landroid/view/View;I)Z
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->removeChild(Ljava/lang/Object;Landroid/view/View;I)Z
move-result v0
return v0
.end method
.method public setAccessibilityFocused(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setAccessibilityFocused(Ljava/lang/Object;Z)V
return-void
.end method
.method public setBoundsInParent(Landroid/graphics/Rect;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
return-void
.end method
.method public setBoundsInScreen(Landroid/graphics/Rect;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
return-void
.end method
.method public setCanOpenPopup(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCanOpenPopup(Ljava/lang/Object;Z)V
return-void
.end method
.method public setCheckable(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCheckable(Ljava/lang/Object;Z)V
return-void
.end method
.method public setChecked(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setChecked(Ljava/lang/Object;Z)V
return-void
.end method
.method public setClassName(Ljava/lang/CharSequence;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public setClickable(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setClickable(Ljava/lang/Object;Z)V
return-void
.end method
.method public setCollectionInfo(Ljava/lang/Object;)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;
iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCollectionInfo(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public setCollectionItemInfo(Ljava/lang/Object;)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
check-cast p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;
iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setCollectionItemInfo(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public setContentDescription(Ljava/lang/CharSequence;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public setContentInvalid(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setContentInvalid(Ljava/lang/Object;Z)V
return-void
.end method
.method public setContextClickable(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setContextClickable(Ljava/lang/Object;Z)V
return-void
.end method
.method public setDismissable(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setDismissable(Ljava/lang/Object;Z)V
return-void
.end method
.method public setDrawingOrder(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setDrawingOrder(Ljava/lang/Object;I)V
return-void
.end method
.method public setEditable(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setEditable(Ljava/lang/Object;Z)V
return-void
.end method
.method public setEnabled(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setEnabled(Ljava/lang/Object;Z)V
return-void
.end method
.method public setError(Ljava/lang/CharSequence;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setError(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public setFocusable(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setFocusable(Ljava/lang/Object;Z)V
return-void
.end method
.method public setFocused(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setFocused(Ljava/lang/Object;Z)V
return-void
.end method
.method public setImportantForAccessibility(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setImportantForAccessibility(Ljava/lang/Object;Z)V
return-void
.end method
.method public setInputType(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setInputType(Ljava/lang/Object;I)V
return-void
.end method
.method public setLabelFor(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabelFor(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public setLabelFor(Landroid/view/View;I)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabelFor(Ljava/lang/Object;Landroid/view/View;I)V
return-void
.end method
.method public setLabeledBy(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public setLabeledBy(Landroid/view/View;I)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLabeledBy(Ljava/lang/Object;Landroid/view/View;I)V
return-void
.end method
.method public setLiveRegion(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLiveRegion(Ljava/lang/Object;I)V
return-void
.end method
.method public setLongClickable(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setLongClickable(Ljava/lang/Object;Z)V
return-void
.end method
.method public setMaxTextLength(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setMaxTextLength(Ljava/lang/Object;I)V
return-void
.end method
.method public setMovementGranularities(I)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setMovementGranularities(Ljava/lang/Object;I)V
return-void
.end method
.method public setMultiLine(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setMultiLine(Ljava/lang/Object;Z)V
return-void
.end method
.method public setPackageName(Ljava/lang/CharSequence;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public setParent(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setParent(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public setParent(Landroid/view/View;I)V
.registers 5
iput p2, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mParentVirtualDescendantId:I
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setParent(Ljava/lang/Object;Landroid/view/View;I)V
return-void
.end method
.method public setPassword(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setPassword(Ljava/lang/Object;Z)V
return-void
.end method
.method public setRangeInfo(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
iget-object v2, p1, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$RangeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setRangeInfo(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public setRoleDescription(Ljava/lang/CharSequence;)V
.registers 4
.parameter
.end parameter
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setRoleDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public setScrollable(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setScrollable(Ljava/lang/Object;Z)V
return-void
.end method
.method public setSelected(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSelected(Ljava/lang/Object;Z)V
return-void
.end method
.method public setSource(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSource(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public setSource(Landroid/view/View;I)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setSource(Ljava/lang/Object;Landroid/view/View;I)V
return-void
.end method
.method public setText(Ljava/lang/CharSequence;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
return-void
.end method
.method public setTextSelection(II)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTextSelection(Ljava/lang/Object;II)V
return-void
.end method
.method public setTraversalAfter(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public setTraversalAfter(Landroid/view/View;I)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalAfter(Ljava/lang/Object;Landroid/view/View;I)V
return-void
.end method
.method public setTraversalBefore(Landroid/view/View;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;)V
return-void
.end method
.method public setTraversalBefore(Landroid/view/View;I)V
.registers 5
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setTraversalBefore(Ljava/lang/Object;Landroid/view/View;I)V
return-void
.end method
.method public setViewIdResourceName(Ljava/lang/String;)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setViewIdResourceName(Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public setVisibleToUser(Z)V
.registers 4
sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;
iget-object v1, p0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->mInfo:Ljava/lang/Object;
invoke-interface {v0, v1, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;->setVisibleToUser(Ljava/lang/Object;Z)V
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 7
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
invoke-virtual {p0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "; boundsInParent: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "; boundsInScreen: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v4, "; packageName: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v4, "; className: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v4, "; text: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v4, "; contentDescription: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
const-string v4, "; viewId: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getViewIdResourceName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v4, "; checkable: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isCheckable()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v4, "; checked: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v4, "; focusable: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v4, "; focused: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v4, "; selected: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v4, "; clickable: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v4, "; longClickable: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v4, "; enabled: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
const-string v4, "; password: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "; scrollable: "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v4, "; ["
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I
move-result v1
:goto_11c
:cond_11c
if-eqz v1, :cond_137
const/4 v4, 0x1
invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I
move-result v5
shl-int v0, v4, v5
xor-int/lit8 v4, v0, -0x1
and-int/2addr v1, v4
invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActionSymbolicName(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-eqz v1, :cond_11c
const-string v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_11c
:cond_137
const-string v4, "]"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
.end method