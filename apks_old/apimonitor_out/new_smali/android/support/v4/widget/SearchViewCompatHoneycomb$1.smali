.class final Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;
.super Ljava/lang/Object;
.source "SearchViewCompatHoneycomb.java"
.implements Landroid/widget/SearchView$OnQueryTextListener;
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;->val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onQueryTextChange(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;->val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;->onQueryTextChange(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public onQueryTextSubmit(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompatHoneycomb$1;->val$listener:Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;->onQueryTextSubmit(Ljava/lang/String;)Z
move-result v0
return v0
.end method