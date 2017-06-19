.class  Landroid/support/v7/app/TwilightManager;
.super Ljava/lang/Object;
.source "TwilightManager.java"
.field private static final SUNRISE:I = 0x6
.field private static final SUNSET:I = 0x16
.field private static final TAG:Ljava/lang/String; = "TwilightManager"
.field private static sInstance:Landroid/support/v7/app/TwilightManager;
.field private final mContext:Landroid/content/Context;
.field private final mLocationManager:Landroid/location/LocationManager;
.field private final mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/support/v7/app/TwilightManager$TwilightState;
invoke-direct {v0}, Landroid/support/v7/app/TwilightManager$TwilightState;-><init>()V
iput-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;
iput-object p1, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;
iput-object p2, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;
return-void
.end method
.method static getInstance(Landroid/content/Context;)Landroid/support/v7/app/TwilightManager;
.registers 3
.parameter
.end parameter
sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;
if-nez v0, :cond_17
invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object p0
new-instance v1, Landroid/support/v7/app/TwilightManager;
const-string v0, "location"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
invoke-direct {v1, p0, v0}, Landroid/support/v7/app/TwilightManager;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V
sput-object v1, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;
:cond_17
sget-object v0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;
return-object v0
.end method
.method private getLastKnownLocation()Landroid/location/Location;
.registers 9
const/4 v0, 0x0
const/4 v1, 0x0
iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;
const-string v4, "android.permission.ACCESS_COARSE_LOCATION"
invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
move-result v2
if-nez v2, :cond_12
const-string v3, "network"
invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
:cond_12
iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mContext:Landroid/content/Context;
const-string v4, "android.permission.ACCESS_FINE_LOCATION"
invoke-static {v3, v4}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
move-result v2
if-nez v2, :cond_22
const-string v3, "gps"
invoke-direct {p0, v3}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
move-result-object v1
:cond_22
if-eqz v1, :cond_35
if-eqz v0, :cond_35
invoke-virtual {v1}, Landroid/location/Location;->getTime()J
move-result-wide v4
invoke-virtual {v0}, Landroid/location/Location;->getTime()J
move-result-wide v6
cmp-long v3, v4, v6
if-lez v3, :cond_33
:goto_32
:cond_32
return-object v1
:cond_33
move-object v1, v0
goto :goto_32
:cond_35
if-nez v1, :cond_32
move-object v1, v0
goto :goto_32
.end method
.method private getLastKnownLocationForProvider(Ljava/lang/String;)Landroid/location/Location;
.registers 5
iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;
if-eqz v1, :cond_1b
:try_start_4
iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;
invoke-virtual {v1, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1b
iget-object v1, p0, Landroid/support/v7/app/TwilightManager;->mLocationManager:Landroid/location/LocationManager;
invoke-static {v1, p1}, Ldroidbox/android/location/LocationManager;->getLastKnownLocation(Landroid/location/LocationManager;Ljava/lang/String;)Landroid/location/Location;
:try_end_11
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_13
move-result-object v1
:goto_12
return-object v1
:catch_13
move-exception v0
const-string v1, "TwilightManager"
const-string v2, "Failed to get last known location"
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_1b
const/4 v1, 0x0
goto :goto_12
.end method
.method private isStateValid()Z
.registers 5
iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;
if-eqz v0, :cond_12
iget-object v0, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;
iget-wide v0, v0, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
cmp-long v0, v0, v2
if-lez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method static setInstance(Landroid/support/v7/app/TwilightManager;)V
.registers 1
sput-object p0, Landroid/support/v7/app/TwilightManager;->sInstance:Landroid/support/v7/app/TwilightManager;
return-void
.end method
.method private updateState(Landroid/location/Location;)V
.registers 26
.parameter
.end parameter
move-object/from16 v0, p0
iget-object v14, v0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v12
invoke-static {}, Landroid/support/v7/app/TwilightCalculator;->getInstance()Landroid/support/v7/app/TwilightCalculator;
move-result-object v3
const-wide/32 v4, 0x5265c00
sub-long v4, v12, v4
invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D
move-result-wide v6
invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D
move-result-wide v8
invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V
iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J
move-wide/from16 v22, v0
invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D
move-result-wide v6
invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D
move-result-wide v8
move-wide v4, v12
invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V
iget v4, v3, Landroid/support/v7/app/TwilightCalculator;->state:I
const/4 v5, 0x1
if-ne v4, v5, :cond_75
const/4 v2, 0x1
:goto_32
iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J
move-wide/from16 v16, v0
iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunset:J
move-wide/from16 v18, v0
const-wide/32 v4, 0x5265c00
add-long/2addr v4, v12
invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D
move-result-wide v6
invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D
move-result-wide v8
invoke-virtual/range {v3 .. v9}, Landroid/support/v7/app/TwilightCalculator;->calculateTwilight(JDD)V
iget-wide v0, v3, Landroid/support/v7/app/TwilightCalculator;->sunrise:J
move-wide/from16 v20, v0
const-wide/16 v10, 0x0
const-wide/16 v4, -0x1
cmp-long v4, v16, v4
if-eqz v4, :cond_5b
const-wide/16 v4, -0x1
cmp-long v4, v18, v4
if-nez v4, :cond_77
:cond_5b
const-wide/32 v4, 0x2932e00
add-long v10, v12, v4
:goto_60
iput-boolean v2, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z
move-wide/from16 v0, v22
iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->yesterdaySunset:J
move-wide/from16 v0, v16
iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunrise:J
move-wide/from16 v0, v18
iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->todaySunset:J
move-wide/from16 v0, v20
iput-wide v0, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->tomorrowSunrise:J
iput-wide v10, v14, Landroid/support/v7/app/TwilightManager$TwilightState;->nextUpdate:J
return-void
:cond_75
const/4 v2, 0x0
goto :goto_32
:cond_77
cmp-long v4, v12, v18
if-lez v4, :cond_82
add-long v10, v10, v20
:goto_7d
const-wide/32 v4, 0xea60
add-long/2addr v10, v4
goto :goto_60
:cond_82
cmp-long v4, v12, v16
if-lez v4, :cond_89
add-long v10, v10, v18
goto :goto_7d
:cond_89
add-long v10, v10, v16
goto :goto_7d
.end method
.method  isNight()Z
.registers 7
iget-object v3, p0, Landroid/support/v7/app/TwilightManager;->mTwilightState:Landroid/support/v7/app/TwilightManager$TwilightState;
invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->isStateValid()Z
move-result v4
if-eqz v4, :cond_b
iget-boolean v4, v3, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z
:goto_a
return v4
:cond_b
invoke-direct {p0}, Landroid/support/v7/app/TwilightManager;->getLastKnownLocation()Landroid/location/Location;
move-result-object v2
if-eqz v2, :cond_17
invoke-direct {p0, v2}, Landroid/support/v7/app/TwilightManager;->updateState(Landroid/location/Location;)V
iget-boolean v4, v3, Landroid/support/v7/app/TwilightManager$TwilightState;->isNight:Z
goto :goto_a
:cond_17
const-string v4, "TwilightManager"
const-string v5, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."
invoke-static {v4, v5}, Ldroidbox/android/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
const/16 v4, 0xb
invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I
move-result v1
const/4 v4, 0x6
if-lt v1, v4, :cond_2f
const/16 v4, 0x16
if-lt v1, v4, :cond_31
:cond_2f
const/4 v4, 0x1
goto :goto_a
:cond_31
const/4 v4, 0x0
goto :goto_a
.end method