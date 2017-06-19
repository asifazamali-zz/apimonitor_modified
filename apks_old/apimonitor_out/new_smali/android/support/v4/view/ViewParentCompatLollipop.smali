.class  Landroid/support/v4/view/ViewParentCompatLollipop;
.super Ljava/lang/Object;
.source "ViewParentCompatLollipop.java"
.field private static final TAG:Ljava/lang/String; = "ViewParentCompat"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
.registers 9
:try_start_0
invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z
:try_end_3
.catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_3} :catch_5
move-result v1
:goto_4
return v1
:catch_5
move-exception v0
const-string v1, "ViewParentCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ViewParent "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " does not implement interface "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "method onNestedFling"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_4
.end method
.method public static onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
.registers 8
:try_start_0
invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z
:try_end_3
.catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_3} :catch_5
move-result v1
:goto_4
return v1
:catch_5
move-exception v0
const-string v1, "ViewParentCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ViewParent "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " does not implement interface "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "method onNestedPreFling"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_4
.end method
.method public static onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
.registers 9
:try_start_0
invoke-interface {p0, p1, p2, p3, p4}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V
:goto_3
:try_end_3
.catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string v1, "ViewParentCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ViewParent "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " does not implement interface "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "method onNestedPreScroll"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
.end method
.method public static onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
.registers 10
:try_start_0
invoke-interface/range {p0 .. p5}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V
:goto_3
:try_end_3
.catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string v1, "ViewParentCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ViewParent "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " does not implement interface "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "method onNestedScroll"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
.end method
.method public static onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
.registers 8
:try_start_0
invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
:goto_3
:try_end_3
.catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string v1, "ViewParentCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ViewParent "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " does not implement interface "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "method onNestedScrollAccepted"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
.end method
.method public static onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
.registers 8
:try_start_0
invoke-interface {p0, p1, p2, p3}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
:try_end_3
.catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_3} :catch_5
move-result v1
:goto_4
return v1
:catch_5
move-exception v0
const-string v1, "ViewParentCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ViewParent "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " does not implement interface "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "method onStartNestedScroll"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const/4 v1, 0x0
goto :goto_4
.end method
.method public static onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
.registers 6
:try_start_0
invoke-interface {p0, p1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V
:goto_3
:try_end_3
.catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string v1, "ViewParentCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ViewParent "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " does not implement interface "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "method onStopNestedScroll"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Ldroidbox/android/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_3
.end method