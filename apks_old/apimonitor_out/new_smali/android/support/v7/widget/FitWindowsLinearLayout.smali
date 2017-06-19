.class public Landroid/support/v7/widget/FitWindowsLinearLayout;
.super Landroid/widget/LinearLayout;
.source "FitWindowsLinearLayout.java"
.implements Landroid/support/v7/widget/FitWindowsViewGroup;
.field private mListener:Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/FitWindowsLinearLayout;->mListener:Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/FitWindowsLinearLayout;->mListener:Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
invoke-interface {v0, p1}, Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;->onFitSystemWindows(Landroid/graphics/Rect;)V
:cond_9
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z
move-result v0
return v0
.end method
.method public setOnFitSystemWindowsListener(Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/FitWindowsLinearLayout;->mListener:Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
return-void
.end method