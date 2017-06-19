.class  Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat$Helper;
.super Ljava/lang/Object;
.source "SharedPreferencesCompat.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public apply(Landroid/content/SharedPreferences$Editor;)V
.registers 3
.parameter
.end parameter
:try_start_0
invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
:goto_3
:try_end_3
.catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_3
.end method