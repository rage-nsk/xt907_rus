.class Lcom/android/mms/ui/SearchActivity$3$1;
.super Landroid/widget/CursorAdapter;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/SearchActivity$3;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/SearchActivity$3;

.field final synthetic val$addressPos:I

.field final synthetic val$bodyPos:I

.field final synthetic val$rowidPos:I

.field final synthetic val$threadIdPos:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/SearchActivity$3;Landroid/content/Context;Landroid/database/Cursor;ZIIII)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/database/Cursor;
    .param p4, "x2"    # Z

    .prologue
    .line 312
    iput-object p1, p0, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iput p5, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$addressPos:I

    iput p6, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$bodyPos:I

    iput p7, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$threadIdPos:I

    iput p8, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$rowidPos:I

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 315
    const v0, 0x7f0f0026

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    .line 316
    .local v9, "title":Landroid/widget/TextView;
    const v0, 0x7f0f005d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    move-object v8, v0

    check-cast v8, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;

    .line 318
    .local v8, "snippet":Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$addressPos:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 319
    .local v6, "address":Ljava/lang/String;
    if-eqz v6, :cond_0

    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v7

    .line 321
    .local v7, "contact":Lcom/android/mms/data/Contact;
    :goto_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "titleString":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$bodyPos:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/SearchActivity$3$1;->this$1:Lcom/android/mms/ui/SearchActivity$3;

    iget-object v1, v1, Lcom/android/mms/ui/SearchActivity$3;->val$searchString:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lcom/android/mms/ui/SearchActivity$TextViewSnippet;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$threadIdPos:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 331
    .local v2, "threadId":J
    iget v0, p0, Lcom/android/mms/ui/SearchActivity$3$1;->val$rowidPos:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 333
    .local v4, "rowid":J
    new-instance v0, Lcom/android/mms/ui/SearchActivity$3$1$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/SearchActivity$3$1$1;-><init>(Lcom/android/mms/ui/SearchActivity$3$1;JJ)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    return-void

    .line 319
    .end local v2    # "threadId":J
    .end local v4    # "rowid":J
    .end local v7    # "contact":Lcom/android/mms/data/Contact;
    .end local v10    # "titleString":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 321
    .restart local v7    # "contact":Lcom/android/mms/data/Contact;
    :cond_1
    const-string v10, ""

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 346
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 347
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040020

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, "v":Landroid/view/View;
    return-object v1
.end method
