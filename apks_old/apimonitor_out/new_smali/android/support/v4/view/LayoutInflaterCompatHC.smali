.class  Landroid/support/v4/view/LayoutInflaterCompatHC;
.super Ljava/lang/Object;
.source "LayoutInflaterCompatHC.java"
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"
.field private static sCheckedField:Z
.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
.registers 7
const/4 v4, 0x1
sget-boolean v1, Landroid/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z
if-nez v1, :cond_17
:try_start_5
const-class v1, Landroid/view/LayoutInflater;
const-string v2, "mFactory2"
invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
sput-object v1, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;
sget-object v1, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:try_end_15
.catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_15} :catch_21
:goto_15
sput-boolean v4, Landroid/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z
:cond_17
sget-object v1, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;
if-eqz v1, :cond_20
:try_start_1b
sget-object v1, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;
invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
:goto_20
:cond_20
:try_end_20
.catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_20} :catch_47
return-void
:catch_21
move-exception v0
const-string v1, "LayoutInflaterCompatHC"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "forceSetFactory2 Could not find field \'mFactory2\' on class "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-class v3, Landroid/view/LayoutInflater;
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "; inflation may have unexpected results."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_15
:catch_47
move-exception v0
const-string v1, "LayoutInflaterCompatHC"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "forceSetFactory2 could not set the Factory2 on LayoutInflater "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "; inflation may have unexpected results."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_20
.end method
.method static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
.registers 5
if-eqz p1, :cond_18
new-instance v1, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;
invoke-direct {v1, p1}, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V
:goto_7
invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V
invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;
move-result-object v0
instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;
if-eqz v2, :cond_1a
check-cast v0, Landroid/view/LayoutInflater$Factory2;
invoke-static {p0, v0}, Landroid/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
:goto_17
return-void
:cond_18
const/4 v1, 0x0
goto :goto_7
:cond_1a
invoke-static {p0, v1}, Landroid/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
goto :goto_17
.end method