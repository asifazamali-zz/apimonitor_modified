.class public abstract Landroid/support/v4/app/NotificationCompatBase$UnreadConversation;
.super Ljava/lang/Object;
.source "NotificationCompatBase.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method abstract getLatestTimestamp()J
.end method
.method abstract getMessages()[Ljava/lang/String;
.end method
.method abstract getParticipant()Ljava/lang/String;
.end method
.method abstract getParticipants()[Ljava/lang/String;
.end method
.method abstract getReadPendingIntent()Landroid/app/PendingIntent;
.end method
.method abstract getRemoteInput()Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.end method
.method abstract getReplyPendingIntent()Landroid/app/PendingIntent;
.end method