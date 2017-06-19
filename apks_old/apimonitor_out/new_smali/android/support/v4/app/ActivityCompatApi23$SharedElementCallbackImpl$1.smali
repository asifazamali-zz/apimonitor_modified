.class  Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;
.super Ljava/lang/Object;
.source "ActivityCompatApi23.java"
.implements Landroid/support/v4/app/ActivityCompatApi23$OnSharedElementsReadyListenerBridge;
.field final synthetic this$0:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;
.field final synthetic val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
.method constructor <init>(Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->this$0:Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl;
iput-object p2, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onSharedElementsReady()V
.registers 2
iget-object v0, p0, Landroid/support/v4/app/ActivityCompatApi23$SharedElementCallbackImpl$1;->val$listener:Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;
invoke-interface {v0}, Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;->onSharedElementsReady()V
return-void
.end method