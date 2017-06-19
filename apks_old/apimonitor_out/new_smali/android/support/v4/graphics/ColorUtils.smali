.class public final Landroid/support/v4/graphics/ColorUtils;
.super Ljava/lang/Object;
.source "ColorUtils.java"
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa
.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1
.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal; = null
.field private static final XYZ_EPSILON:D = 0.008856
.field private static final XYZ_KAPPA:D = 903.3
.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047
.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0
.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/ThreadLocal;
invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V
sput-object v0, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static HSLToColor([F)I
.registers 14
.parameter
.end parameter
const/4 v10, 0x0
aget v3, p0, v10
const/4 v10, 0x1
aget v8, p0, v10
const/4 v10, 0x2
aget v5, p0, v10
const/high16 v10, 0x3f80
const/high16 v11, 0x4000
mul-float/2addr v11, v5
const/high16 v12, 0x3f80
sub-float/2addr v11, v12
invoke-static {v11}, Ljava/lang/Math;->abs(F)F
move-result v11
sub-float/2addr v10, v11
mul-float v1, v10, v8
const/high16 v10, 0x3f00
mul-float/2addr v10, v1
sub-float v6, v5, v10
const/high16 v10, 0x3f80
const/high16 v11, 0x4270
div-float v11, v3, v11
const/high16 v12, 0x4000
rem-float/2addr v11, v12
const/high16 v12, 0x3f80
sub-float/2addr v11, v12
invoke-static {v11}, Ljava/lang/Math;->abs(F)F
move-result v11
sub-float/2addr v10, v11
mul-float v9, v1, v10
float-to-int v10, v3
div-int/lit8 v4, v10, 0x3c
const/4 v7, 0x0
const/4 v2, 0x0
const/4 v0, 0x0
packed-switch v4, :pswitch_data_f2
:goto_39
const/4 v10, 0x0
const/16 v11, 0xff
invoke-static {v7, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I
move-result v7
const/4 v10, 0x0
const/16 v11, 0xff
invoke-static {v2, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I
move-result v2
const/4 v10, 0x0
const/16 v11, 0xff
invoke-static {v0, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I
move-result v0
invoke-static {v7, v2, v0}, Landroid/graphics/Color;->rgb(III)I
move-result v10
return v10
:pswitch_53
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_39
:pswitch_6d
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_39
:pswitch_87
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto :goto_39
:pswitch_a1
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto/16 :goto_39
:pswitch_bc
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto/16 :goto_39
:pswitch_d7
const/high16 v10, 0x437f
add-float v11, v1, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v7
const/high16 v10, 0x437f
mul-float/2addr v10, v6
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v2
const/high16 v10, 0x437f
add-float v11, v9, v6
mul-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->round(F)I
move-result v0
goto/16 :goto_39
:pswitch_data_f2
.packed-switch 0x0
:pswitch_53
:pswitch_6d
:pswitch_87
:pswitch_a1
:pswitch_bc
:pswitch_d7
:pswitch_d7
.end packed-switch
.end method
.method public static LABToColor(DDD)I
.registers 14
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D
move-result-object v6
move-wide v0, p0
move-wide v2, p2
move-wide v4, p4
invoke-static/range {v0 .. v6}, Landroid/support/v4/graphics/ColorUtils;->LABToXYZ(DDD[D)V
const/4 v0, 0x0
aget-wide v0, v6, v0
const/4 v2, 0x1
aget-wide v2, v6, v2
const/4 v4, 0x2
aget-wide v4, v6, v4
invoke-static/range {v0 .. v5}, Landroid/support/v4/graphics/ColorUtils;->XYZToColor(DDD)I
move-result v0
return v0
.end method
.method public static LABToXYZ(DDD[D)V
.registers 25
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const-wide/high16 v14, 0x4030
add-double v14, v14, p0
const-wide/high16 v16, 0x405d
div-double v2, v14, v16
const-wide v14, 0x407f400000000000L
div-double v14, p2, v14
add-double v0, v14, v2
const-wide/high16 v14, 0x4069
div-double v14, p4, v14
sub-double v4, v2, v14
const-wide/high16 v14, 0x4008
invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v6
const-wide v14, 0x3f82231832fcac8eL
cmpl-double v14, v6, v14
if-lez v14, :cond_62
move-wide v8, v6
:goto_27
const-wide v14, 0x401fff9da4c11507L
cmpl-double v14, p0, v14
if-lez v14, :cond_71
const-wide/high16 v14, 0x4008
invoke-static {v2, v3, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v10
:goto_36
const-wide/high16 v14, 0x4008
invoke-static {v4, v5, v14, v15}, Ljava/lang/Math;->pow(DD)D
move-result-wide v6
const-wide v14, 0x3f82231832fcac8eL
cmpl-double v14, v6, v14
if-lez v14, :cond_79
move-wide v12, v6
:goto_46
const/4 v14, 0x0
const-wide v16, 0x4057c3020c49ba5eL
mul-double v16, v16, v8
aput-wide v16, p6, v14
const/4 v14, 0x1
const-wide/high16 v16, 0x4059
mul-double v16, v16, v10
aput-wide v16, p6, v14
const/4 v14, 0x2
const-wide v16, 0x405b3883126e978dL
mul-double v16, v16, v12
aput-wide v16, p6, v14
return-void
:cond_62
const-wide/high16 v14, 0x405d
mul-double/2addr v14, v0
const-wide/high16 v16, 0x4030
sub-double v14, v14, v16
const-wide v16, 0x408c3a6666666666L
div-double v8, v14, v16
goto :goto_27
:cond_71
const-wide v14, 0x408c3a6666666666L
div-double v10, p0, v14
goto :goto_36
:cond_79
const-wide/high16 v14, 0x405d
mul-double/2addr v14, v4
const-wide/high16 v16, 0x4030
sub-double v14, v14, v16
const-wide v16, 0x408c3a6666666666L
div-double v12, v14, v16
goto :goto_46
.end method
.method public static RGBToHSL(III[F)V
.registers 16
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
int-to-float v9, p0
const/high16 v10, 0x437f
div-float v7, v9, v10
int-to-float v9, p1
const/high16 v10, 0x437f
div-float v2, v9, v10
int-to-float v9, p2
const/high16 v10, 0x437f
div-float v0, v9, v10
invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F
move-result v9
invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F
move-result v5
invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F
move-result v9
invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F
move-result v6
sub-float v1, v5, v6
add-float v9, v5, v6
const/high16 v10, 0x4000
div-float v4, v9, v10
cmpl-float v9, v5, v6
if-nez v9, :cond_5b
const/4 v8, 0x0
move v3, v8
:goto_2d
const/high16 v9, 0x4270
mul-float/2addr v9, v3
const/high16 v10, 0x43b4
rem-float v3, v9, v10
const/4 v9, 0x0
cmpg-float v9, v3, v9
if-gez v9, :cond_3c
const/high16 v9, 0x43b4
add-float/2addr v3, v9
:cond_3c
const/4 v9, 0x0
const/4 v10, 0x0
const/high16 v11, 0x43b4
invoke-static {v3, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F
move-result v10
aput v10, p3, v9
const/4 v9, 0x1
const/4 v10, 0x0
const/high16 v11, 0x3f80
invoke-static {v8, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F
move-result v10
aput v10, p3, v9
const/4 v9, 0x2
const/4 v10, 0x0
const/high16 v11, 0x3f80
invoke-static {v4, v10, v11}, Landroid/support/v4/graphics/ColorUtils;->constrain(FFF)F
move-result v10
aput v10, p3, v9
return-void
:cond_5b
cmpl-float v9, v5, v7
if-nez v9, :cond_76
sub-float v9, v2, v0
div-float/2addr v9, v1
const/high16 v10, 0x40c0
rem-float v3, v9, v10
:goto_66
const/high16 v9, 0x3f80
const/high16 v10, 0x4000
mul-float/2addr v10, v4
const/high16 v11, 0x3f80
sub-float/2addr v10, v11
invoke-static {v10}, Ljava/lang/Math;->abs(F)F
move-result v10
sub-float/2addr v9, v10
div-float v8, v1, v9
goto :goto_2d
:cond_76
cmpl-float v9, v5, v2
if-nez v9, :cond_82
sub-float v9, v0, v7
div-float/2addr v9, v1
const/high16 v10, 0x4000
add-float v3, v9, v10
goto :goto_66
:cond_82
sub-float v9, v7, v2
div-float/2addr v9, v1
const/high16 v10, 0x4080
add-float v3, v9, v10
goto :goto_66
.end method
.method public static RGBToLAB(III[D)V
.registers 11
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p0, p1, p2, p3}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V
const/4 v0, 0x0
aget-wide v0, p3, v0
const/4 v2, 0x1
aget-wide v2, p3, v2
const/4 v4, 0x2
aget-wide v4, p3, v4
move-object v6, p3
invoke-static/range {v0 .. v6}, Landroid/support/v4/graphics/ColorUtils;->XYZToLAB(DDD[D)V
return-void
.end method
.method public static RGBToXYZ(III[D)V
.registers 20
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
move-object/from16 v0, p3
array-length v8, v0
const/4 v9, 0x3
if-eq v8, v9, :cond_e
new-instance v8, Ljava/lang/IllegalArgumentException;
const-string v9, "outXyz must have a length of 3."
invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v8
:cond_e
move/from16 v0, p0
int-to-double v8, v0
const-wide v10, 0x406fe00000000000L
div-double v6, v8, v10
const-wide v8, 0x3fa4b5dcc63f1412L
cmpg-double v8, v6, v8
if-gez v8, :cond_a8
const-wide v8, 0x4029d70a3d70a3d7L
div-double/2addr v6, v8
:goto_27
move/from16 v0, p1
int-to-double v8, v0
const-wide v10, 0x406fe00000000000L
div-double v4, v8, v10
const-wide v8, 0x3fa4b5dcc63f1412L
cmpg-double v8, v4, v8
if-gez v8, :cond_bf
const-wide v8, 0x4029d70a3d70a3d7L
div-double/2addr v4, v8
:goto_40
move/from16 v0, p2
int-to-double v8, v0
const-wide v10, 0x406fe00000000000L
div-double v2, v8, v10
const-wide v8, 0x3fa4b5dcc63f1412L
cmpg-double v8, v2, v8
if-gez v8, :cond_d6
const-wide v8, 0x4029d70a3d70a3d7L
div-double/2addr v2, v8
:goto_59
const/4 v8, 0x0
const-wide/high16 v10, 0x4059
const-wide v12, 0x3fda64c2f837b4a2L
mul-double/2addr v12, v6
const-wide v14, 0x3fd6e2eb1c432ca5L
mul-double/2addr v14, v4
add-double/2addr v12, v14
const-wide v14, 0x3fc71a9fbe76c8b4L
mul-double/2addr v14, v2
add-double/2addr v12, v14
mul-double/2addr v10, v12
aput-wide v10, p3, v8
const/4 v8, 0x1
const-wide/high16 v10, 0x4059
const-wide v12, 0x3fcb367a0f9096bcL
mul-double/2addr v12, v6
const-wide v14, 0x3fe6e2eb1c432ca5L
mul-double/2addr v14, v4
add-double/2addr v12, v14
const-wide v14, 0x3fb27bb2fec56d5dL
mul-double/2addr v14, v2
add-double/2addr v12, v14
mul-double/2addr v10, v12
aput-wide v10, p3, v8
const/4 v8, 0x2
const-wide/high16 v10, 0x4059
const-wide v12, 0x3f93c36113404ea5L
mul-double/2addr v12, v6
const-wide v14, 0x3fbe83e425aee632L
mul-double/2addr v14, v4
add-double/2addr v12, v14
const-wide v14, 0x3fee6a7ef9db22d1L
mul-double/2addr v14, v2
add-double/2addr v12, v14
mul-double/2addr v10, v12
aput-wide v10, p3, v8
return-void
:cond_a8
const-wide v8, 0x3fac28f5c28f5c29L
add-double/2addr v8, v6
const-wide v10, 0x3ff0e147ae147ae1L
div-double/2addr v8, v10
const-wide v10, 0x4003333333333333L
invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D
move-result-wide v6
goto/16 :goto_27
:cond_bf
const-wide v8, 0x3fac28f5c28f5c29L
add-double/2addr v8, v4
const-wide v10, 0x3ff0e147ae147ae1L
div-double/2addr v8, v10
const-wide v10, 0x4003333333333333L
invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D
move-result-wide v4
goto/16 :goto_40
:cond_d6
const-wide v8, 0x3fac28f5c28f5c29L
add-double/2addr v8, v2
const-wide v10, 0x3ff0e147ae147ae1L
div-double/2addr v8, v10
const-wide v10, 0x4003333333333333L
invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D
move-result-wide v2
goto/16 :goto_59
.end method
.method public static XYZToColor(DDD)I
.registers 18
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const-wide v6, 0x4009ecbfb15b573fL
mul-double/2addr v6, p0
const-wide v8, -0x400767a0f9096bbaL
mul-double/2addr v8, p2
add-double/2addr v6, v8
const-wide v8, -0x402016f0068db8bbL
mul-double v8, v8, p4
add-double/2addr v6, v8
const-wide/high16 v8, 0x4059
div-double v4, v6, v8
const-wide v6, -0x4010fec56d5cfaadL
mul-double/2addr v6, p0
const-wide v8, 0x3ffe0346dc5d6388L
mul-double/2addr v8, p2
add-double/2addr v6, v8
const-wide v8, 0x3fa53f7ced916873L
mul-double v8, v8, p4
add-double/2addr v6, v8
const-wide/high16 v8, 0x4059
div-double v2, v6, v8
const-wide v6, 0x3fac84b5dcc63f14L
mul-double/2addr v6, p0
const-wide v8, -0x4035e353f7ced917L
mul-double/2addr v8, p2
add-double/2addr v6, v8
const-wide v8, 0x3ff0e978d4fdf3b6L
mul-double v8, v8, p4
add-double/2addr v6, v8
const-wide/high16 v8, 0x4059
div-double v0, v6, v8
const-wide v6, 0x3f69a5c37387b719L
cmpl-double v6, v4, v6
if-lez v6, :cond_e3
const-wide v6, 0x3ff0e147ae147ae1L
const-wide v8, 0x3fdaaaaaaaaaaaabL
invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D
move-result-wide v8
mul-double/2addr v6, v8
const-wide v8, 0x3fac28f5c28f5c29L
sub-double v4, v6, v8
:goto_6a
const-wide v6, 0x3f69a5c37387b719L
cmpl-double v6, v2, v6
if-lez v6, :cond_ea
const-wide v6, 0x3ff0e147ae147ae1L
const-wide v8, 0x3fdaaaaaaaaaaaabL
invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D
move-result-wide v8
mul-double/2addr v6, v8
const-wide v8, 0x3fac28f5c28f5c29L
sub-double v2, v6, v8
:goto_89
const-wide v6, 0x3f69a5c37387b719L
cmpl-double v6, v0, v6
if-lez v6, :cond_f1
const-wide v6, 0x3ff0e147ae147ae1L
const-wide v8, 0x3fdaaaaaaaaaaaabL
invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D
move-result-wide v8
mul-double/2addr v6, v8
const-wide v8, 0x3fac28f5c28f5c29L
sub-double v0, v6, v8
:goto_a8
const-wide v6, 0x406fe00000000000L
mul-double/2addr v6, v4
invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J
move-result-wide v6
long-to-int v6, v6
const/4 v7, 0x0
const/16 v8, 0xff
invoke-static {v6, v7, v8}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I
move-result v6
const-wide v8, 0x406fe00000000000L
mul-double/2addr v8, v2
invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J
move-result-wide v8
long-to-int v7, v8
const/4 v8, 0x0
const/16 v9, 0xff
invoke-static {v7, v8, v9}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I
move-result v7
const-wide v8, 0x406fe00000000000L
mul-double/2addr v8, v0
invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J
move-result-wide v8
long-to-int v8, v8
const/4 v9, 0x0
const/16 v10, 0xff
invoke-static {v8, v9, v10}, Landroid/support/v4/graphics/ColorUtils;->constrain(III)I
move-result v8
invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I
move-result v6
return v6
:cond_e3
const-wide v6, 0x4029d70a3d70a3d7L
mul-double/2addr v4, v6
goto :goto_6a
:cond_ea
const-wide v6, 0x4029d70a3d70a3d7L
mul-double/2addr v2, v6
goto :goto_89
:cond_f1
const-wide v6, 0x4029d70a3d70a3d7L
mul-double/2addr v0, v6
goto :goto_a8
.end method
.method public static XYZToLAB(DDD[D)V
.registers 15
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
array-length v0, p6
const/4 v1, 0x3
if-eq v0, v1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "outLab must have a length of 3."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const-wide v0, 0x4057c3020c49ba5eL
div-double v0, p0, v0
invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D
move-result-wide p0
const-wide/high16 v0, 0x4059
div-double v0, p2, v0
invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D
move-result-wide p2
const-wide v0, 0x405b3883126e978dL
div-double v0, p4, v0
invoke-static {v0, v1}, Landroid/support/v4/graphics/ColorUtils;->pivotXyzComponent(D)D
move-result-wide p4
const/4 v0, 0x0
const-wide/16 v2, 0x0
const-wide/high16 v4, 0x405d
mul-double/2addr v4, p2
const-wide/high16 v6, 0x4030
sub-double/2addr v4, v6
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D
move-result-wide v2
aput-wide v2, p6, v0
const/4 v0, 0x1
const-wide v2, 0x407f400000000000L
sub-double v4, p0, p2
mul-double/2addr v2, v4
aput-wide v2, p6, v0
const/4 v0, 0x2
const-wide/high16 v2, 0x4069
sub-double v4, p2, p4
mul-double/2addr v2, v4
aput-wide v2, p6, v0
return-void
.end method
.method public static blendARGB(IIF)I
.registers 12
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/high16 v5, 0x3f80
sub-float v3, v5, p2
invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I
move-result v5
int-to-float v5, v5
mul-float/2addr v5, v3
invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I
move-result v6
int-to-float v6, v6
mul-float/2addr v6, p2
add-float v0, v5, v6
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v5
int-to-float v5, v5
mul-float/2addr v5, v3
invoke-static {p1}, Landroid/graphics/Color;->red(I)I
move-result v6
int-to-float v6, v6
mul-float/2addr v6, p2
add-float v4, v5, v6
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v5
int-to-float v5, v5
mul-float/2addr v5, v3
invoke-static {p1}, Landroid/graphics/Color;->green(I)I
move-result v6
int-to-float v6, v6
mul-float/2addr v6, p2
add-float v2, v5, v6
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v5
int-to-float v5, v5
mul-float/2addr v5, v3
invoke-static {p1}, Landroid/graphics/Color;->blue(I)I
move-result v6
int-to-float v6, v6
mul-float/2addr v6, p2
add-float v1, v5, v6
float-to-int v5, v0
float-to-int v6, v4
float-to-int v7, v2
float-to-int v8, v1
invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I
move-result v5
return v5
.end method
.method public static blendHSL([F[FF[F)V
.registers 10
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
array-length v1, p3
const/4 v2, 0x3
if-eq v1, v2, :cond_f
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "result must have a length of 3."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f
const/high16 v1, 0x3f80
sub-float v0, v1, p2
aget v1, p0, v3
aget v2, p1, v3
invoke-static {v1, v2, p2}, Landroid/support/v4/graphics/ColorUtils;->circularInterpolate(FFF)F
move-result v1
aput v1, p3, v3
aget v1, p0, v4
mul-float/2addr v1, v0
aget v2, p1, v4
mul-float/2addr v2, p2
add-float/2addr v1, v2
aput v1, p3, v4
aget v1, p0, v5
mul-float/2addr v1, v0
aget v2, p1, v5
mul-float/2addr v2, p2
add-float/2addr v1, v2
aput v1, p3, v5
return-void
.end method
.method public static blendLAB([D[DD[D)V
.registers 15
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
array-length v2, p4
const/4 v3, 0x3
if-eq v2, v3, :cond_f
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string v3, "outResult must have a length of 3."
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_f
const-wide/high16 v2, 0x3ff0
sub-double v0, v2, p2
aget-wide v2, p0, v6
mul-double/2addr v2, v0
aget-wide v4, p1, v6
mul-double/2addr v4, p2
add-double/2addr v2, v4
aput-wide v2, p4, v6
aget-wide v2, p0, v7
mul-double/2addr v2, v0
aget-wide v4, p1, v7
mul-double/2addr v4, p2
add-double/2addr v2, v4
aput-wide v2, p4, v7
aget-wide v2, p0, v8
mul-double/2addr v2, v0
aget-wide v4, p1, v8
mul-double/2addr v4, p2
add-double/2addr v2, v4
aput-wide v2, p4, v8
return-void
.end method
.method public static calculateContrast(II)D
.registers 10
.parameter
.end parameter
.parameter
.end parameter
const/16 v5, 0xff
const-wide v6, 0x3fa999999999999aL
invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I
move-result v4
if-eq v4, v5, :cond_2a
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "background can not be translucent: #"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_2a
invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I
move-result v4
if-ge v4, v5, :cond_34
invoke-static {p0, p1}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I
move-result p0
:cond_34
invoke-static {p0}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D
move-result-wide v4
add-double v0, v4, v6
invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D
move-result-wide v4
add-double v2, v4, v6
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D
move-result-wide v4
invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D
move-result-wide v6
div-double/2addr v4, v6
return-wide v4
.end method
.method public static calculateLuminance(I)D
.registers 7
.parameter
.end parameter
invoke-static {}, Landroid/support/v4/graphics/ColorUtils;->getTempDouble3Array()[D
move-result-object v0
invoke-static {p0, v0}, Landroid/support/v4/graphics/ColorUtils;->colorToXYZ(I[D)V
const/4 v1, 0x1
aget-wide v2, v0, v1
const-wide/high16 v4, 0x4059
div-double/2addr v2, v4
return-wide v2
.end method
.method public static calculateMinimumAlpha(IIF)I
.registers 13
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
const/16 v8, 0xff
invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I
move-result v5
if-eq v5, v8, :cond_25
new-instance v5, Ljava/lang/IllegalArgumentException;
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
const-string v9, "background can not be translucent: #"
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-direct {v5, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v5
:cond_25
invoke-static {p0, v8}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I
move-result v4
invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D
move-result-wide v6
float-to-double v8, p2
cmpg-double v5, v6, v8
if-gez v5, :cond_34
const/4 v0, -0x1
:cond_33
return v0
:cond_34
const/4 v2, 0x0
const/4 v1, 0x0
const/16 v0, 0xff
:goto_38
const/16 v5, 0xa
if-gt v2, v5, :cond_33
sub-int v5, v0, v1
const/4 v8, 0x1
if-le v5, v8, :cond_33
add-int v5, v1, v0
div-int/lit8 v3, v5, 0x2
invoke-static {p0, v3}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I
move-result v4
invoke-static {v4, p1}, Landroid/support/v4/graphics/ColorUtils;->calculateContrast(II)D
move-result-wide v6
float-to-double v8, p2
cmpg-double v5, v6, v8
if-gez v5, :cond_56
move v1, v3
:goto_53
add-int/lit8 v2, v2, 0x1
goto :goto_38
:cond_56
move v0, v3
goto :goto_53
.end method
.method static circularInterpolate(FFF)F
.registers 6
const/high16 v2, 0x43b4
sub-float v0, p1, p0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v0
const/high16 v1, 0x4334
cmpl-float v0, v0, v1
if-lez v0, :cond_13
cmpl-float v0, p1, p0
if-lez v0, :cond_19
add-float/2addr p0, v2
:cond_13
:goto_13
sub-float v0, p1, p0
mul-float/2addr v0, p2
add-float/2addr v0, p0
rem-float/2addr v0, v2
return v0
:cond_19
add-float/2addr p1, v2
goto :goto_13
.end method
.method public static colorToHSL(I[F)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v0
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v1
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v2
invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToHSL(III[F)V
return-void
.end method
.method public static colorToLAB(I[D)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v0
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v1
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v2
invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToLAB(III[D)V
return-void
.end method
.method public static colorToXYZ(I[D)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v0
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v1
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v2
invoke-static {v0, v1, v2, p1}, Landroid/support/v4/graphics/ColorUtils;->RGBToXYZ(III[D)V
return-void
.end method
.method private static compositeAlpha(II)I
.registers 4
rsub-int v0, p1, 0xff
rsub-int v1, p0, 0xff
mul-int/2addr v0, v1
div-int/lit16 v0, v0, 0xff
rsub-int v0, v0, 0xff
return v0
.end method
.method public static compositeColors(II)I
.registers 10
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I
move-result v2
invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I
move-result v3
invoke-static {v3, v2}, Landroid/support/v4/graphics/ColorUtils;->compositeAlpha(II)I
move-result v0
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v6
invoke-static {p1}, Landroid/graphics/Color;->red(I)I
move-result v7
invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I
move-result v5
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v6
invoke-static {p1}, Landroid/graphics/Color;->green(I)I
move-result v7
invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I
move-result v4
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v6
invoke-static {p1}, Landroid/graphics/Color;->blue(I)I
move-result v7
invoke-static {v6, v3, v7, v2, v0}, Landroid/support/v4/graphics/ColorUtils;->compositeComponent(IIIII)I
move-result v1
invoke-static {v0, v5, v4, v1}, Landroid/graphics/Color;->argb(IIII)I
move-result v6
return v6
.end method
.method private static compositeComponent(IIIII)I
.registers 8
if-nez p4, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
mul-int/lit16 v0, p0, 0xff
mul-int/2addr v0, p1
mul-int v1, p2, p3
rsub-int v2, p1, 0xff
mul-int/2addr v1, v2
add-int/2addr v0, v1
mul-int/lit16 v1, p4, 0xff
div-int/2addr v0, v1
goto :goto_3
.end method
.method private static constrain(FFF)F
.registers 4
cmpg-float v0, p0, p1
if-gez v0, :cond_5
:goto_4
return p1
:cond_5
cmpl-float v0, p0, p2
if-lez v0, :cond_b
move p1, p2
goto :goto_4
:cond_b
move p1, p0
goto :goto_4
.end method
.method private static constrain(III)I
.registers 3
if-ge p0, p1, :cond_3
:goto_2
return p1
:cond_3
if-le p0, p2, :cond_7
move p1, p2
goto :goto_2
:cond_7
move p1, p0
goto :goto_2
.end method
.method public static distanceEuclidean([D[D)D
.registers 11
.parameter
.end parameter
.parameter
.end parameter
const/4 v8, 0x2
const/4 v4, 0x1
const/4 v2, 0x0
const-wide/high16 v6, 0x4000
aget-wide v0, p0, v2
aget-wide v2, p1, v2
sub-double/2addr v0, v2
invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
aget-wide v2, p0, v4
aget-wide v4, p1, v4
sub-double/2addr v2, v4
invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D
move-result-wide v2
add-double/2addr v0, v2
aget-wide v2, p0, v8
aget-wide v4, p1, v8
sub-double/2addr v2, v4
invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D
move-result-wide v2
add-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v0
return-wide v0
.end method
.method private static getTempDouble3Array()[D
.registers 2
sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;
invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, [D
if-nez v0, :cond_12
const/4 v1, 0x3
new-array v0, v1, [D
sget-object v1, Landroid/support/v4/graphics/ColorUtils;->TEMP_ARRAY:Ljava/lang/ThreadLocal;
invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
:cond_12
return-object v0
.end method
.method private static pivotXyzComponent(D)D
.registers 6
const-wide v0, 0x3f82231832fcac8eL
cmpl-double v0, p0, v0
if-lez v0, :cond_13
const-wide v0, 0x3fd5555555555555L
invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
:goto_12
return-wide v0
:cond_13
const-wide v0, 0x408c3a6666666666L
mul-double/2addr v0, p0
const-wide/high16 v2, 0x4030
add-double/2addr v0, v2
const-wide/high16 v2, 0x405d
div-double/2addr v0, v2
goto :goto_12
.end method
.method public static setAlphaComponent(II)I
.registers 4
.parameter
.end parameter
.parameter
.end parameter
if-ltz p1, :cond_6
const/16 v0, 0xff
if-le p1, v0, :cond_e
:cond_6
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "alpha must be between 0 and 255."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
const v0, 0xffffff
and-int/2addr v0, p0
shl-int/lit8 v1, p1, 0x18
or-int/2addr v0, v1
return v0
.end method