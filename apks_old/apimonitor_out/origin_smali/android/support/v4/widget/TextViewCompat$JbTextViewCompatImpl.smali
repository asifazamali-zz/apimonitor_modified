.class Landroid/support/v4/widget/TextViewCompat$JbTextViewCompatImpl;
.super Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/TextViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JbTextViewCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/widget/TextViewCompat$BaseTextViewCompatImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getMaxLines(Landroid/widget/TextView;)I
    .registers 3

    invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatJb;->getMaxLines(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method

.method public getMinLines(Landroid/widget/TextView;)I
    .registers 3

    invoke-static {p1}, Landroid/support/v4/widget/TextViewCompatJb;->getMinLines(Landroid/widget/TextView;)I

    move-result v0

    return v0
.end method
