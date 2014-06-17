.class public Lcom/android/mms/ui/SmsStorageMonitor;
.super Landroid/content/BroadcastReceiver;
.source "SmsStorageMonitor.java"


# static fields
.field private static mNotificationManager:Landroid/app/NotificationManager;


# instance fields
.field private final NOTIFICATION_STORAGE_LIMITED_ID:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/SmsStorageMonitor;->NOTIFICATION_STORAGE_LIMITED_ID:I

    return-void
.end method

.method private cancelStorageLimitedWarning()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/android/mms/ui/SmsStorageMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 58
    return-void
.end method

.method private notifyReachStorageLimited()V
    .locals 4

    .prologue
    .line 47
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/mms/ui/SmsStorageMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0130

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0131

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 53
    .local v0, "mBuilder":Landroid/app/Notification$Builder;
    sget-object v1, Lcom/android/mms/ui/SmsStorageMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v2, -0x1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/mms/ui/SmsStorageMonitor;->mContext:Landroid/content/Context;

    .line 35
    sget-object v0, Lcom/android/mms/ui/SmsStorageMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/mms/ui/SmsStorageMonitor;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/mms/ui/SmsStorageMonitor;->mNotificationManager:Landroid/app/NotificationManager;

    .line 39
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-direct {p0}, Lcom/android/mms/ui/SmsStorageMonitor;->notifyReachStorageLimited()V

    .line 44
    :cond_1
    :goto_0
    return-void

    .line 41
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcom/android/mms/ui/SmsStorageMonitor;->cancelStorageLimitedWarning()V

    goto :goto_0
.end method
