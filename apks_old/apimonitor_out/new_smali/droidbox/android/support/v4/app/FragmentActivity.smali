.class public Ldroidbox/android/support/v4/app/FragmentActivity;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static findViewById(Landroid/support/v4/app/FragmentActivity;I)Landroid/view/View;
.registers 6
:droidbox_try_start
invoke-virtual {p0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3,"Landroid/support/v4/app/FragmentActivity$HostCallbacks;->onFindViewById(I)Landroid/view/View;->Landroid/support/v4/app/FragmentActivity;->findViewById("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v3, "I="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v3, "Landroid/view/View;="
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-object v1
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const/4 v1, 0x0
goto :droidbox_return
.end method