.class public abstract Landroid/support/v4/view/AbsSavedState;
.super Ljava/lang/Object;
.source "AbsSavedState.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public static final EMPTY_STATE:Landroid/support/v4/view/AbsSavedState;
.field private final mSuperState:Landroid/os/Parcelable;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Landroid/support/v4/view/AbsSavedState$1;
invoke-direct {v0}, Landroid/support/v4/view/AbsSavedState$1;-><init>()V
sput-object v0, Landroid/support/v4/view/AbsSavedState;->EMPTY_STATE:Landroid/support/v4/view/AbsSavedState;
new-instance v0, Landroid/support/v4/view/AbsSavedState$2;
invoke-direct {v0}, Landroid/support/v4/view/AbsSavedState$2;-><init>()V
invoke-static {v0}, Landroid/support/v4/os/ParcelableCompat;->newCreator(Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;)Landroid/os/Parcelable$Creator;
move-result-object v0
sput-object v0, Landroid/support/v4/view/AbsSavedState;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v4/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_c
:goto_9
iput-object v0, p0, Landroid/support/v4/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;
return-void
:cond_c
sget-object v0, Landroid/support/v4/view/AbsSavedState;->EMPTY_STATE:Landroid/support/v4/view/AbsSavedState;
goto :goto_9
.end method
.method protected constructor <init>(Landroid/os/Parcelable;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "superState must not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
sget-object v0, Landroid/support/v4/view/AbsSavedState;->EMPTY_STATE:Landroid/support/v4/view/AbsSavedState;
if-eq p1, v0, :cond_14
:goto_11
iput-object p1, p0, Landroid/support/v4/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;
return-void
:cond_14
const/4 p1, 0x0
goto :goto_11
.end method
.method synthetic constructor <init>(Landroid/support/v4/view/AbsSavedState$1;)V
.registers 2
invoke-direct {p0}, Landroid/support/v4/view/AbsSavedState;-><init>()V
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getSuperState()Landroid/os/Parcelable;
.registers 2
iget-object v0, p0, Landroid/support/v4/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Landroid/support/v4/view/AbsSavedState;->mSuperState:Landroid/os/Parcelable;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
return-void
.end method