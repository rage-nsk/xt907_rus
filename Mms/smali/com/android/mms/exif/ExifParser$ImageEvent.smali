.class Lcom/android/mms/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/exif/ExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field stripIndex:I

.field type:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 880
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 881
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 882
    iput p1, p0, Lcom/android/mms/exif/ExifParser$ImageEvent;->type:I

    .line 883
    return-void
.end method

.method constructor <init>(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "stripIndex"    # I

    .prologue
    .line 885
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 886
    iput p1, p0, Lcom/android/mms/exif/ExifParser$ImageEvent;->type:I

    .line 887
    iput p2, p0, Lcom/android/mms/exif/ExifParser$ImageEvent;->stripIndex:I

    .line 888
    return-void
.end method
