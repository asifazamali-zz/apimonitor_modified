.class  Lcom/example/asif/gpstracking/GPSTracker$2;
.super Ljava/lang/Object;
.source "GPSTracker.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/example/asif/gpstracking/GPSTracker;
.method constructor <init>(Lcom/example/asif/gpstracking/GPSTracker;)V
.registers 2
iput-object p1, p0, Lcom/example/asif/gpstracking/GPSTracker$2;->this$0:Lcom/example/asif/gpstracking/GPSTracker;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 3
invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
return-void
.end method