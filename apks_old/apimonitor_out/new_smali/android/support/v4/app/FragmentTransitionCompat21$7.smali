.class final Landroid/support/v4/app/FragmentTransitionCompat21$7;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"
.implements Ljava/lang/Runnable;
.field final synthetic val$nameOverrides:Ljava/util/Map;
.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/Map;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$sharedElementsIn:Ljava/util/ArrayList;
iput-object p2, p0, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$nameOverrides:Ljava/util/Map;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$sharedElementsIn:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v0, 0x0
:goto_7
if-ge v0, v3, :cond_23
iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$sharedElementsIn:Ljava/util/ArrayList;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getTransitionName()Ljava/lang/String;
move-result-object v2
iget-object v5, p0, Landroid/support/v4/app/FragmentTransitionCompat21$7;->val$nameOverrides:Ljava/util/Map;
invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v4, v1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_23
return-void
.end method