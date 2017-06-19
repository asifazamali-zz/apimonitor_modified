.class public Lcom/example/asif/gpstracking/GPSTracker;
.super Landroid/app/Service;
.source "GPSTracker.java"
.implements Landroid/location/LocationListener;
.field private static final MIN_DISTANCE_CHANGE_FOR_UPDATES:J = 0xaL
.field private static final MIN_TIME_BW_UPDATES:J = 0xea60L
.field  canGetLocation:Z
.field  isGPSEnabled:Z
.field  isNetworkEnabled:Z
.field  latitude:D
.field  location:Landroid/location/Location;
.field protected locationManager:Landroid/location/LocationManager;
.field  longitude:D
.field private final mcontext:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Landroid/app/Service;-><init>()V
iput-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->isGPSEnabled:Z
iput-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->isNetworkEnabled:Z
iput-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->canGetLocation:Z
iput-object p1, p0, Lcom/example/asif/gpstracking/GPSTracker;->mcontext:Landroid/content/Context;
invoke-virtual {p0}, Lcom/example/asif/gpstracking/GPSTracker;->getLocation()Landroid/location/Location;
return-void
.end method
.method static synthetic access$000(Lcom/example/asif/gpstracking/GPSTracker;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->mcontext:Landroid/content/Context;
return-object v0
.end method
.method public canGetLocation()Z
.registers 2
iget-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->canGetLocation:Z
return v0
.end method
.method public getLatitude()D
.registers 3
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D
move-result-wide v0
iput-wide v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->latitude:D
:cond_c
iget-wide v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->latitude:D
return-wide v0
.end method
.method public getLocation()Landroid/location/Location;
.registers 8
:try_start_0
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->mcontext:Landroid/content/Context;
const-string v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
iput-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->locationManager:Landroid/location/LocationManager;
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->locationManager:Landroid/location/LocationManager;
const-string v1, "gps"
invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->isGPSEnabled:Z
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->locationManager:Landroid/location/LocationManager;
const-string v1, "network"
invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->isNetworkEnabled:Z
iget-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->isGPSEnabled:Z
if-nez v0, :cond_70
iget-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->isNetworkEnabled:Z
if-nez v0, :cond_70
const-string v0, "Network"
const-string v1, "No Network provider is available"
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_2f
:goto_2f
iget-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->isGPSEnabled:Z
if-eqz v0, :cond_6d
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
if-nez v0, :cond_6d
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->locationManager:Landroid/location/LocationManager;
const-string v1, "gps"
const-wide/32 v2, 0xea60
const/high16 v4, 0x4120
move-object v5, p0
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
const-string v0, "GPS_ENABLED"
const-string v1, "GPS_Enabled"
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->locationManager:Landroid/location/LocationManager;
if-eqz v0, :cond_6d
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->locationManager:Landroid/location/LocationManager;
const-string v1, "gps"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
iput-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
if-eqz v0, :cond_6d
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D
move-result-wide v0
iput-wide v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->latitude:D
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D
move-result-wide v0
iput-wide v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->longitude:D
:goto_6d
:cond_6d
:try_end_6d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_ae
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
return-object v0
:cond_70
const/4 v0, 0x1
:try_start_71
iput-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->canGetLocation:Z
iget-boolean v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->isNetworkEnabled:Z
if-eqz v0, :cond_84
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->locationManager:Landroid/location/LocationManager;
const-string v1, "network"
const-wide/32 v2, 0xea60
const/high16 v4, 0x4120
move-object v5, p0
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
:cond_84
const-string v0, "Network"
const-string v1, "Network"
invoke-static {v0, v1}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->locationManager:Landroid/location/LocationManager;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->locationManager:Landroid/location/LocationManager;
const-string v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
iput-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D
move-result-wide v0
iput-wide v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->latitude:D
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D
move-result-wide v0
iput-wide v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->longitude:D
:try_end_ad
.catch Ljava/lang/Exception; {:try_start_71 .. :try_end_ad} :catch_ae
goto :goto_2f
:catch_ae
move-exception v6
invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_6d
.end method
.method public getLongitude()D
.registers 3
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->location:Landroid/location/Location;
invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D
move-result-wide v0
iput-wide v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->longitude:D
:cond_c
iget-wide v0, p0, Lcom/example/asif/gpstracking/GPSTracker;->longitude:D
return-wide v0
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public onLocationChanged(Landroid/location/Location;)V
.registers 2
return-void
.end method
.method public onProviderDisabled(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public onProviderEnabled(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
.registers 4
return-void
.end method
.method public showSettingsAlert()V
.registers 4
new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;
iget-object v1, p0, Lcom/example/asif/gpstracking/GPSTracker;->mcontext:Landroid/content/Context;
invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const-string v1, "GPS is settings"
invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
const-string v1, "GPS is not enabled. Do you want to go to settings menu?"
invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;
const-string v1, "Settings"
new-instance v2, Lcom/example/asif/gpstracking/GPSTracker$1;
invoke-direct {v2, p0}, Lcom/example/asif/gpstracking/GPSTracker$1;-><init>(Lcom/example/asif/gpstracking/GPSTracker;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
const-string v1, "Cancel"
new-instance v2, Lcom/example/asif/gpstracking/GPSTracker$2;
invoke-direct {v2, p0}, Lcom/example/asif/gpstracking/GPSTracker$2;-><init>(Lcom/example/asif/gpstracking/GPSTracker;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;
return-void
.end method