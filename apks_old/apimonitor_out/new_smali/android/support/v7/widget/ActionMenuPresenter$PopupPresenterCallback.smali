.class  Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"
.implements Landroid/support/v7/view/menu/MenuPresenter$Callback;
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;
.method constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
.registers 6
instance-of v1, p1, Landroid/support/v7/view/menu/SubMenuBuilder;
if-eqz v1, :cond_c
invoke-virtual {p1}, Landroid/support/v7/view/menu/MenuBuilder;->getRootMenu()Landroid/support/v7/view/menu/MenuBuilder;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuBuilder;->close(Z)V
:cond_c
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->getCallback()Landroid/support/v7/view/menu/MenuPresenter$Callback;
move-result-object v0
if-eqz v0, :cond_17
invoke-interface {v0, p1, p2}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/view/menu/MenuBuilder;Z)V
:cond_17
return-void
.end method
.method public onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
.registers 6
const/4 v2, 0x0
if-nez p1, :cond_4
:goto_3
return v2
:cond_4
iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;
move-object v1, p1
check-cast v1, Landroid/support/v7/view/menu/SubMenuBuilder;
invoke-virtual {v1}, Landroid/support/v7/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;
move-result-object v1
invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I
move-result v1
iput v1, v3, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I
iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter;->getCallback()Landroid/support/v7/view/menu/MenuPresenter$Callback;
move-result-object v0
if-eqz v0, :cond_21
invoke-interface {v0, p1}, Landroid/support/v7/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/view/menu/MenuBuilder;)Z
move-result v1
:goto_1f
move v2, v1
goto :goto_3
:cond_21
move v1, v2
goto :goto_1f
.end method