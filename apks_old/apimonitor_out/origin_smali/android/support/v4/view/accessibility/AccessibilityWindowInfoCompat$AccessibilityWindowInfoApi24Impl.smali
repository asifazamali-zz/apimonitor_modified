.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoApi24Impl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi24;->getAnchor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3

    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi24;->getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
