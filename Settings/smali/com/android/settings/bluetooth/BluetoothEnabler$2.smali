.class Lcom/android/settings/bluetooth/BluetoothEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothEnabler;->showBTTurnOffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 188
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    # setter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mDlgBtnClicked:Z
    invoke-static {v0, v2}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$102(Lcom/android/settings/bluetooth/BluetoothEnabler;Z)Z

    .line 189
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$200(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothEnabler$2;->this$0:Lcom/android/settings/bluetooth/BluetoothEnabler;

    # getter for: Lcom/android/settings/bluetooth/BluetoothEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->access$200(Lcom/android/settings/bluetooth/BluetoothEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 191
    return-void
.end method
