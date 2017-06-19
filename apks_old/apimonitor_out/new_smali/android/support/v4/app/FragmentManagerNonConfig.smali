.class public Landroid/support/v4/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "FragmentManagerNonConfig.java"
.field private final mChildNonConfigs:Ljava/util/List;
.field private final mFragments:Ljava/util/List;
.method constructor <init>(Ljava/util/List;Ljava/util/List;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;
iput-object p2, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;
return-void
.end method
.method  getChildNonConfigs()Ljava/util/List;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;
return-object v0
.end method
.method  getFragments()Ljava/util/List;
.registers 2
iget-object v0, p0, Landroid/support/v4/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;
return-object v0
.end method