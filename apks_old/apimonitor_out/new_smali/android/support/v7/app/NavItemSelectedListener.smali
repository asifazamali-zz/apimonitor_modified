.class  Landroid/support/v7/app/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field private final mListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;
.method public constructor <init>(Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Landroid/support/v7/app/NavItemSelectedListener;->mListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;
return-void
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
iget-object v0, p0, Landroid/support/v7/app/NavItemSelectedListener;->mListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/app/NavItemSelectedListener;->mListener:Landroid/support/v7/app/ActionBar$OnNavigationListener;
invoke-interface {v0, p3, p4, p5}, Landroid/support/v7/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z
:cond_9
return-void
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 2
return-void
.end method