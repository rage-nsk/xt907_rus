.class Lcom/android/mms/ui/ConversationList$4;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList;->runOneTimeStorageLimitCheckForLegacyMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/util/Recycler;->checkForThreadsOverLimit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    # getter for: Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationList$4$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$4$1;-><init>(Lcom/android/mms/ui/ConversationList$4;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    new-instance v1, Lcom/android/mms/ui/ConversationList$4$3;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$4$3;-><init>(Lcom/android/mms/ui/ConversationList$4;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$4;->this$0:Lcom/android/mms/ui/ConversationList;

    new-instance v1, Lcom/android/mms/ui/ConversationList$4$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$4$2;-><init>(Lcom/android/mms/ui/ConversationList$4;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
