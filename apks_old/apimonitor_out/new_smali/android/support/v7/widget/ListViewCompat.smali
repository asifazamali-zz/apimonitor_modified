.class public Landroid/support/v7/widget/ListViewCompat;
.super Landroid/widget/ListView;
.source "ListViewCompat.java"
.field public static final INVALID_POSITION:I = -0x1
.field public static final NO_POSITION:I = -0x1
.field private static final STATE_SET_NOTHING:[I
.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;
.field protected mMotionPosition:I
.field  mSelectionBottomPadding:I
.field  mSelectionLeftPadding:I
.field  mSelectionRightPadding:I
.field  mSelectionTopPadding:I
.field private mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
.field final mSelectorRect:Landroid/graphics/Rect;
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x0
const/4 v0, 0x1
new-array v0, v0, [I
aput v1, v0, v1
sput-object v0, Landroid/support/v7/widget/ListViewCompat;->STATE_SET_NOTHING:[I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/ListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
const/4 v2, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;
iput v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I
iput v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I
iput v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I
iput v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I
:try_start_13
const-class v1, Landroid/widget/AbsListView;
const-string v2, "mIsChildViewEnabled"
invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v1
iput-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;
iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
:goto_23
:try_end_23
.catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_23} :catch_24
return-void
:catch_24
move-exception v0
invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V
goto :goto_23
.end method
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1}, Landroid/support/v7/widget/ListViewCompat;->drawSelectorCompat(Landroid/graphics/Canvas;)V
invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
return-void
.end method
.method protected drawSelectorCompat(Landroid/graphics/Canvas;)V
.registers 4
iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;
invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z
move-result v1
if-nez v1, :cond_16
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_16
iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_16
return-void
.end method
.method protected drawableStateChanged()V
.registers 2
invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Landroid/support/v7/widget/ListViewCompat;->setSelectorEnabled(Z)V
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->updateSelectorStateCompat()V
return-void
.end method
.method public lookForSelectablePosition(IZ)I
.registers 7
const/4 v2, -0x1
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->isInTouchMode()Z
move-result v3
if-eqz v3, :cond_e
:cond_d
:goto_d
return v2
:cond_e
invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v3
invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z
move-result v3
if-nez v3, :cond_45
if-eqz p2, :cond_2e
const/4 v3, 0x0
invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I
move-result p1
:goto_23
if-ge p1, v1, :cond_3f
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v3
if-nez v3, :cond_3f
add-int/lit8 p1, p1, 0x1
goto :goto_23
:cond_2e
add-int/lit8 v3, v1, -0x1
invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I
move-result p1
:goto_34
if-ltz p1, :cond_3f
invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z
move-result v3
if-nez v3, :cond_3f
add-int/lit8 p1, p1, -0x1
goto :goto_34
:cond_3f
if-ltz p1, :cond_d
if-ge p1, v1, :cond_d
move v2, p1
goto :goto_d
:cond_45
if-ltz p1, :cond_d
if-ge p1, v1, :cond_d
move v2, p1
goto :goto_d
.end method
.method public measureHeightOfChildrenCompat(IIIII)I
.registers 27
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingTop()I
move-result v14
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingBottom()I
move-result v11
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingLeft()I
move-result v12
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getListPaddingRight()I
move-result v13
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getDividerHeight()I
move-result v16
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;
move-result-object v6
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v2
if-nez v2, :cond_21
add-int v15, v14, v11
:goto_20
:cond_20
return v15
:cond_21
add-int v17, v14, v11
if-lez v16, :cond_8b
if-eqz v6, :cond_8b
move/from16 v7, v16
:goto_29
const/4 v15, 0x0
const/4 v3, 0x0
const/16 v18, 0x0
invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I
move-result v5
const/4 v9, 0x0
:goto_32
if-ge v9, v5, :cond_a1
invoke-interface {v2, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I
move-result v10
move/from16 v0, v18
if-eq v10, v0, :cond_3f
const/4 v3, 0x0
move/from16 v18, v10
:cond_3f
move-object/from16 v0, p0
invoke-interface {v2, v9, v3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
if-nez v4, :cond_52
invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ListViewCompat;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_52
iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v19, v0
if-lez v19, :cond_8d
iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
move/from16 v19, v0
const/high16 v20, 0x4000
invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
:goto_62
move/from16 v0, p1
invoke-virtual {v3, v0, v8}, Landroid/view/View;->measure(II)V
invoke-virtual {v3}, Landroid/view/View;->forceLayout()V
if-lez v9, :cond_6e
add-int v17, v17, v7
:cond_6e
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v19
add-int v17, v17, v19
move/from16 v0, v17
move/from16 v1, p4
if-lt v0, v1, :cond_96
if-ltz p5, :cond_88
move/from16 v0, p5
if-le v9, v0, :cond_88
if-lez v15, :cond_88
move/from16 v0, v17
move/from16 v1, p4
if-ne v0, v1, :cond_20
:cond_88
move/from16 v15, p4
goto :goto_20
:cond_8b
const/4 v7, 0x0
goto :goto_29
:cond_8d
const/16 v19, 0x0
const/16 v20, 0x0
invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v8
goto :goto_62
:cond_96
if-ltz p5, :cond_9e
move/from16 v0, p5
if-lt v9, v0, :cond_9e
move/from16 v15, v17
:cond_9e
add-int/lit8 v9, v9, 0x1
goto :goto_32
:cond_a1
move/from16 v15, v17
goto/16 :goto_20
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 4
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_1e
:goto_7
invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
:pswitch_c
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v0
float-to-int v0, v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
float-to-int v1, v1
invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/ListViewCompat;->pointToPosition(II)I
move-result v0
iput v0, p0, Landroid/support/v7/widget/ListViewCompat;->mMotionPosition:I
goto :goto_7
nop
:pswitch_data_1e
.packed-switch 0x0
:pswitch_c
.end packed-switch
.end method
.method protected positionSelectorCompat(ILandroid/view/View;)V
.registers 10
iget-object v2, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;
invoke-virtual {p2}, Landroid/view/View;->getLeft()I
move-result v3
invoke-virtual {p2}, Landroid/view/View;->getTop()I
move-result v4
invoke-virtual {p2}, Landroid/view/View;->getRight()I
move-result v5
invoke-virtual {p2}, Landroid/view/View;->getBottom()I
move-result v6
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V
iget v3, v2, Landroid/graphics/Rect;->left:I
iget v4, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I
sub-int/2addr v3, v4
iput v3, v2, Landroid/graphics/Rect;->left:I
iget v3, v2, Landroid/graphics/Rect;->top:I
iget v4, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I
sub-int/2addr v3, v4
iput v3, v2, Landroid/graphics/Rect;->top:I
iget v3, v2, Landroid/graphics/Rect;->right:I
iget v4, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I
add-int/2addr v3, v4
iput v3, v2, Landroid/graphics/Rect;->right:I
iget v3, v2, Landroid/graphics/Rect;->bottom:I
iget v4, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I
add-int/2addr v3, v4
iput v3, v2, Landroid/graphics/Rect;->bottom:I
:try_start_31
iget-object v3, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;
invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
move-result v1
invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z
move-result v3
if-eq v3, v1, :cond_4f
iget-object v4, p0, Landroid/support/v7/widget/ListViewCompat;->mIsChildViewEnabled:Ljava/lang/reflect/Field;
if-nez v1, :cond_50
const/4 v3, 0x1
:goto_42
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
const/4 v3, -0x1
if-eq p1, v3, :cond_4f
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->refreshDrawableState()V
:try_end_4f
.catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_4f} :catch_52
:goto_4f
:cond_4f
return-void
:cond_50
const/4 v3, 0x0
goto :goto_42
:catch_52
move-exception v0
invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V
goto :goto_4f
.end method
.method protected positionSelectorLikeFocusCompat(ILandroid/view/View;)V
.registers 11
const/4 v5, 0x1
const/4 v6, 0x0
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;
move-result-object v2
if-eqz v2, :cond_2d
const/4 v7, -0x1
if-eq p1, v7, :cond_2d
move v1, v5
:goto_c
if-eqz v1, :cond_11
invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
:cond_11
invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ListViewCompat;->positionSelectorCompat(ILandroid/view/View;)V
if-eqz v1, :cond_2c
iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectorRect:Landroid/graphics/Rect;
invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F
move-result v3
invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F
move-result v4
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getVisibility()I
move-result v7
if-nez v7, :cond_2f
:goto_26
invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
invoke-static {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V
:cond_2c
return-void
:cond_2d
move v1, v6
goto :goto_c
:cond_2f
move v5, v6
goto :goto_26
.end method
.method protected positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
.registers 7
invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/ListViewCompat;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_f
const/4 v1, -0x1
if-eq p1, v1, :cond_f
invoke-static {v0, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V
:cond_f
return-void
.end method
.method public setSelector(Landroid/graphics/drawable/Drawable;)V
.registers 4
if-eqz p1, :cond_29
new-instance v1, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
invoke-direct {v1, p1}, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V
:goto_7
iput-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
iget-object v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
invoke-super {p0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
if-eqz p1, :cond_18
invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
:cond_18
iget v1, v0, Landroid/graphics/Rect;->left:I
iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionLeftPadding:I
iget v1, v0, Landroid/graphics/Rect;->top:I
iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionTopPadding:I
iget v1, v0, Landroid/graphics/Rect;->right:I
iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionRightPadding:I
iget v1, v0, Landroid/graphics/Rect;->bottom:I
iput v1, p0, Landroid/support/v7/widget/ListViewCompat;->mSelectionBottomPadding:I
return-void
:cond_29
const/4 v1, 0x0
goto :goto_7
.end method
.method protected setSelectorEnabled(Z)V
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/widget/ListViewCompat;->mSelector:Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;
invoke-virtual {v0, p1}, Landroid/support/v7/widget/ListViewCompat$GateKeeperDrawable;->setEnabled(Z)V
:cond_9
return-void
.end method
.method protected shouldShowSelectorCompat()Z
.registers 2
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->touchModeDrawsInPressedStateCompat()Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->isPressed()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method protected touchModeDrawsInPressedStateCompat()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected updateSelectorStateCompat()V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getSelector()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_13
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->shouldShowSelectorCompat()Z
move-result v1
if-eqz v1, :cond_13
invoke-virtual {p0}, Landroid/support/v7/widget/ListViewCompat;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_13
return-void
.end method