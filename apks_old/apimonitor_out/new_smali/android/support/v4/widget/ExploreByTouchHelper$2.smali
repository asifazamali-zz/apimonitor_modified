.class final Landroid/support/v4/widget/ExploreByTouchHelper$2;
.super Ljava/lang/Object;
.source "ExploreByTouchHelper.java"
.implements Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public get(Landroid/support/v4/util/SparseArrayCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.registers 4
invoke-virtual {p1, p2}, Landroid/support/v4/util/SparseArrayCompat;->valueAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
return-object v0
.end method
.method public bridge synthetic get(Ljava/lang/Object;I)Ljava/lang/Object;
.registers 4
check-cast p1, Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper$2;->get(Landroid/support/v4/util/SparseArrayCompat;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
move-result-object v0
return-object v0
.end method
.method public size(Landroid/support/v4/util/SparseArrayCompat;)I
.registers 3
invoke-virtual {p1}, Landroid/support/v4/util/SparseArrayCompat;->size()I
move-result v0
return v0
.end method
.method public bridge synthetic size(Ljava/lang/Object;)I
.registers 3
check-cast p1, Landroid/support/v4/util/SparseArrayCompat;
invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper$2;->size(Landroid/support/v4/util/SparseArrayCompat;)I
move-result v0
return v0
.end method