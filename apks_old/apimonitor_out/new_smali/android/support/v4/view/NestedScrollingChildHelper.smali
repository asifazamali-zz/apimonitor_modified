.class public Landroid/support/v4/view/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"
.field private mIsNestedScrollingEnabled:Z
.field private mNestedScrollingParent:Landroid/view/ViewParent;
.field private mTempNestedScrollConsumed:[I
.field private final mView:Landroid/view/View;
.method public constructor <init>(Landroid/view/View;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
return-void
.end method
.method public dispatchNestedFling(FFZ)Z
.registers 6
invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-static {v0, v1, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedFling(Landroid/view/ViewParent;Landroid/view/View;FFZ)Z
move-result v0
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public dispatchNestedPreFling(FF)Z
.registers 5
invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z
move-result v0
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
if-eqz v0, :cond_13
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-static {v0, v1, p1, p2}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreFling(Landroid/view/ViewParent;Landroid/view/View;FF)Z
move-result v0
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method
.method public dispatchNestedPreScroll(II[I[I)Z
.registers 11
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z
move-result v4
if-eqz v4, :cond_4f
iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
if-eqz v4, :cond_4f
if-nez p1, :cond_10
if-eqz p2, :cond_50
:cond_10
const/4 v0, 0x0
const/4 v1, 0x0
if-eqz p4, :cond_1d
iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V
aget v0, p4, v2
aget v1, p4, v3
:cond_1d
if-nez p3, :cond_2a
iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I
if-nez v4, :cond_28
const/4 v4, 0x2
new-array v4, v4, [I
iput-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I
:cond_28
iget-object p3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I
:cond_2a
aput v2, p3, v2
aput v2, p3, v3
iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
iget-object v5, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-static {v4, v5, p1, p2, p3}, Landroid/support/v4/view/ViewParentCompat;->onNestedPreScroll(Landroid/view/ViewParent;Landroid/view/View;II[I)V
if-eqz p4, :cond_46
iget-object v4, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V
aget v4, p4, v2
sub-int/2addr v4, v0
aput v4, p4, v2
aget v4, p4, v3
sub-int/2addr v4, v1
aput v4, p4, v3
:cond_46
aget v4, p3, v2
if-nez v4, :cond_4e
aget v4, p3, v3
if-eqz v4, :cond_4f
:cond_4e
move v2, v3
:goto_4f
:cond_4f
return v2
:cond_50
if-eqz p4, :cond_4f
aput v2, p4, v2
aput v2, p4, v3
goto :goto_4f
.end method
.method public dispatchNestedScroll(IIII[I)Z
.registers 16
const/4 v8, 0x1
const/4 v9, 0x0
invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z
move-result v0
if-eqz v0, :cond_45
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
if-eqz v0, :cond_45
if-nez p1, :cond_14
if-nez p2, :cond_14
if-nez p3, :cond_14
if-eqz p4, :cond_3f
:cond_14
const/4 v6, 0x0
const/4 v7, 0x0
if-eqz p5, :cond_21
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V
aget v6, p5, v9
aget v7, p5, v8
:cond_21
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
move v2, p1
move v3, p2
move v4, p3
move v5, p4
invoke-static/range {v0 .. v5}, Landroid/support/v4/view/ViewParentCompat;->onNestedScroll(Landroid/view/ViewParent;Landroid/view/View;IIII)V
if-eqz p5, :cond_3d
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-virtual {v0, p5}, Landroid/view/View;->getLocationInWindow([I)V
aget v0, p5, v9
sub-int/2addr v0, v6
aput v0, p5, v9
aget v0, p5, v8
sub-int/2addr v0, v7
aput v0, p5, v8
:cond_3d
move v0, v8
:goto_3e
return v0
:cond_3f
if-eqz p5, :cond_45
aput v9, p5, v9
aput v9, p5, v8
:cond_45
move v0, v9
goto :goto_3e
.end method
.method public hasNestedScrollingParent()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isNestedScrollingEnabled()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z
return v0
.end method
.method public onDetachedFromWindow()V
.registers 2
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V
return-void
.end method
.method public onStopNestedScroll(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V
return-void
.end method
.method public setNestedScrollingEnabled(Z)V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V
:cond_9
iput-boolean p1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z
return-void
.end method
.method public startNestedScroll(I)Z
.registers 6
const/4 v2, 0x1
invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z
move-result v3
if-eqz v3, :cond_8
:goto_7
return v2
:cond_8
invoke-virtual {p0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z
move-result v3
if-eqz v3, :cond_34
iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
:goto_16
if-eqz v1, :cond_34
iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/ViewParentCompat;->onStartNestedScroll(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)Z
move-result v3
if-eqz v3, :cond_28
iput-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
iget-object v3, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-static {v1, v0, v3, p1}, Landroid/support/v4/view/ViewParentCompat;->onNestedScrollAccepted(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/View;I)V
goto :goto_7
:cond_28
instance-of v3, v1, Landroid/view/View;
if-eqz v3, :cond_2f
move-object v0, v1
check-cast v0, Landroid/view/View;
:cond_2f
invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;
move-result-object v1
goto :goto_16
:cond_34
const/4 v2, 0x0
goto :goto_7
.end method
.method public stopNestedScroll()V
.registers 3
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
if-eqz v0, :cond_e
iget-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
iget-object v1, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mView:Landroid/view/View;
invoke-static {v0, v1}, Landroid/support/v4/view/ViewParentCompat;->onStopNestedScroll(Landroid/view/ViewParent;Landroid/view/View;)V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/view/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;
:cond_e
return-void
.end method