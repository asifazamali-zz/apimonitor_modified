.class  Landroid/support/v7/widget/ActivityChooserView$4;
.super Landroid/database/DataSetObserver;
.source "ActivityChooserView.java"
.field final synthetic this$0:Landroid/support/v7/widget/ActivityChooserView;
.method constructor <init>(Landroid/support/v7/widget/ActivityChooserView;)V
.registers 2
iput-object p1, p0, Landroid/support/v7/widget/ActivityChooserView$4;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 2
invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V
iget-object v0, p0, Landroid/support/v7/widget/ActivityChooserView$4;->this$0:Landroid/support/v7/widget/ActivityChooserView;
invoke-virtual {v0}, Landroid/support/v7/widget/ActivityChooserView;->updateAppearance()V
return-void
.end method