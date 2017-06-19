.class  Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "AppCompatDelegateImplV14.java"
.field final synthetic this$1:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
.method constructor <init>(Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager$1;->this$1:Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;
invoke-virtual {v0}, Landroid/support/v7/app/AppCompatDelegateImplV14$AutoNightModeManager;->dispatchTimeChanged()V
return-void
.end method