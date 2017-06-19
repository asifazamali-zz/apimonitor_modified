.class  Landroid/support/v4/app/ActivityCompatApi21;
.super Ljava/lang/Object;
.source "ActivityCompatApi21.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static createCallback(Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)Landroid/app/SharedElementCallback;
.registers 2
const/4 v0, 0x0
if-eqz p0, :cond_8
new-instance v0, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;
invoke-direct {v0, p0}, Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallbackImpl;-><init>(Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)V
:cond_8
return-object v0
.end method
.method public static finishAfterTransition(Landroid/app/Activity;)V
.registers 1
invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V
return-void
.end method
.method public static postponeEnterTransition(Landroid/app/Activity;)V
.registers 1
invoke-virtual {p0}, Landroid/app/Activity;->postponeEnterTransition()V
return-void
.end method
.method public static setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)V
.registers 3
invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi21;->createCallback(Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)Landroid/app/SharedElementCallback;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/app/Activity;->setEnterSharedElementCallback(Landroid/app/SharedElementCallback;)V
return-void
.end method
.method public static setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)V
.registers 3
invoke-static {p1}, Landroid/support/v4/app/ActivityCompatApi21;->createCallback(Landroid/support/v4/app/ActivityCompatApi21$SharedElementCallback21;)Landroid/app/SharedElementCallback;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/app/Activity;->setExitSharedElementCallback(Landroid/app/SharedElementCallback;)V
return-void
.end method
.method public static startPostponedEnterTransition(Landroid/app/Activity;)V
.registers 1
invoke-virtual {p0}, Landroid/app/Activity;->startPostponedEnterTransition()V
return-void
.end method