.class Lcom/android/settings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .param p1, "cfi"    # Z

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # setter for: Lcom/android/settings/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$802(Lcom/android/settings/RadioInfo;Z)Z

    .line 188
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$900(Lcom/android/settings/RadioInfo;)V

    .line 189
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "arrayCi":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateCellInfoTv(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$1100(Lcom/android/settings/RadioInfo;Ljava/util/List;)V

    .line 195
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$500(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 177
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$400(Lcom/android/settings/RadioInfo;)V

    .line 172
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$000(Lcom/android/settings/RadioInfo;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$100(Lcom/android/settings/RadioInfo;)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$200(Lcom/android/settings/RadioInfo;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$300(Lcom/android/settings/RadioInfo;)V

    .line 167
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .param p1, "mwi"    # Z

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # setter for: Lcom/android/settings/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/settings/RadioInfo;->access$602(Lcom/android/settings/RadioInfo;Z)Z

    .line 182
    iget-object v0, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$700(Lcom/android/settings/RadioInfo;)V

    .line 183
    return-void
.end method
