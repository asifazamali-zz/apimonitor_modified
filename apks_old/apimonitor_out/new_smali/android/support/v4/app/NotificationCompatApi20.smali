.class  Landroid/support/v4/app/NotificationCompatApi20;
.super Ljava/lang/Object;
.source "NotificationCompatApi20.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static addAction(Landroid/app/Notification$Builder;Landroid/support/v4/app/NotificationCompatBase$Action;)V
.registers 8
new-instance v0, Landroid/app/Notification$Action$Builder;
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I
move-result v3
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;
move-result-object v4
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;
move-result-object v5
invoke-direct {v0, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
move-result-object v3
if-eqz v3, :cond_2b
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
move-result-object v3
invoke-static {v3}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;
move-result-object v4
array-length v5, v4
const/4 v3, 0x0
:goto_21
if-ge v3, v5, :cond_2b
aget-object v2, v4, v3
invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
add-int/lit8 v3, v3, 0x1
goto :goto_21
:cond_2b
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
move-result-object v3
if-eqz v3, :cond_4e
new-instance v1, Landroid/os/Bundle;
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
move-result-object v3
invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
:goto_3a
const-string v3, "android.support.allowGeneratedReplies"
invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z
move-result v4
invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;
move-result-object v3
invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
return-void
:cond_4e
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
goto :goto_3a
.end method
.method public static getAction(Landroid/app/Notification;ILandroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
.registers 5
iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;
aget-object v0, v0, p1
invoke-static {v0, p2, p3}, Landroid/support/v4/app/NotificationCompatApi20;->getActionCompatFromAction(Landroid/app/Notification$Action;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
move-result-object v0
return-object v0
.end method
.method private static getActionCompatFromAction(Landroid/app/Notification$Action;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
.registers 10
invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;
move-result-object v0
invoke-static {v0, p2}, Landroid/support/v4/app/RemoteInputCompatApi20;->toCompat([Landroid/app/RemoteInput;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
move-result-object v5
invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "android.support.allowGeneratedReplies"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v6
iget v1, p0, Landroid/app/Notification$Action;->icon:I
iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;
iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;
invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;
move-result-object v4
move-object v0, p1
invoke-interface/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->build(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;Z)Landroid/support/v4/app/NotificationCompatBase$Action;
move-result-object v0
return-object v0
.end method
.method private static getActionFromActionCompat(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/app/Notification$Action;
.registers 9
new-instance v0, Landroid/app/Notification$Action$Builder;
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getIcon()I
move-result v5
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getTitle()Ljava/lang/CharSequence;
move-result-object v6
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getActionIntent()Landroid/app/PendingIntent;
move-result-object v7
invoke-direct {v0, v5, v6, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
move-result-object v5
if-eqz v5, :cond_42
new-instance v1, Landroid/os/Bundle;
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getExtras()Landroid/os/Bundle;
move-result-object v5
invoke-direct {v1, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
:goto_20
const-string v5, "android.support.allowGeneratedReplies"
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getAllowGeneratedReplies()Z
move-result v6
invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
move-result-object v3
if-eqz v3, :cond_48
invoke-static {v3}, Landroid/support/v4/app/RemoteInputCompatApi20;->fromCompat([Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;)[Landroid/app/RemoteInput;
move-result-object v4
array-length v6, v4
const/4 v5, 0x0
:goto_38
if-ge v5, v6, :cond_48
aget-object v2, v4, v5
invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;
add-int/lit8 v5, v5, 0x1
goto :goto_38
:cond_42
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
goto :goto_20
:cond_48
invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;
move-result-object v5
return-object v5
.end method
.method public static getActionsFromParcelableArrayList(Ljava/util/ArrayList;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)[Landroid/support/v4/app/NotificationCompatBase$Action;
.registers 7
if-nez p0, :cond_4
const/4 v1, 0x0
:cond_3
return-object v1
:cond_4
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v3
invoke-interface {p1, v3}, Landroid/support/v4/app/NotificationCompatBase$Action$Factory;->newArray(I)[Landroid/support/v4/app/NotificationCompatBase$Action;
move-result-object v1
const/4 v2, 0x0
:goto_d
array-length v3, v1
if-ge v2, v3, :cond_3
invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Notification$Action;
invoke-static {v0, p1, p2}, Landroid/support/v4/app/NotificationCompatApi20;->getActionCompatFromAction(Landroid/app/Notification$Action;Landroid/support/v4/app/NotificationCompatBase$Action$Factory;Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;)Landroid/support/v4/app/NotificationCompatBase$Action;
move-result-object v3
aput-object v3, v1, v2
add-int/lit8 v2, v2, 0x1
goto :goto_d
.end method
.method public static getGroup(Landroid/app/Notification;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getLocalOnly(Landroid/app/Notification;)Z
.registers 2
iget v0, p0, Landroid/app/Notification;->flags:I
and-int/lit16 v0, v0, 0x100
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompatBase$Action;)Ljava/util/ArrayList;
.registers 6
if-nez p0, :cond_4
const/4 v1, 0x0
:cond_3
return-object v1
:cond_4
new-instance v1, Ljava/util/ArrayList;
array-length v2, p0
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V
array-length v3, p0
const/4 v2, 0x0
:goto_c
if-ge v2, v3, :cond_3
aget-object v0, p0, v2
invoke-static {v0}, Landroid/support/v4/app/NotificationCompatApi20;->getActionFromActionCompat(Landroid/support/v4/app/NotificationCompatBase$Action;)Landroid/app/Notification$Action;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_c
.end method
.method public static getSortKey(Landroid/app/Notification;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static isGroupSummary(Landroid/app/Notification;)Z
.registers 2
iget v0, p0, Landroid/app/Notification;->flags:I
and-int/lit16 v0, v0, 0x200
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method