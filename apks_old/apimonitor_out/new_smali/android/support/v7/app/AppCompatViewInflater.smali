.class  Landroid/support/v7/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"
.field private static final sClassPrefixList:[Ljava/lang/String;
.field private static final sConstructorMap:Ljava/util/Map;
.field private static final sConstructorSignature:[Ljava/lang/Class;
.field private static final sOnClickAttrs:[I
.field private final mConstructorArgs:[Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v4, [Ljava/lang/Class;
const-class v1, Landroid/content/Context;
aput-object v1, v0, v2
const-class v1, Landroid/util/AttributeSet;
aput-object v1, v0, v3
sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;
new-array v0, v3, [I
const v1, 0x101026f
aput v1, v0, v2
sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const-string v1, "android.widget."
aput-object v1, v0, v2
const-string v1, "android.view."
aput-object v1, v0, v3
const-string v1, "android.webkit."
aput-object v1, v0, v4
sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;
new-instance v0, Landroid/support/v4/util/ArrayMap;
invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V
sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
iput-object v0, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
return-void
.end method
.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
.registers 8
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
instance-of v3, v1, Landroid/content/ContextWrapper;
if-eqz v3, :cond_14
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v4, 0xf
if-lt v3, v4, :cond_15
invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z
move-result v3
if-nez v3, :cond_15
:goto_14
:cond_14
return-void
:cond_15
sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I
invoke-virtual {v1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v3, 0x0
invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_2a
new-instance v3, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
invoke-direct {v3, p1, v2}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V
invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_2a
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
goto :goto_14
.end method
.method private createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.registers 9
sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;
invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/reflect/Constructor;
if-nez v1, :cond_36
:try_start_a
invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v4
if-eqz p3, :cond_43
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:goto_21
invoke-virtual {v4, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v3
const-class v4, Landroid/view/View;
invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v0
sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;
invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
sget-object v3, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;
invoke-interface {v3, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_36
const/4 v3, 0x1
invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/View;
:try_end_42
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_42} :catch_45
:goto_42
return-object v3
:cond_43
move-object v3, p2
goto :goto_21
:catch_45
move-exception v2
const/4 v3, 0x0
goto :goto_42
.end method
.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 12
const/4 v7, 0x1
const/4 v6, 0x0
const/4 v3, 0x0
const-string v4, "view"
invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_11
const-string v4, "class"
invoke-interface {p3, v3, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object p2
:cond_11
:try_start_11
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
const/4 v5, 0x1
aput-object p3, v4, v5
const/4 v4, -0x1
const/16 v5, 0x2e
invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(I)I
move-result v5
if-ne v4, v5, :cond_4a
const/4 v1, 0x0
:goto_25
sget-object v4, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;
array-length v4, v4
if-ge v1, v4, :cond_40
sget-object v4, Landroid/support/v7/app/AppCompatViewInflater;->sClassPrefixList:[Ljava/lang/String;
aget-object v4, v4, v1
invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
:try_end_31
.catchall {:try_start_11 .. :try_end_31} :catchall_63
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_31} :catch_58
move-result-object v2
if-eqz v2, :cond_3d
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v4, v6
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v4, v7
:goto_3c
return-object v2
:cond_3d
add-int/lit8 v1, v1, 0x1
goto :goto_25
:cond_40
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v4, v6
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v4, v7
move-object v2, v3
goto :goto_3c
:cond_4a
const/4 v4, 0x0
:try_start_4b
invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
:try_end_4e
.catchall {:try_start_4b .. :try_end_4e} :catchall_63
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_58
move-result-object v2
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v4, v6
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v4, v7
goto :goto_3c
:catch_58
move-exception v0
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v4, v6
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v4, v7
move-object v2, v3
goto :goto_3c
:catchall_63
move-exception v4
iget-object v5, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v5, v6
iget-object v5, p0, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;
aput-object v3, v5, v7
throw v4
.end method
.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
.registers 9
const/4 v4, 0x0
sget-object v3, Landroid/support/v7/appcompat/R$styleable;->View:[I
invoke-virtual {p0, p1, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v2, 0x0
if-eqz p2, :cond_10
sget v3, Landroid/support/v7/appcompat/R$styleable;->View_android_theme:I
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
:cond_10
if-eqz p3, :cond_23
if-nez v2, :cond_23
sget v3, Landroid/support/v7/appcompat/R$styleable;->View_theme:I
invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
if-eqz v2, :cond_23
const-string v3, "AppCompatViewInflater"
const-string v4, "app:theme is now deprecated. Please move to using android:theme instead."
invoke-static {v3, v4}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_23
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
if-eqz v2, :cond_3b
instance-of v3, p0, Landroid/support/v7/view/ContextThemeWrapper;
if-eqz v3, :cond_35
move-object v3, p0
check-cast v3, Landroid/support/v7/view/ContextThemeWrapper;
invoke-virtual {v3}, Landroid/support/v7/view/ContextThemeWrapper;->getThemeResId()I
move-result v3
if-eq v3, v2, :cond_3b
:cond_35
new-instance v1, Landroid/support/v7/view/ContextThemeWrapper;
invoke-direct {v1, p0, v2}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V
move-object p0, v1
:cond_3b
return-object p0
.end method
.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;
.registers 13
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
move-object v0, p3
if-eqz p5, :cond_9
if-eqz p1, :cond_9
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object p3
:cond_9
if-nez p6, :cond_d
if-eqz p7, :cond_11
:cond_d
invoke-static {p3, p4, p6, p7}, Landroid/support/v7/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
move-result-object p3
:cond_11
if-eqz p8, :cond_17
invoke-static {p3}, Landroid/support/v7/widget/TintContextWrapper;->wrap(Landroid/content/Context;)Landroid/content/Context;
move-result-object p3
:cond_17
const/4 v1, 0x0
const/4 v2, -0x1
invoke-virtual {p2}, Ljava/lang/String;->hashCode()I
move-result v3
sparse-switch v3, :sswitch_data_116
:goto_20
:cond_20
packed-switch v2, :pswitch_data_14c
:goto_23
if-nez v1, :cond_2b
if-eq v0, p3, :cond_2b
invoke-direct {p0, p3, p2, p4}, Landroid/support/v7/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v1
:cond_2b
if-eqz v1, :cond_30
invoke-direct {p0, v1, p4}, Landroid/support/v7/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
:cond_30
return-object v1
:sswitch_31
const-string v3, "TextView"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x0
goto :goto_20
:sswitch_3b
const-string v3, "ImageView"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x1
goto :goto_20
:sswitch_45
const-string v3, "Button"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x2
goto :goto_20
:sswitch_4f
const-string v3, "EditText"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x3
goto :goto_20
:sswitch_59
const-string v3, "Spinner"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x4
goto :goto_20
:sswitch_63
const-string v3, "ImageButton"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x5
goto :goto_20
:sswitch_6d
const-string v3, "CheckBox"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x6
goto :goto_20
:sswitch_77
const-string v3, "RadioButton"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x7
goto :goto_20
:sswitch_81
const-string v3, "CheckedTextView"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/16 v2, 0x8
goto :goto_20
:sswitch_8c
const-string v3, "AutoCompleteTextView"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/16 v2, 0x9
goto :goto_20
:sswitch_97
const-string v3, "MultiAutoCompleteTextView"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/16 v2, 0xa
goto/16 :goto_20
:sswitch_a3
const-string v3, "RatingBar"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/16 v2, 0xb
goto/16 :goto_20
:sswitch_af
const-string v3, "SeekBar"
invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
const/16 v2, 0xc
goto/16 :goto_20
:pswitch_bb
new-instance v1, Landroid/support/v7/widget/AppCompatTextView;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_c2
new-instance v1, Landroid/support/v7/widget/AppCompatImageView;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_c9
new-instance v1, Landroid/support/v7/widget/AppCompatButton;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_d0
new-instance v1, Landroid/support/v7/widget/AppCompatEditText;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_d7
new-instance v1, Landroid/support/v7/widget/AppCompatSpinner;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_de
new-instance v1, Landroid/support/v7/widget/AppCompatImageButton;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_e5
new-instance v1, Landroid/support/v7/widget/AppCompatCheckBox;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_ec
new-instance v1, Landroid/support/v7/widget/AppCompatRadioButton;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_f3
new-instance v1, Landroid/support/v7/widget/AppCompatCheckedTextView;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_fa
new-instance v1, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_101
new-instance v1, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_108
new-instance v1, Landroid/support/v7/widget/AppCompatRatingBar;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_10f
new-instance v1, Landroid/support/v7/widget/AppCompatSeekBar;
invoke-direct {v1, p3, p4}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto/16 :goto_23
:pswitch_data_14c
.packed-switch 0x0
:pswitch_bb
:pswitch_c2
:pswitch_c9
:pswitch_d0
:pswitch_d7
:pswitch_de
:pswitch_e5
:pswitch_ec
:pswitch_f3
:pswitch_fa
:pswitch_101
:pswitch_108
:pswitch_10f
.end packed-switch
:sswitch_data_116
.sparse-switch
-0x7404ceea -> :sswitch_a3
-0x56c015e7 -> :sswitch_81
-0x503aa7ad -> :sswitch_97
-0x37f7066e -> :sswitch_31
-0x37e04bb3 -> :sswitch_63
-0x274065a5 -> :sswitch_af
-0x1440b607 -> :sswitch_59
0x2e46a6ed -> :sswitch_77
0x431b5280 -> :sswitch_3b
0x5445f9ba -> :sswitch_8c
0x5f7507c3 -> :sswitch_6d
0x63577677 -> :sswitch_4f
0x77471352 -> :sswitch_45
.end sparse-switch
.end method