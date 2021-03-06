.class public final Lcom/motorola/settings/AirplaneModeSwitcher;
.super Ljava/lang/Object;
.source "AirplaneModeSwitcher.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/motorola/settings/AirplaneModeSwitcher$1;

    invoke-direct {v0, p0}, Lcom/motorola/settings/AirplaneModeSwitcher$1;-><init>(Lcom/motorola/settings/AirplaneModeSwitcher;)V

    iput-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lcom/motorola/settings/AirplaneModeSwitcher$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/motorola/settings/AirplaneModeSwitcher$2;-><init>(Lcom/motorola/settings/AirplaneModeSwitcher;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 61
    iput-object p1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 65
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/motorola/settings/AirplaneModeSwitcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/motorola/settings/AirplaneModeSwitcher;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/motorola/settings/AirplaneModeSwitcher;->onAirplaneModeChanged()V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private onAirplaneModeChanged()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/settings/AirplaneModeSwitcher;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 141
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .param p1, "enabling"    # Z

    .prologue
    .line 115
    iget-object v1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/settings/AirplaneModeSwitcher;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, p1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    iget-object v1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    iget-object v1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 119
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 93
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0, p2}, Lcom/motorola/settings/AirplaneModeSwitcher;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 80
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 81
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 82
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 69
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/settings/AirplaneModeSwitcher;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 70
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 72
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 73
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 2
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    if-ne v0, p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 87
    iput-object p1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    .line 88
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 89
    iget-object v0, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/motorola/settings/AirplaneModeSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/motorola/settings/AirplaneModeSwitcher;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
