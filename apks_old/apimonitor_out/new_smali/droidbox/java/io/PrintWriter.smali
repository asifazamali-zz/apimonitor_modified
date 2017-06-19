.class public Ldroidbox/java/io/PrintWriter;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static print(Ljava/io/PrintWriter;Ljava/lang/String;)V
.registers 5
:droidbox_try_start
invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V->Ljava/io/PrintWriter;->print("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "Ljava/lang/String;="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method
.method public static println(Ljava/io/PrintWriter;Ljava/lang/String;)V
.registers 5
:droidbox_try_start
invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V->Ljava/io/PrintWriter;->println("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "Ljava/lang/String;="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method
.method public static print(Ljava/io/PrintWriter;I)V
.registers 5
:droidbox_try_start
invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V->Ljava/io/PrintWriter;->print("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "I="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method
.method public static println(Ljava/io/PrintWriter;Ljava/lang/Object;)V
.registers 5
:droidbox_try_start
invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V->Ljava/io/PrintWriter;->println("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "Ljava/lang/Object;="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method
.method public static print(Ljava/io/PrintWriter;Z)V
.registers 5
:droidbox_try_start
invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Z)V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V->Ljava/io/PrintWriter;->print("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "Z="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method
.method public static println(Ljava/io/PrintWriter;Z)V
.registers 5
:droidbox_try_start
invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Z)V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V->Ljava/io/PrintWriter;->println("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "Z="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method
.method public static println(Ljava/io/PrintWriter;I)V
.registers 5
:droidbox_try_start
invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(I)V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V->Ljava/io/PrintWriter;->println("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "I="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method
.method public static print(Ljava/io/PrintWriter;Ljava/lang/Object;)V
.registers 5
:droidbox_try_start
invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V->Ljava/io/PrintWriter;->print("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "Ljava/lang/Object;="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {p1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method
.method public static println(Ljava/io/PrintWriter;)V
.registers 4
:droidbox_try_start
invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V
:droidbox_try_end
.catch Ljava/lang/Exception; {:droidbox_try_start .. :droidbox_try_end} :droidbox_handler
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2,"Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V->Ljava/io/PrintWriter;->println("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "V"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:droidbox_return
return-void
:droidbox_handler
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :droidbox_return
.end method