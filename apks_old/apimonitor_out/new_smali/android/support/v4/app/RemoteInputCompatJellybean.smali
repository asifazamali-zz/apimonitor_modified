.class  Landroid/support/v4/app/RemoteInputCompatJellybean;
.super Ljava/lang/Object;
.source "RemoteInputCompatJellybean.java"
.field public static final EXTRA_RESULTS_DATA:Ljava/lang/String; = "android.remoteinput.resultsData"
.field private static final KEY_ALLOW_FREE_FORM_INPUT:Ljava/lang/String; = "allowFreeFormInput"
.field private static final KEY_CHOICES:Ljava/lang/String; = "choices"
.field private static final KEY_EXTRAS:Ljava/lang/String; = "extras"
.field private static final KEY_LABEL:Ljava/lang/String; = "label"
.field private static final KEY_RESULT_KEY:Ljava/lang/String; = "resultKey"
.field public static final RESULTS_CLIP_LABEL:Ljava/lang/String; = "android.remoteinput.results"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static addResultsToIntent([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
.registers 10
new-instance v3, Landroid/os/Bundle;
invoke-direct {v3}, Landroid/os/Bundle;-><init>()V
array-length v5, p0
const/4 v4, 0x0
:goto_7
if-ge v4, v5, :cond_23
aget-object v1, p0, v4
invoke-virtual {v1}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;
move-result-object v6
invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
instance-of v6, v2, Ljava/lang/CharSequence;
if-eqz v6, :cond_20
invoke-virtual {v1}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;
move-result-object v6
check-cast v2, Ljava/lang/CharSequence;
invoke-virtual {v3, v6, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
:cond_20
add-int/lit8 v4, v4, 0x1
goto :goto_7
:cond_23
new-instance v0, Landroid/content/Intent;
invoke-static {}, Ldroidbox/android/content/Intent;->droidbox_cons()V
invoke-direct {v0}, Landroid/content/Intent;-><init>()V
const-string v4, "android.remoteinput.resultsData"
invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
const-string v4, "android.remoteinput.results"
invoke-static {v4, v0}, Landroid/content/ClipData;->newIntent(Ljava/lang/CharSequence;Landroid/content/Intent;)Landroid/content/ClipData;
move-result-object v4
invoke-virtual {p1, v4}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V
return-void
.end method
.method static fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.registers 8
const-string v0, "resultKey"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, "label"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;
move-result-object v2
const-string v0, "choices"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;
move-result-object v3
const-string v0, "allowFreeFormInput"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v4
const-string v0, "extras"
invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v5
move-object v0, p1
invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
move-result-object v0
return-object v0
.end method
.method static fromBundleArray([Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.registers 5
if-nez p0, :cond_4
const/4 v1, 0x0
:cond_3
return-object v1
:cond_4
array-length v2, p0
invoke-interface {p1, v2}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;->newArray(I)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
move-result-object v1
const/4 v0, 0x0
:goto_a
array-length v2, p0
if-ge v0, v2, :cond_3
aget-object v2, p0, v0
invoke-static {v2, p1}, Landroid/support/v4/app/RemoteInputCompatJellybean;->fromBundle(Landroid/os/Bundle;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
move-result-object v2
aput-object v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
.registers 6
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;
move-result-object v0
if-nez v0, :cond_8
:cond_7
:goto_7
return-object v2
:cond_8
invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;
move-result-object v1
const-string v3, "text/vnd.android.intent"
invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_7
invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;
move-result-object v3
const-string v4, "android.remoteinput.results"
invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_7
const/4 v2, 0x0
invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;
move-result-object v2
invoke-virtual {v2}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v2
const-string v3, "android.remoteinput.resultsData"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Landroid/os/Bundle;
goto :goto_7
.end method
.method static toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "resultKey"
invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getResultKey()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "label"
invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getLabel()Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
const-string v1, "choices"
invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getChoices()[Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V
const-string v1, "allowFreeFormInput"
invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getAllowFreeFormInput()Z
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v1, "extras"
invoke-virtual {p0}, Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;->getExtras()Landroid/os/Bundle;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
return-object v0
.end method
.method static toBundleArray([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/os/Bundle;
.registers 4
if-nez p0, :cond_4
const/4 v0, 0x0
:cond_3
return-object v0
:cond_4
array-length v2, p0
new-array v0, v2, [Landroid/os/Bundle;
const/4 v1, 0x0
:goto_8
array-length v2, p0
if-ge v1, v2, :cond_3
aget-object v2, p0, v1
invoke-static {v2}, Landroid/support/v4/app/RemoteInputCompatJellybean;->toBundle(Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)Landroid/os/Bundle;
move-result-object v2
aput-object v2, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_8
.end method