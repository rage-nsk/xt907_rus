.class Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$1;
.super Ljava/lang/Object;
.source "WifiP2pGroupCreateDialog.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog$1;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pGroupCreateDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 61
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_2

    .line 62
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_1

    .line 63
    :cond_0
    const-string v1, ""

    .line 66
    :goto_1
    return-object v1

    .line 61
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
