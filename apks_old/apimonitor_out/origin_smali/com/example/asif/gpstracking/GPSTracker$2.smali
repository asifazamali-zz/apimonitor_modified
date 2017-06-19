.class Lcom/example/asif/gpstracking/GPSTracker$2;
.super Ljava/lang/Object;
.source "GPSTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/example/asif/gpstracking/GPSTracker;->showSettingsAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/example/asif/gpstracking/GPSTracker;


# direct methods
.method constructor <init>(Lcom/example/asif/gpstracking/GPSTracker;)V
    .registers 2

    iput-object p1, p0, Lcom/example/asif/gpstracking/GPSTracker$2;->this$0:Lcom/example/asif/gpstracking/GPSTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
