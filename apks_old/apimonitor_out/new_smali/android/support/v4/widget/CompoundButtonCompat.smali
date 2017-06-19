.class public final Landroid/support/v4/widget/CompoundButtonCompat;
.super Ljava/lang/Object;
.source "CompoundButtonCompat.java"
.field private static final IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
.method static constructor <clinit>()V
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x17
if-lt v0, v1, :cond_e
new-instance v1, Landroid/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;
invoke-direct {v1}, Landroid/support/v4/widget/CompoundButtonCompat$Api23CompoundButtonImpl;-><init>()V
sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
:goto_d
return-void
:cond_e
const/16 v1, 0x15
if-lt v0, v1, :cond_1a
new-instance v1, Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;
invoke-direct {v1}, Landroid/support/v4/widget/CompoundButtonCompat$LollipopCompoundButtonImpl;-><init>()V
sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
goto :goto_d
:cond_1a
new-instance v1, Landroid/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;
invoke-direct {v1}, Landroid/support/v4/widget/CompoundButtonCompat$BaseCompoundButtonCompat;-><init>()V
sput-object v1, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
goto :goto_d
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
.registers 2
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
.registers 2
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
move-result-object v0
return-object v0
.end method
.method public static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
.registers 2
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
invoke-interface {v0, p0}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
move-result-object v0
return-object v0
.end method
.method public static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
return-void
.end method
.method public static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
sget-object v0, Landroid/support/v4/widget/CompoundButtonCompat;->IMPL:Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;
invoke-interface {v0, p0, p1}, Landroid/support/v4/widget/CompoundButtonCompat$CompoundButtonCompatImpl;->setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
return-void
.end method