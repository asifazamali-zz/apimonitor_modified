.class  Landroid/support/v4/print/PrintHelperApi23;
.super Landroid/support/v4/print/PrintHelperApi20;
.source "PrintHelperApi23.java"
.method constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelperApi20;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/print/PrintHelperApi23;->mIsMinMarginsHandlingCorrect:Z
return-void
.end method
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/print/PrintHelperApi20;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
move-result-object v0
invoke-virtual {p1}, Landroid/print/PrintAttributes;->getDuplexMode()I
move-result v1
if-eqz v1, :cond_11
invoke-virtual {p1}, Landroid/print/PrintAttributes;->getDuplexMode()I
move-result v1
invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setDuplexMode(I)Landroid/print/PrintAttributes$Builder;
:cond_11
return-object v0
.end method