.class Lcom/android/mms/data/WorkingMessage$2;
.super Ljava/lang/Object;
.source "WorkingMessage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/WorkingMessage;->send(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/WorkingMessage;

.field final synthetic val$conv:Lcom/android/mms/data/Conversation;

.field final synthetic val$mmsUri:Landroid/net/Uri;

.field final synthetic val$persister:Lcom/google/android/mms/pdu/PduPersister;

.field final synthetic val$priority:I

.field final synthetic val$slideshow:Lcom/android/mms/model/SlideshowModel;

.field final synthetic val$subject:Ljava/lang/CharSequence;

.field final synthetic val$textOnly:Z


# direct methods
.method constructor <init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;ILcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Z)V
    .locals 0

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iput-object p3, p0, Lcom/android/mms/data/WorkingMessage$2;->val$subject:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/android/mms/data/WorkingMessage$2;->val$priority:I

    iput-object p5, p0, Lcom/android/mms/data/WorkingMessage$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iput-object p6, p0, Lcom/android/mms/data/WorkingMessage$2;->val$mmsUri:Landroid/net/Uri;

    iput-object p7, p0, Lcom/android/mms/data/WorkingMessage$2;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iput-boolean p8, p0, Lcom/android/mms/data/WorkingMessage$2;->val$textOnly:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$2;->val$subject:Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/mms/data/WorkingMessage$2;->val$priority:I

    # invokes: Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;I)Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->access$600(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;I)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v5

    .line 1588
    .local v5, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->prepareForSend()V

    .line 1589
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage$2;->val$mmsUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage$2;->val$persister:Lcom/google/android/mms/pdu/PduPersister;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage$2;->val$slideshow:Lcom/android/mms/model/SlideshowModel;

    iget-boolean v6, p0, Lcom/android/mms/data/WorkingMessage$2;->val$textOnly:Z

    iget v7, p0, Lcom/android/mms/data/WorkingMessage$2;->val$priority:I

    # invokes: Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;ZI)V
    invoke-static/range {v0 .. v7}, Lcom/android/mms/data/WorkingMessage;->access$700(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;ZI)V

    .line 1591
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage$2;->this$0:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage$2;->val$conv:Lcom/android/mms/data/Conversation;

    # invokes: Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V
    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->access$800(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V

    .line 1592
    return-void
.end method
