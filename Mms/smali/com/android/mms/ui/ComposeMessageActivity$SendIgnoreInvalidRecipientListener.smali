.class Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendIgnoreInvalidRecipientListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/mms/ui/ComposeMessageActivity;
    .param p2, "x1"    # Lcom/android/mms/ui/ComposeMessageActivity$1;

    .prologue
    .line 761
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendIgnoreInvalidRecipientListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->sendMessage(Z)V
    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1600(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 765
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 766
    return-void
.end method
