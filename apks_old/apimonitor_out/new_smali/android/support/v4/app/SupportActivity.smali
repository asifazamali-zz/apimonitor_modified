.class public Landroid/support/v4/app/SupportActivity;
.super Landroid/app/Activity;
.source "SupportActivity.java"
.field private mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Landroid/support/v4/util/SimpleArrayMap;
invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;
return-void
.end method
.method public getExtraData(Ljava/lang/Class;)Landroid/support/v4/app/SupportActivity$ExtraData;
.registers 3
iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;
invoke-virtual {v0, p1}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/SupportActivity$ExtraData;
return-object v0
.end method
.method public putExtraData(Landroid/support/v4/app/SupportActivity$ExtraData;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method