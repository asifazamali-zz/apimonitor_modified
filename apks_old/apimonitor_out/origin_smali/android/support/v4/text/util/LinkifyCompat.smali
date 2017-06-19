.class public final Landroid/support/v4/text/util/LinkifyCompat;
.super Ljava/lang/Object;
.source "LinkifyCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;,
        Landroid/support/v4/text/util/LinkifyCompat$LinkifyMask;
    }
.end annotation


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_STRING:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/support/v4/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    new-instance v0, Landroid/support/v4/text/util/LinkifyCompat$1;

    invoke-direct {v0}, Landroid/support/v4/text/util/LinkifyCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLinkMovementMethod(Landroid/widget/TextView;)V
    .registers 3
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter

    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-eqz v0, :cond_a

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_17

    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_17
    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .registers 9
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 11
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void
.end method

.method public static final addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 13
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p0}, Landroid/support/v4/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    :cond_19
    return-void
.end method

.method public static final addLinks(Landroid/text/Spannable;I)Z
    .registers 14
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_7

    move v1, v10

    :goto_6
    return v1

    :cond_7
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v10, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    array-length v1, v9

    add-int/lit8 v7, v1, -0x1

    :goto_16
    if-ltz v7, :cond_20

    aget-object v1, v9, v7

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_16

    :cond_20
    const/4 v6, 0x0

    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2a

    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v6

    :cond_2a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_4b

    sget-object v2, Landroid/support/v4/util/PatternsCompat;->AUTOLINK_WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v10

    const-string v1, "https://"

    aput-object v1, v3, v11

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_4b
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_5c

    sget-object v2, Landroid/support/v4/util/PatternsCompat;->AUTOLINK_EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "mailto:"

    aput-object v1, v3, v10

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_5c
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_63

    invoke-static {v0, p0}, Landroid/support/v4/text/util/LinkifyCompat;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    :cond_63
    invoke-static {v0, p0}, Landroid/support/v4/text/util/LinkifyCompat;->pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6e

    move v1, v10

    goto :goto_6

    :cond_6e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_72
    :goto_72
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    iget-object v2, v8, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-nez v2, :cond_72

    iget-object v2, v8, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    iget v3, v8, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v4, v8, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-static {v2, v3, v4, p0}, Landroid/support/v4/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_72

    :cond_8c
    move v1, v11

    goto/16 :goto_6
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;)Z
    .registers 9
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 11
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result v0

    return v0
.end method

.method public static final addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z
    .registers 18
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    if-eqz p3, :cond_a

    array-length v10, p3

    const/4 v11, 0x1

    if-ge v10, v11, :cond_c

    :cond_a
    sget-object p3, Landroid/support/v4/text/util/LinkifyCompat;->EMPTY_STRING:[Ljava/lang/String;

    :cond_c
    array-length v10, p3

    add-int/lit8 v10, v10, 0x1

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    sget-object v11, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v4, 0x0

    :goto_1b
    array-length v10, p3

    if-ge v4, v10, :cond_32

    aget-object v6, p3, v4

    add-int/lit8 v11, v4, 0x1

    if-nez v6, :cond_2b

    const-string v10, ""

    :goto_26
    aput-object v10, v7, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_2b
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    goto :goto_26

    :cond_32
    const/4 v3, 0x0

    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    :cond_37
    :goto_37
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_60

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v1, 0x1

    if-eqz p4, :cond_4e

    move-object/from16 v0, p4

    invoke-interface {v0, p0, v8, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v1

    :cond_4e
    if-eqz v1, :cond_37

    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-static {v10, v7, v5, v0}, Landroid/support/v4/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8, v2, p0}, Landroid/support/v4/text/util/LinkifyCompat;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    const/4 v3, 0x1

    goto :goto_37

    :cond_60
    return v3
.end method

.method public static final addLinks(Landroid/widget/TextView;I)Z
    .registers 7
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v2

    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_1a

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1, p1}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Landroid/support/v4/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    goto :goto_4

    :cond_1a
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/text/util/LinkifyCompat;->addLinks(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Landroid/support/v4/text/util/LinkifyCompat;->addLinkMovementMethod(Landroid/widget/TextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v2, v3

    goto :goto_4
.end method

.method private static applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .registers 6

    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    if-eqz p4, :cond_1a

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1a
    new-instance v2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v2}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Landroid/support/v4/text/util/LinkifyCompat;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    iput v3, v2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    iput v0, v2, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_32
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v1, 0x0

    :goto_5
    :try_start_5
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_12

    :cond_11
    :goto_11
    return-void

    :cond_12
    new-instance v6, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v6}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int v4, v7, v5

    add-int v9, v1, v7

    iput v9, v6, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    add-int v9, v1, v4

    iput v9, v6, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_28} :catch_4a

    move-result-object v8

    add-int/2addr v1, v4

    const/4 v3, 0x0

    :try_start_2b
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_30
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_30} :catch_4c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2b .. :try_end_30} :catch_4a

    move-result-object v3

    :try_start_31
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->url:Ljava/lang/String;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_31 .. :try_end_49} :catch_4a

    goto :goto_5

    :catch_4a
    move-exception v2

    goto :goto_11

    :catch_4c
    move-exception v2

    goto :goto_5
.end method

.method private static makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .registers 13
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end parameter

    const/4 v2, 0x0

    if-eqz p3, :cond_7

    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_7
    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_9
    array-length v0, p1

    if-ge v8, v0, :cond_4c

    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v7, 0x1

    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4c
    if-nez v7, :cond_64

    array-length v0, p1

    if-lez v0, :cond_64

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_64
    return-object p0

    :cond_65
    add-int/lit8 v8, v8, 0x1

    goto :goto_9
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x0

    invoke-interface {p1}, Landroid/text/Spannable;->length()I

    move-result v9

    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {p1, v8, v9, v10}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    const/4 v2, 0x0

    :goto_e
    array-length v8, v7

    if-ge v2, v8, :cond_30

    new-instance v6, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    invoke-direct {v6}, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;-><init>()V

    aget-object v8, v7, v2

    iput-object v8, v6, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    aget-object v8, v7, v2

    invoke-interface {p1, v8}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    iput v8, v6, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    aget-object v8, v7, v2

    invoke-interface {p1, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    iput v8, v6, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_30
    sget-object v8, Landroid/support/v4/text/util/LinkifyCompat;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_3a
    add-int/lit8 v8, v3, -0x1

    if-ge v2, v8, :cond_97

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    const/4 v4, -0x1

    iget v8, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    iget v9, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    if-gt v8, v9, :cond_94

    iget v8, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v9, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    if-le v8, v9, :cond_94

    iget v8, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v9, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    if-gt v8, v9, :cond_77

    add-int/lit8 v4, v2, 0x1

    :cond_61
    :goto_61
    const/4 v8, -0x1

    if-eq v4, v8, :cond_94

    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;

    iget-object v5, v8, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->frameworkAddedSpan:Landroid/text/style/URLSpan;

    if-eqz v5, :cond_71

    invoke-interface {p1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_71
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_3a

    :cond_77
    iget v8, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v9, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v10, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v9, v10

    if-le v8, v9, :cond_86

    add-int/lit8 v4, v2, 0x1

    goto :goto_61

    :cond_86
    iget v8, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v9, v0, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->end:I

    iget v10, v1, Landroid/support/v4/text/util/LinkifyCompat$LinkSpec;->start:I

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_61

    move v4, v2

    goto :goto_61

    :cond_94
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    :cond_97
    return-void
.end method
