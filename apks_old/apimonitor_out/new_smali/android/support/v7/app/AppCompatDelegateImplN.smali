.class  Landroid/support/v7/app/AppCompatDelegateImplN;
.super Landroid/support/v7/app/AppCompatDelegateImplV23;
.source "AppCompatDelegateImplN.java"
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatDelegateImplV23;-><init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/AppCompatCallback;)V
return-void
.end method
.method  wrapWindowCallback(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
.registers 3
new-instance v0, Landroid/support/v7/app/AppCompatDelegateImplN$AppCompatWindowCallbackN;
invoke-direct {v0, p0, p1}, Landroid/support/v7/app/AppCompatDelegateImplN$AppCompatWindowCallbackN;-><init>(Landroid/support/v7/app/AppCompatDelegateImplN;Landroid/view/Window$Callback;)V
return-object v0
.end method