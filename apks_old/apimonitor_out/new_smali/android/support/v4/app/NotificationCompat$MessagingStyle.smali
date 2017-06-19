.class public Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.super Landroid/support/v4/app/NotificationCompat$Style;
.source "NotificationCompat.java"
.field public static final MAXIMUM_RETAINED_MESSAGES:I = 0x19
.field  mConversationTitle:Ljava/lang/CharSequence;
.field  mMessages:Ljava/util/List;
.field  mUserDisplayName:Ljava/lang/CharSequence;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
return-void
.end method
.method public constructor <init>(Ljava/lang/CharSequence;)V
.registers 3
.parameter
.end parameter
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompat$Style;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;
return-void
.end method
.method public static extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.registers 5
sget-object v3, Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
invoke-interface {v3, p0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;
move-result-object v1
if-eqz v1, :cond_12
const-string v3, "android.selfDisplayName"
invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_12
const/4 v2, 0x0
:goto_11
return-object v2
:try_start_12
:cond_12
new-instance v2, Landroid/support/v4/app/NotificationCompat$MessagingStyle;
invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;-><init>()V
invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->restoreFromCompatExtras(Landroid/os/Bundle;)V
:try_end_1a
.catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_1a} :catch_1b
goto :goto_11
:catch_1b
move-exception v0
const/4 v2, 0x0
goto :goto_11
.end method
.method public addCompatExtras(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/NotificationCompat$Style;->addCompatExtras(Landroid/os/Bundle;)V
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;
if-eqz v0, :cond_e
const-string v0, "android.selfDisplayName"
iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
:cond_e
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;
if-eqz v0, :cond_19
const-string v0, "android.conversationTitle"
iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V
:cond_19
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_2c
const-string v0, "android.messages"
iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
invoke-static {v1}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getBundleArrayForMessages(Ljava/util/List;)[Landroid/os/Bundle;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
:cond_2c
return-void
.end method
.method public addMessage(Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.registers 4
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/16 v1, 0x19
if-le v0, v1, :cond_15
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
:cond_15
return-object p0
.end method
.method public addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.registers 7
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
new-instance v1, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;
invoke-direct {v1, p1, p2, p3, p4}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/16 v1, 0x19
if-le v0, v1, :cond_1a
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
:cond_1a
return-object p0
.end method
.method public getConversationTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;
return-object v0
.end method
.method public getMessages()Ljava/util/List;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
return-object v0
.end method
.method public getUserDisplayName()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;
return-object v0
.end method
.method protected restoreFromCompatExtras(Landroid/os/Bundle;)V
.registers 4
iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->clear()V
const-string v1, "android.selfDisplayName"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mUserDisplayName:Ljava/lang/CharSequence;
const-string v1, "android.conversationTitle"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;
const-string v1, "android.messages"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_23
invoke-static {v0}, Landroid/support/v4/app/NotificationCompat$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;
move-result-object v1
iput-object v1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mMessages:Ljava/util/List;
:cond_23
return-void
.end method
.method public setConversationTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$MessagingStyle;
.registers 2
iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$MessagingStyle;->mConversationTitle:Ljava/lang/CharSequence;
return-object p0
.end method