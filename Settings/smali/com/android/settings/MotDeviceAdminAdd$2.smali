.class Lcom/android/settings/MotDeviceAdminAdd$2;
.super Ljava/lang/Object;
.source "MotDeviceAdminAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MotDeviceAdminAdd;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MotDeviceAdminAdd;


# direct methods
.method constructor <init>(Lcom/android/settings/MotDeviceAdminAdd;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/settings/MotDeviceAdminAdd$2;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/settings/MotDeviceAdminAdd$2;->this$0:Lcom/android/settings/MotDeviceAdminAdd;

    invoke-virtual {v0}, Lcom/android/settings/MotDeviceAdminAdd;->finish()V

    .line 236
    return-void
.end method
