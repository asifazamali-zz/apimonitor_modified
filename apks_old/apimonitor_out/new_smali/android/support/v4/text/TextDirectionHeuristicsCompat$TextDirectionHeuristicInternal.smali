.class  Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;
.super Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;
.source "TextDirectionHeuristicsCompat.java"
.field private final mDefaultIsRtl:Z
.method constructor <init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;Z)V
.registers 3
invoke-direct {p0, p1}, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicImpl;-><init>(Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionAlgorithm;)V
iput-boolean p2, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z
return-void
.end method
.method protected defaultIsRtl()Z
.registers 2
iget-boolean v0, p0, Landroid/support/v4/text/TextDirectionHeuristicsCompat$TextDirectionHeuristicInternal;->mDefaultIsRtl:Z
return v0
.end method