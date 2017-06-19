.class public final Landroid/support/v4/widget/TextViewCompat;
.super Ljava/lang/Object;
.source "TextViewCompat.java"
.field static final IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-lt v0, v1, :cond_e
new-instance v1, Landroid/support/v4/widget/TextViewCompat$Api23TextViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/widget/TextViewCompat$Api23TextViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
:goto_d
return-void
:cond_e
const/16 v1, 0x12
if-lt v0, v1, :cond_1a
new-instance v1, Landroid/support/v4/widget/TextViewCompat$JbMr2TextViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/widget/TextViewCompat$JbMr2TextViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
goto :goto_d
:cond_1a
const/16 v1, 0x11
if-lt v0, v1, :cond_26
new-instance v1, Landroid/support/v4/widget/TextViewCompat$JbMr1TextViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/widget/TextViewCompat$JbMr1TextViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
goto :goto_d
:cond_26
const/16 v1, 0x10
if-lt v0, v1, :cond_32
new-instance v1, Landroid/support/v4/widget/TextViewCompat$JbTextViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/widget/TextViewCompat$JbTextViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
goto :goto_d
:cond_32
new-instance v1, Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;
invoke-direct {v1}, Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;-><init>()V
sput-object v1, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
goto :goto_d
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
.registers 2
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;->getCompoundDrawablesRelative(Landroid/widget/TextView;)[Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static getMaxLines(Landroid/widget/TextView;)I
.registers 2
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;->getMaxLines(Landroid/widget/TextView;)I
move-result v0
return v0
.end method
.method public static getMinLines(Landroid/widget/TextView;)I
.registers 2
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;->getMinLines(Landroid/widget/TextView;)I
move-result v0
return v0
.end method
.method public static setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.registers 11
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;->setCompoundDrawablesRelative(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
.registers 11
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
move-object v1, p0
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;IIII)V
return-void
.end method
.method public static setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
.registers 11
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
move-object v1, p0
move-object v2, p1
move-object v3, p2
move-object v4, p3
move-object v5, p4
invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public static setTextAppearance(Landroid/widget/TextView;I)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/TextViewCompat;->IMPL:Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/TextViewCompat$TextViewCompatImpl;->setTextAppearance(Landroid/widget/TextView;I)V
return-void
.end method