.class public Landroid/support/v4/app/NotificationCompat$Action;
.super Landroid/support/v4/app/NotificationCompatBase$Action;
.source "NotificationCompat.java"
.field public static final FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
.field public actionIntent:Landroid/app/PendingIntent;
.field public icon:I
.field private mAllowGeneratedReplies:Z
.field final mExtras:Landroid/os/Bundle;
.field private final mRemoteInputs:[Landroid/support/v4/app/RemoteInput;
.field public title:Ljava/lang/CharSequence;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/app/NotificationCompat$Action$1;
invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$Action$1;-><init>()V
sput-object v0, Landroid/support/v4/app/NotificationCompat$Action;->FACTORY:Landroid/support/v4/app/NotificationCompatBase$Action$Factory;
return-void
.end method
.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
.registers 11
new-instance v4, Landroid/os/Bundle;
invoke-direct {v4}, Landroid/os/Bundle;-><init>()V
const/4 v5, 0x0
const/4 v6, 0x1
move-object v0, p0
move v1, p1
move-object v2, p2
move-object v3, p3
invoke-direct/range {v0 .. v6}, Landroid/support/v4/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Z)V
return-void
.end method
.method constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/RemoteInput;Z)V
.registers 8
invoke-direct {p0}, Landroid/support/v4/app/NotificationCompatBase$Action;-><init>()V
iput p1, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I
invoke-static {p2}, Landroid/support/v4/app/NotificationCompat$Builder;->limitCharSequenceLength(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v0
iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;
iput-object p3, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;
if-eqz p4, :cond_16
:goto_f
iput-object p4, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;
iput-object p5, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;
iput-boolean p6, p0, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z
return-void
:cond_16
new-instance p4, Landroid/os/Bundle;
invoke-direct {p4}, Landroid/os/Bundle;-><init>()V
goto :goto_f
.end method
.method public getActionIntent()Landroid/app/PendingIntent;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;
return-object v0
.end method
.method public getAllowGeneratedReplies()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mAllowGeneratedReplies:Z
return v0
.end method
.method public getExtras()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mExtras:Landroid/os/Bundle;
return-object v0
.end method
.method public getIcon()I
.registers 2
iget v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->icon:I
return v0
.end method
.method public getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->mRemoteInputs:[Landroid/support/v4/app/RemoteInput;
return-object v0
.end method
.method public bridge synthetic getRemoteInputs()[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.registers 2
invoke-virtual {p0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;
move-result-object v0
return-object v0
.end method
.method public getTitle()Ljava/lang/CharSequence;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$Action;->title:Ljava/lang/CharSequence;
return-object v0
.end method