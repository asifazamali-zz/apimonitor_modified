.class  Landroid/support/v4/widget/ScrollerCompatIcs;
.super Ljava/lang/Object;
.source "ScrollerCompatIcs.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getCurrVelocity(Ljava/lang/Object;)F
.registers 2
check-cast p0, Landroid/widget/OverScroller;
invoke-virtual {p0}, Landroid/widget/OverScroller;->getCurrVelocity()F
move-result v0
return v0
.end method