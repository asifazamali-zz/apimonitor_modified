.class  Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"
.implements Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnQueryTextListenerCompatBridge;
.field final synthetic this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
iput-object p2, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onQueryTextChange(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;
invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public onQueryTextSubmit(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$1;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;
invoke-interface {v0, p1}, Landroid/support/v4/widget/SearchViewCompat$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z
move-result v0
return v0
.end method