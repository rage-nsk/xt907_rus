.class final enum Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;
.super Ljava/lang/Enum;
.source "WpsP2pDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/p2p/WpsP2pDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DialogState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

.field public static final enum WPS_COMPLETE:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

.field public static final enum WPS_FAILED:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

.field public static final enum WPS_INIT:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

.field public static final enum WPS_START:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 59
    new-instance v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    const-string v1, "WPS_INIT"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_INIT:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    .line 60
    new-instance v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    const-string v1, "WPS_START"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    .line 61
    new-instance v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    const-string v1, "WPS_COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    .line 62
    new-instance v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    const-string v1, "WPS_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_INIT:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_START:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_COMPLETE:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->WPS_FAILED:Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->$VALUES:[Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->$VALUES:[Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    invoke-virtual {v0}, [Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/wifi/p2p/WpsP2pDialog$DialogState;

    return-object v0
.end method
