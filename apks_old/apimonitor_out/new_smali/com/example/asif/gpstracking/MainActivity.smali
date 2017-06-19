.class public Lcom/example/asif/gpstracking/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainActivity.java"
.field public static INTENTDATA:Ljava/lang/String;
.field public static LATITUDE:Ljava/lang/String;
.field public static LONGITUDE:Ljava/lang/String;
.field  btnShowLocation:Landroid/widget/Button;
.field  gps:Lcom/example/asif/gpstracking/GPSTracker;
.method static constructor <clinit>()V
.registers 1
const-string v0, "com.example.gpstracking.MainActitivity.Longitude"
sput-object v0, Lcom/example/asif/gpstracking/MainActivity;->LONGITUDE:Ljava/lang/String;
const-string v0, "com.example.gpstracking.MainActitivity.Latitude"
sput-object v0, Lcom/example/asif/gpstracking/MainActivity;->LATITUDE:Ljava/lang/String;
const-string v0, "com.example.gpstracking.MainActivity.IntentData"
sput-object v0, Lcom/example/asif/gpstracking/MainActivity;->INTENTDATA:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V
return-void
.end method
.method public BtnClick(Landroid/view/View;)V
.registers 10
const/4 v7, 0x1
new-instance v5, Lcom/example/asif/gpstracking/GPSTracker;
invoke-direct {v5, p0}, Lcom/example/asif/gpstracking/GPSTracker;-><init>(Landroid/content/Context;)V
iput-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
iget-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
invoke-virtual {v5}, Lcom/example/asif/gpstracking/GPSTracker;->canGetLocation()Z
move-result v5
if-eqz v5, :cond_5c
iget-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
invoke-virtual {v5}, Lcom/example/asif/gpstracking/GPSTracker;->getLatitude()D
move-result-wide v0
iget-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
invoke-virtual {v5}, Lcom/example/asif/gpstracking/GPSTracker;->getLongitude()D
move-result-wide v2
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Your Location is- \nLat: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\nLong: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const-string v5, "Network"
const-string v6, ""
invoke-static {v5, v6}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Lcom/example/asif/gpstracking/MainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5, v4, v7}, Ldroidbox/android/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/Toast;->show()V
invoke-virtual {p0}, Lcom/example/asif/gpstracking/MainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
const-string v6, "SMS sent."
invoke-static {v5, v6, v7}, Ldroidbox/android/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v5
invoke-virtual {v5}, Landroid/widget/Toast;->show()V
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/example/asif/gpstracking/MainActivity;->sendMessage(DD)V
:goto_5b
return-void
:cond_5c
iget-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
invoke-virtual {v5}, Lcom/example/asif/gpstracking/GPSTracker;->showSettingsAlert()V
goto :goto_5b
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 9
invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V
const v5, 0x7f04001b
invoke-virtual {p0, v5}, Lcom/example/asif/gpstracking/MainActivity;->setContentView(I)V
new-instance v5, Lcom/example/asif/gpstracking/GPSTracker;
invoke-direct {v5, p0}, Lcom/example/asif/gpstracking/GPSTracker;-><init>(Landroid/content/Context;)V
iput-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
iget-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
invoke-virtual {v5}, Lcom/example/asif/gpstracking/GPSTracker;->canGetLocation()Z
move-result v5
if-eqz v5, :cond_4c
iget-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
invoke-virtual {v5}, Lcom/example/asif/gpstracking/GPSTracker;->getLatitude()D
move-result-wide v0
iget-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
invoke-virtual {v5}, Lcom/example/asif/gpstracking/GPSTracker;->getLongitude()D
move-result-wide v2
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Your Location is- \nLat: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "\nLong: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
const-string v5, "Network"
const-string v6, ""
invoke-static {v5, v6}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/example/asif/gpstracking/MainActivity;->sendMessage(DD)V
:goto_4b
return-void
:cond_4c
iget-object v5, p0, Lcom/example/asif/gpstracking/MainActivity;->gps:Lcom/example/asif/gpstracking/GPSTracker;
invoke-virtual {v5}, Lcom/example/asif/gpstracking/GPSTracker;->showSettingsAlert()V
goto :goto_4b
.end method
.method public sendMessage(DD)V
.registers 12
const/4 v2, 0x0
const-string v4, "tag"
const-string v5, "inside sendMessage"
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;
move-result-object v0
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "latitude "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " longitude "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string v1, "123456789"
move-object v4, v2
move-object v5, v2
invoke-static/range {v0 .. v5}, Ldroidbox/android/telephony/SmsManager;->sendTextMessage(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
return-void
.end method