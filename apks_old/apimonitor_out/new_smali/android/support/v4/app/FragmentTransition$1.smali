.class final Landroid/support/v4/app/FragmentTransition$1;
.super Ljava/lang/Object;
.source "FragmentTransition.java"
.implements Ljava/lang/Runnable;
.field final synthetic val$exitingViews:Ljava/util/ArrayList;
.method constructor <init>(Ljava/util/ArrayList;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/app/FragmentTransition$1;->val$exitingViews:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/FragmentTransition$1;->val$exitingViews:Ljava/util/ArrayList;
const/4 v1, 0x4
#calls: Landroid/support/v4/app/FragmentTransition;->setViewVisibility(Ljava/util/ArrayList;I)V
invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransition;->access$000(Ljava/util/ArrayList;I)V
return-void
.end method