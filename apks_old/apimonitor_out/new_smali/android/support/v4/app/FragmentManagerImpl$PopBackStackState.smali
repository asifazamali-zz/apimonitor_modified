.class  Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"
.implements Landroid/support/v4/app/FragmentManagerImpl$OpGenerator;
.field final mFlags:I
.field final mId:I
.field final mName:Ljava/lang/String;
.field final synthetic this$0:Landroid/support/v4/app/FragmentManagerImpl;
.method constructor <init>(Landroid/support/v4/app/FragmentManagerImpl;Ljava/lang/String;II)V
.registers 5
iput-object p1, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;
iput p3, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I
iput p4, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mFlags:I
return-void
.end method
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
.registers 9
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/support/v4/app/FragmentManagerImpl;
iget-object v3, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;
iget v4, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mId:I
iget v5, p0, Landroid/support/v4/app/FragmentManagerImpl$PopBackStackState;->mFlags:I
move-object v1, p1
move-object v2, p2
invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
move-result v0
return v0
.end method