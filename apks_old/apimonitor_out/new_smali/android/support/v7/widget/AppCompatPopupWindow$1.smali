.class final Landroid/support/v7/widget/AppCompatPopupWindow$1;
.super Ljava/lang/Object;
.source "AppCompatPopupWindow.java"
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.field final synthetic val$fieldAnchor:Ljava/lang/reflect/Field;
.field final synthetic val$originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.field final synthetic val$popup:Landroid/widget/PopupWindow;
.method constructor <init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
.registers 4
iput-object p1, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$fieldAnchor:Ljava/lang/reflect/Field;
iput-object p2, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$popup:Landroid/widget/PopupWindow;
iput-object p3, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onScrollChanged()V
.registers 4
:try_start_0
iget-object v1, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$fieldAnchor:Ljava/lang/reflect/Field;
iget-object v2, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$popup:Landroid/widget/PopupWindow;
invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_12
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_13
:cond_12
:goto_12
return-void
:cond_13
iget-object v1, p0, Landroid/support/v7/widget/AppCompatPopupWindow$1;->val$originalListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;
invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V
:try_end_18
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_18} :catch_19
goto :goto_12
:catch_19
move-exception v1
goto :goto_12
.end method