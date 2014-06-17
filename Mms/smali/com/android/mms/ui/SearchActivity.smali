.class public Lcom/android/mms/ui/SearchActivity;
.super Landroid/app/ListActivity;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SearchActivity$TextViewSnippet;
    }
.end annotation


# instance fields
.field mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

.field private mContactMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/mms/data/Contact;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Landroid/content/AsyncQueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    .line 190
    new-instance v0, Lcom/android/mms/ui/SearchActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SearchActivity$1;-><init>(Lcom/android/mms/ui/SearchActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SearchActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/mms/ui/SearchActivity;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SearchActivity;JJ)J
    .locals 2
    .param p0, "x0"    # Lcom/android/mms/ui/SearchActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/SearchActivity;->getThreadId(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getThreadId(JJ)J
    .locals 9
    .param p1, "sourceId"    # J
    .param p3, "which"    # J

    .prologue
    const/4 v2, 0x0

    .line 206
    const-string v0, "content://mms-sms/messageIdToThread"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 207
    .local v6, "b":Landroid/net/Uri$Builder;
    const-string v0, "row_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 208
    const-string v0, "table_to_use"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    .line 209
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 211
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 217
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 219
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 223
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 226
    :goto_0
    return-wide v0

    .line 223
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 231
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "query"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 234
    .local v12, "searchStringParameter":Ljava/lang/String;
    if-nez v12, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 237
    :cond_0
    if-eqz v12, :cond_1

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 243
    .local v11, "searchString":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 244
    .local v14, "u":Landroid/net/Uri;
    if-eqz v14, :cond_2

    const-string v0, "source_id"

    invoke-virtual {v14, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 245
    new-instance v13, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/SearchActivity$2;

    invoke-direct {v0, p0, v14, v11}, Lcom/android/mms/ui/SearchActivity$2;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/net/Uri;Ljava/lang/String;)V

    const-string v1, "Search thread"

    invoke-direct {v13, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 264
    .local v13, "t":Ljava/lang/Thread;
    invoke-virtual {v13}, Ljava/lang/Thread;->start()V

    .line 382
    .end local v13    # "t":Ljava/lang/Thread;
    :goto_1
    return-void

    .end local v11    # "searchString":Ljava/lang/String;
    .end local v14    # "u":Landroid/net/Uri;
    :cond_1
    move-object v11, v12

    .line 237
    goto :goto_0

    .line 268
    .restart local v11    # "searchString":Ljava/lang/String;
    .restart local v14    # "u":Landroid/net/Uri;
    :cond_2
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchActivity;->setContentView(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 271
    .local v9, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 272
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getListView()Landroid/widget/ListView;

    move-result-object v10

    .line 273
    .local v10, "listView":Landroid/widget/ListView;
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 274
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 275
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/widget/ListView;->setClickable(Z)V

    .line 281
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SearchActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 286
    new-instance v0, Lcom/android/mms/ui/SearchActivity$3;

    invoke-direct {v0, p0, v9, v11, v10}, Lcom/android/mms/ui/SearchActivity$3;-><init>(Lcom/android/mms/ui/SearchActivity;Landroid/content/ContentResolver;Ljava/lang/String;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 374
    sget-object v0, Landroid/provider/Telephony$MmsSms;->SEARCH_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pattern"

    invoke-virtual {v0, v1, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 378
    .local v3, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    .line 381
    .local v8, "actionBar":Landroid/app/ActionBar;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 386
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 393
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 390
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SearchActivity;->finish()V

    .line 391
    const/4 v0, 0x1

    goto :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 202
    iget-object v0, p0, Lcom/android/mms/ui/SearchActivity;->mContactListener:Lcom/android/mms/data/Contact$UpdateListener;

    invoke-static {v0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 203
    return-void
.end method
