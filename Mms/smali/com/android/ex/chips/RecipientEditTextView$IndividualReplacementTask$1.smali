.class Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;
.super Ljava/lang/Object;
.source "RecipientEditTextView.java"

# interfaces
.implements Lcom/android/ex/chips/RecipientAlternatesAdapter$RecipientMatchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->doInBackground([Ljava/util/ArrayList;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

.field final synthetic val$originalRecipients:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2697
    iput-object p1, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    iput-object p2, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matchesFound(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/ex/chips/RecipientEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2701
    .local p1, "entries":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/ex/chips/RecipientEntry;>;"
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->val$originalRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;

    .line 2702
    .local v2, "temp":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/ex/chips/RecipientEntry;->isCreatedRecipient(J)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    iget-object v3, v3, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEditTextView;->getSpannable()Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2706
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    iget-object v4, v3, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    invoke-interface {v2}, Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;->getEntry()Lcom/android/ex/chips/RecipientEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/ex/chips/RecipientEntry;->getDestination()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->tokenizeAddress(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->access$2800(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ex/chips/RecipientEntry;

    # invokes: Lcom/android/ex/chips/RecipientEditTextView;->createValidatedEntry(Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;
    invoke-static {v4, v3}, Lcom/android/ex/chips/RecipientEditTextView;->access$2900(Lcom/android/ex/chips/RecipientEditTextView;Lcom/android/ex/chips/RecipientEntry;)Lcom/android/ex/chips/RecipientEntry;

    move-result-object v0

    .line 2709
    .local v0, "entry":Lcom/android/ex/chips/RecipientEntry;
    if-eqz v0, :cond_0

    .line 2710
    iget-object v3, p0, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;->this$1:Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;

    iget-object v3, v3, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask;->this$0:Lcom/android/ex/chips/RecipientEditTextView;

    # getter for: Lcom/android/ex/chips/RecipientEditTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/ex/chips/RecipientEditTextView;->access$500(Lcom/android/ex/chips/RecipientEditTextView;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1$1;-><init>(Lcom/android/ex/chips/RecipientEditTextView$IndividualReplacementTask$1;Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;Lcom/android/ex/chips/RecipientEntry;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 2719
    .end local v0    # "entry":Lcom/android/ex/chips/RecipientEntry;
    .end local v2    # "temp":Lcom/android/ex/chips/recipientchip/DrawableRecipientChip;
    :cond_1
    return-void
.end method

.method public matchesNotFound(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2724
    .local p1, "unfoundAddresses":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-void
.end method
