.class Lcom/android/settings/wifi/OffloadWifiApSelector$1;
.super Landroid/content/BroadcastReceiver;
.source "OffloadWifiApSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/OffloadWifiApSelector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/OffloadWifiApSelector;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/wifi/OffloadWifiApSelector$1;->this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/OffloadWifiApSelector$1;->this$0:Lcom/android/settings/wifi/OffloadWifiApSelector;

    invoke-virtual {v0, p2}, Lcom/android/settings/wifi/OffloadWifiApSelector;->handleEvent(Landroid/content/Intent;)V

    .line 100
    return-void
.end method
