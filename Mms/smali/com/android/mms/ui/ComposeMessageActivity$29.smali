.class Lcom/android/mms/ui/ComposeMessageActivity$29;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0

    .prologue
    .line 2959
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2962
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$29;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    # invokes: Lcom/android/mms/ui/ComposeMessageActivity;->goToConversationList()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 2963
    return-void
.end method
