.class  Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;
.super Ljava/lang/Object;
.source "SearchViewCompat.java"
.implements Landroid/support/v4/widget/SearchViewCompatHoneycomb$OnCloseListenerCompatBridge;
.field final synthetic this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
.field final synthetic val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;
.method constructor <init>(Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;->this$0:Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl;
iput-object p2, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClose()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/widget/SearchViewCompat$SearchViewCompatHoneycombImpl$2;->val$listener:Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;
invoke-interface {v0}, Landroid/support/v4/widget/SearchViewCompat$OnCloseListener;->onClose()Z
move-result v0
return v0
.end method