.class public Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteThreadListener"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDeleteLockedMessages:Z

.field private final mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

.field private final mThreadIds:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Lcom/android/mms/data/Conversation$ConversationQueryHandler;Landroid/content/Context;)V
    .locals 0
    .param p2, "handler"    # Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/android/mms/data/Conversation$ConversationQueryHandler;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 857
    .local p1, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    .line 859
    iput-object p2, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    .line 860
    iput-object p3, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    .line 861
    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Lcom/android/mms/data/Conversation$ConversationQueryHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    .prologue
    .line 850
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mHandler:Lcom/android/mms/data/Conversation$ConversationQueryHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/ConversationList$DeleteThreadListener;

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mThreadIds:Ljava/util/Collection;

    const/16 v2, 0x81

    new-instance v3, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener$1;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Collection;ILjava/lang/Runnable;)V

    .line 883
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 884
    return-void
.end method

.method public setDeleteLockedMessage(Z)V
    .locals 0
    .param p1, "deleteLockedMessages"    # Z

    .prologue
    .line 864
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->mDeleteLockedMessages:Z

    .line 865
    return-void
.end method
