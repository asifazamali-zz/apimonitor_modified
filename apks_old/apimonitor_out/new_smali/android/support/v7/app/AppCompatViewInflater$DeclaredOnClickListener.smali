.class  Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"
.implements Landroid/view/View$OnClickListener;
.field private final mHostView:Landroid/view/View;
.field private final mMethodName:Ljava/lang/String;
.field private mResolvedContext:Landroid/content/Context;
.field private mResolvedMethod:Ljava/lang/reflect/Method;
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;
iput-object p2, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;
return-void
.end method
.method private resolveMethod(Landroid/content/Context;Ljava/lang/String;)V
.registers 11
.parameter
.end parameter
.parameter
.end parameter
:goto_0
if-eqz p1, :cond_2f
:try_start_2
invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z
move-result v3
if-nez v3, :cond_22
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Class;
const/4 v6, 0x0
const-class v7, Landroid/view/View;
aput-object v7, v5, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v2
if-eqz v2, :cond_22
iput-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;
iput-object p1, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;
:try_end_20
.catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_20} :catch_21
return-void
:catch_21
move-exception v3
:cond_22
instance-of v3, p1, Landroid/content/ContextWrapper;
if-eqz v3, :cond_2d
check-cast p1, Landroid/content/ContextWrapper;
invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;
move-result-object p1
goto :goto_0
:cond_2d
const/4 p1, 0x0
goto :goto_0
:cond_2f
iget-object v3, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getId()I
move-result v0
const/4 v3, -0x1
if-ne v0, v3, :cond_6f
const-string v1, ""
:goto_3a
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Could not find method "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "(View) in a parent or ancestor Context for android:onClick "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "attribute defined on view "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;
invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v3
:cond_6f
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, " with id \'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v4
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_3a
.end method
.method public onClick(Landroid/view/View;)V
.registers 7
.parameter
.end parameter
iget-object v1, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;
if-nez v1, :cond_f
iget-object v1, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mHostView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;
invoke-direct {p0, v1, v2}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->resolveMethod(Landroid/content/Context;Ljava/lang/String;)V
:try_start_f
:cond_f
iget-object v1, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;
iget-object v2, p0, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p1, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1c
.catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_1c} :catch_1d
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_1c} :catch_26
return-void
:catch_1d
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Could not execute non-public method for android:onClick"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_26
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
const-string v2, "Could not execute method for android:onClick"
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method