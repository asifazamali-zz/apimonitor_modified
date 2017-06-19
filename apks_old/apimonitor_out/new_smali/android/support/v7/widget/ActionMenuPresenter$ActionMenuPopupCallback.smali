.class  Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;
.super Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;
.source "ActionMenuPresenter.java"
.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;
.method constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;
invoke-direct {p0}, Landroid/support/v7/view/menu/ActionMenuItemView$PopupCallback;-><init>()V
return-void
.end method
.method public getPopup()Landroid/support/v7/view/menu/ShowableListMenu;
.registers 2
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
if-eqz v0, :cond_f
iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;
iget-object v0, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->getPopup()Landroid/support/v7/view/menu/MenuPopup;
move-result-object v0
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method