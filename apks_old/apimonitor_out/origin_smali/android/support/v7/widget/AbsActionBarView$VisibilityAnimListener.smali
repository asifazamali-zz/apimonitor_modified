.class public Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Landroid/support/v7/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Landroid/support/v7/widget/AbsActionBarView;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 4

    iget-boolean v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    iget v1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    #calls: Landroid/view/ViewGroup;->setVisibility(I)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/AbsActionBarView;->access$101(Landroid/support/v7/widget/AbsActionBarView;I)V

    goto :goto_4
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    #calls: Landroid/view/ViewGroup;->setVisibility(I)V
    invoke-static {v0, v1}, Landroid/support/v7/widget/AbsActionBarView;->access$001(Landroid/support/v7/widget/AbsActionBarView;I)V

    iput-boolean v1, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Landroid/support/v7/widget/AbsActionBarView;

    iput-object p1, v0, Landroid/support/v7/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput p2, p0, Landroid/support/v7/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return-object p0
.end method
