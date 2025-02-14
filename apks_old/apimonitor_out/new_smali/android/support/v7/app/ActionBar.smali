.class public abstract Landroid/support/v7/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"
.field public static final DISPLAY_HOME_AS_UP:I = 0x4
.field public static final DISPLAY_SHOW_CUSTOM:I = 0x10
.field public static final DISPLAY_SHOW_HOME:I = 0x2
.field public static final DISPLAY_SHOW_TITLE:I = 0x8
.field public static final DISPLAY_USE_LOGO:I = 0x1
.field public static final NAVIGATION_MODE_LIST:I = 0x1
.field public static final NAVIGATION_MODE_STANDARD:I = 0x0
.field public static final NAVIGATION_MODE_TABS:I = 0x2
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public abstract addOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
.end method
.method public abstract addTab(Landroid/support/v7/app/ActionBar$Tab;)V
.end method
.method public abstract addTab(Landroid/support/v7/app/ActionBar$Tab;I)V
.end method
.method public abstract addTab(Landroid/support/v7/app/ActionBar$Tab;IZ)V
.end method
.method public abstract addTab(Landroid/support/v7/app/ActionBar$Tab;Z)V
.end method
.method public collapseActionView()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public dispatchMenuVisibilityChanged(Z)V
.registers 2
return-void
.end method
.method public abstract getCustomView()Landroid/view/View;
.end method
.method public abstract getDisplayOptions()I
.end method
.method public getElevation()F
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract getHeight()I
.end method
.method public getHideOffset()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract getNavigationItemCount()I
.end method
.method public abstract getNavigationMode()I
.end method
.method public abstract getSelectedNavigationIndex()I
.end method
.method public abstract getSelectedTab()Landroid/support/v7/app/ActionBar$Tab;
.end method
.method public abstract getSubtitle()Ljava/lang/CharSequence;
.end method
.method public abstract getTabAt(I)Landroid/support/v7/app/ActionBar$Tab;
.end method
.method public abstract getTabCount()I
.end method
.method public getThemedContext()Landroid/content/Context;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getTitle()Ljava/lang/CharSequence;
.end method
.method public abstract hide()V
.end method
.method public invalidateOptionsMenu()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isHideOnContentScrollEnabled()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract isShowing()Z
.end method
.method public isTitleTruncated()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract newTab()Landroid/support/v7/app/ActionBar$Tab;
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 2
return-void
.end method
.method  onDestroy()V
.registers 1
return-void
.end method
.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public openOptionsMenu()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract removeAllTabs()V
.end method
.method public abstract removeOnMenuVisibilityListener(Landroid/support/v7/app/ActionBar$OnMenuVisibilityListener;)V
.end method
.method public abstract removeTab(Landroid/support/v7/app/ActionBar$Tab;)V
.end method
.method public abstract removeTabAt(I)V
.end method
.method  requestFocus()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract selectTab(Landroid/support/v7/app/ActionBar$Tab;)V
.end method
.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.parameter
.end parameter
.end method
.method public abstract setCustomView(I)V
.end method
.method public abstract setCustomView(Landroid/view/View;)V
.end method
.method public abstract setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V
.end method
.method public setDefaultDisplayHomeAsUpEnabled(Z)V
.registers 2
return-void
.end method
.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method
.method public abstract setDisplayOptions(I)V
.end method
.method public abstract setDisplayOptions(II)V
.end method
.method public abstract setDisplayShowCustomEnabled(Z)V
.end method
.method public abstract setDisplayShowHomeEnabled(Z)V
.end method
.method public abstract setDisplayShowTitleEnabled(Z)V
.end method
.method public abstract setDisplayUseLogoEnabled(Z)V
.end method
.method public setElevation(F)V
.registers 4
const/4 v0, 0x0
cmpl-float v0, p1, v0
if-eqz v0, :cond_d
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Setting a non-zero elevation is not supported in this action bar configuration."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
return-void
.end method
.method public setHideOffset(I)V
.registers 4
if-eqz p1, :cond_a
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Setting an explicit action bar hide offset is not supported in this action bar configuration."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
return-void
.end method
.method public setHideOnContentScrollEnabled(Z)V
.registers 4
if-eqz p1, :cond_a
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Hide on content scroll is not supported in this action bar configuration."
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
return-void
.end method
.method public setHomeActionContentDescription(I)V
.registers 2
.parameter
.end parameter
return-void
.end method
.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
.registers 2
.parameter
.end parameter
return-void
.end method
.method public setHomeAsUpIndicator(I)V
.registers 2
.parameter
.end parameter
return-void
.end method
.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
.registers 2
.parameter
.end parameter
return-void
.end method
.method public setHomeButtonEnabled(Z)V
.registers 2
return-void
.end method
.method public abstract setIcon(I)V
.parameter
.end parameter
.end method
.method public abstract setIcon(Landroid/graphics/drawable/Drawable;)V
.end method
.method public abstract setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/support/v7/app/ActionBar$OnNavigationListener;)V
.end method
.method public abstract setLogo(I)V
.parameter
.end parameter
.end method
.method public abstract setLogo(Landroid/graphics/drawable/Drawable;)V
.end method
.method public abstract setNavigationMode(I)V
.end method
.method public abstract setSelectedNavigationItem(I)V
.end method
.method public setShowHideAnimationEnabled(Z)V
.registers 2
return-void
.end method
.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 2
return-void
.end method
.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 2
return-void
.end method
.method public abstract setSubtitle(I)V
.end method
.method public abstract setSubtitle(Ljava/lang/CharSequence;)V
.end method
.method public abstract setTitle(I)V
.parameter
.end parameter
.end method
.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method
.method public setWindowTitle(Ljava/lang/CharSequence;)V
.registers 2
return-void
.end method
.method public abstract show()V
.end method
.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method