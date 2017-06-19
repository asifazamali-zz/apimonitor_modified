.class  Landroid/support/v7/app/AlertController$2;
.super Ljava/lang/Object;
.source "AlertController.java"
.implements Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;
.field final synthetic this$0:Landroid/support/v7/app/AlertController;
.field final synthetic val$bottom:Landroid/view/View;
.field final synthetic val$top:Landroid/view/View;
.method constructor <init>(Landroid/support/v7/app/AlertController;Landroid/view/View;Landroid/view/View;)V
.registers 4
iput-object p1, p0, Landroid/support/v7/app/AlertController$2;->this$0:Landroid/support/v7/app/AlertController;
iput-object p2, p0, Landroid/support/v7/app/AlertController$2;->val$top:Landroid/view/View;
iput-object p3, p0, Landroid/support/v7/app/AlertController$2;->val$bottom:Landroid/view/View;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V
.registers 8
iget-object v0, p0, Landroid/support/v7/app/AlertController$2;->val$top:Landroid/view/View;
iget-object v1, p0, Landroid/support/v7/app/AlertController$2;->val$bottom:Landroid/view/View;
invoke-static {p1, v0, v1}, Landroid/support/v7/app/AlertController;->manageScrollIndicators(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
return-void
.end method