.class  Landroid/support/v7/app/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;
.method constructor <init>(Landroid/support/v7/app/ToolbarActionBar;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/app/ToolbarActionBar$1;->this$0:Landroid/support/v7/app/ToolbarActionBar;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$1;->this$0:Landroid/support/v7/app/ToolbarActionBar;
invoke-virtual {v0}, Landroid/support/v7/app/ToolbarActionBar;->populateOptionsMenu()V
return-void
.end method