.class  Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"
.field public final menu:Landroid/support/v7/view/menu/MenuBuilder;
.field public final position:I
.field public final window:Landroid/support/v7/widget/MenuPopupWindow;
.method public constructor <init>(Landroid/support/v7/widget/MenuPopupWindow;Landroid/support/v7/view/menu/MenuBuilder;I)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
iput-object p2, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Landroid/support/v7/view/menu/MenuBuilder;
iput p3, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I
return-void
.end method
.method public getListView()Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Landroid/support/v7/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/support/v7/widget/MenuPopupWindow;
invoke-virtual {v0}, Landroid/support/v7/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;
move-result-object v0
return-object v0
.end method