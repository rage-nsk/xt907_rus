.class Lcom/android/mms/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field ifd:I

.field isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "ifd"    # I
    .param p2, "isInterestedIfd"    # Z

    .prologue
    .line 895
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iput p1, p0, Lcom/android/mms/exif/ExifParser$IfdEvent;->ifd:I

    .line 897
    iput-boolean p2, p0, Lcom/android/mms/exif/ExifParser$IfdEvent;->isRequested:Z

    .line 898
    return-void
.end method
