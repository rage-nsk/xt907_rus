.class Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;
.super Ljava/lang/Object;
.source "WifiApManageDevices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)V
    .locals 0

    .prologue
    .line 774
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    # invokes: Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->updateFields()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->access$1200(Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;)V

    .line 777
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog$1;->this$1:Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApManageDevices$TimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    return-void
.end method
