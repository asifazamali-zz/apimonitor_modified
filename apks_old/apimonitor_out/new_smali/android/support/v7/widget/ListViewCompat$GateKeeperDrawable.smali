.class  Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
.super Landroid/support/v7/graphics/drawable/DrawableWrapper;
.source "ListViewCompat.java"
.field private mEnabled:Z
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z
return-void
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 3
iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z
if-eqz v0, :cond_7
invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->draw(Landroid/graphics/Canvas;)V
:cond_7
return-void
.end method
.method  setEnabled(Z)V
.registers 2
iput-boolean p1, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z
return-void
.end method
.method public setHotspot(FF)V
.registers 4
iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z
if-eqz v0, :cond_7
invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspot(FF)V
:cond_7
return-void
.end method
.method public setHotspotBounds(IIII)V
.registers 6
iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z
if-eqz v0, :cond_7
invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setHotspotBounds(IIII)V
:cond_7
return-void
.end method
.method public setState([I)Z
.registers 3
iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z
if-eqz v0, :cond_9
invoke-super {p0, p1}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setState([I)Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public setVisible(ZZ)Z
.registers 4
iget-boolean v0, p0, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->mEnabled:Z
if-eqz v0, :cond_9
invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableWrapper;->setVisible(ZZ)Z
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method