.class Lcom/android/mms/data/WorkingMessage$MmsInfo;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/data/WorkingMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MmsInfo"
.end annotation


# instance fields
.field public priority:I

.field public subject:Ljava/lang/String;

.field public uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1883
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/data/WorkingMessage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/data/WorkingMessage$1;

    .prologue
    .line 1883
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage$MmsInfo;-><init>()V

    return-void
.end method
