.class  Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;
.super Landroid/view/LayoutInflater;
.source "AsyncLayoutInflater.java"
.field private static final sClassPrefixList:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "android.widget."
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "android.webkit."
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "android.app."
aput-object v2, v0, v1
sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;
return-void
.end method
.method constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
.registers 3
new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;
invoke-direct {v0, p1}, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;-><init>(Landroid/content/Context;)V
return-object v0
.end method
.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 9
sget-object v3, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;->sClassPrefixList:[Ljava/lang/String;
array-length v4, v3
const/4 v2, 0x0
:goto_4
if-ge v2, v4, :cond_13
aget-object v0, v3, v2
:try_start_8
invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/view/AsyncLayoutInflater$BasicInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
:try_end_b
.catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_b} :catch_f
move-result-object v1
if-eqz v1, :cond_10
:goto_e
return-object v1
:catch_f
move-exception v5
:cond_10
add-int/lit8 v2, v2, 0x1
goto :goto_4
:cond_13
invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
move-result-object v1
goto :goto_e
.end method