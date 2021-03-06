.class Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;
.super Landroid/app/AlertDialog;
.source "WifiApManageDevices.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApManageDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WpsTimerAlertDialog"
.end annotation


# instance fields
.field private mDuration:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateTimeTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/settings/wifi/WifiApManageDevices;


# direct methods
.method protected constructor <init>(Lcom/android/settings/wifi/WifiApManageDevices;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    .line 727
    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 706
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$1;-><init>(Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 715
    new-instance v0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog$2;-><init>(Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    .line 728
    const/16 v0, 0x78

    iput v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mDuration:I

    .line 729
    return-void
.end method

.method static synthetic access$810(Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    .prologue
    .line 703
    iget v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mDuration:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mDuration:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;

    .prologue
    .line 703
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->updateFields()V

    return-void
.end method

.method private updateFields()V
    .locals 5

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00c0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mDuration:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 757
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 753
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 734
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->setInverseBackgroundForced(Z)V

    .line 735
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->setTitle(I)V

    .line 736
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mRes:Landroid/content/res/Resources;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiApManageDevices;->access$300(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 738
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$000()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startApWpsPbc()V

    .line 739
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->updateFields()V

    .line 740
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 741
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 761
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1100()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 763
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 764
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 746
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->this$0:Lcom/android/settings/wifi/WifiApManageDevices;

    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1000(Lcom/android/settings/wifi/WifiApManageDevices;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mUpdateTimeTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 747
    invoke-virtual {p0, p0}, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 748
    # getter for: Lcom/android/settings/wifi/WifiApManageDevices;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/wifi/WifiApManageDevices;->access$1100()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApManageDevices$WpsTimerAlertDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "motorola.net.wifi.PBC_STOP_ALERT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 749
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 750
    return-void
.end method
