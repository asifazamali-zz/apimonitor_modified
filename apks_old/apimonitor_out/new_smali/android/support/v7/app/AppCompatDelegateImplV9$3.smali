.class  Landroid/support/v7/app/AppCompatDelegateImplV9$3;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"
.implements Landroid/support/v7/widget/FitWindowsViewGroup$OnFitSystemWindowsListener;
.field final synthetic this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV9;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$3;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onFitSystemWindows(Landroid/graphics/Rect;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV9$3;->this$0:Landroid/support/v7/app/AppCompatDelegateImplV9;
iget v1, p1, Landroid/graphics/Rect;->top:I
invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatDelegateImplV9;->updateStatusGuard(I)I
move-result v0
iput v0, p1, Landroid/graphics/Rect;->top:I
return-void
.end method