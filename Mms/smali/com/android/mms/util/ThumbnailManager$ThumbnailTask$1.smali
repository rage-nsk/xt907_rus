.class Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

.field final synthetic val$resultBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iput-object p2, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 264
    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v5, v5, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v5, v5, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbacks:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    # getter for: Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->access$000(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 265
    .local v2, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/mms/util/ItemLoadedCallback;>;"
    if-eqz v2, :cond_3

    .line 266
    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    # getter for: Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z
    invoke-static {v5}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->access$100(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Z

    move-result v5

    if-eqz v5, :cond_1

    # getter for: Lcom/android/mms/util/ThumbnailManager;->mEmptyVideoBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/mms/util/ThumbnailManager;->access$200()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 271
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-static {v2}, Lcom/android/mms/util/BackgroundLoaderManager;->asList(Ljava/util/Set;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/util/ItemLoadedCallback;

    .line 272
    .local v1, "callback":Lcom/android/mms/util/ItemLoadedCallback;, "Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/ThumbnailManager$ImageLoaded;>;"
    const-string v5, "Mms:thumbnailcache"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 273
    const-string v5, "ThumbnailManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invoking item loaded callback "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_0
    new-instance v4, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;

    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    # getter for: Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mIsVideo:Z
    invoke-static {v5}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->access$100(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Z

    move-result v5

    invoke-direct {v4, v0, v5}, Lcom/android/mms/util/ThumbnailManager$ImageLoaded;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 277
    .local v4, "imageLoaded":Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Lcom/android/mms/util/ItemLoadedCallback;->onItemLoaded(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 266
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "callback":Lcom/android/mms/util/ItemLoadedCallback;, "Lcom/android/mms/util/ItemLoadedCallback<Lcom/android/mms/util/ThumbnailManager$ImageLoaded;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "imageLoaded":Lcom/android/mms/util/ThumbnailManager$ImageLoaded;
    :cond_1
    # getter for: Lcom/android/mms/util/ThumbnailManager;->mEmptyImageBitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Lcom/android/mms/util/ThumbnailManager;->access$300()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 281
    :cond_3
    const-string v5, "ThumbnailManager"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 282
    const-string v5, "ThumbnailManager"

    const-string v6, "No image callback!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_4
    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    .line 289
    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v5, v5, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    # getter for: Lcom/android/mms/util/ThumbnailManager;->mThumbnailCache:Lcom/android/mms/util/SimpleCache;
    invoke-static {v5}, Lcom/android/mms/util/ThumbnailManager;->access$400(Lcom/android/mms/util/ThumbnailManager;)Lcom/android/mms/util/SimpleCache;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    # getter for: Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->access$000(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6, v7}, Lcom/android/mms/util/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v5, "Mms:thumbnailcache"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 291
    const-string v5, "ThumbnailManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in callback runnable: bitmap uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    # getter for: Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->access$000(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " width: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " height: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_5
    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v5, v5, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v5, v5, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbacks:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    # getter for: Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->access$000(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v5, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v5, v5, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v5, v5, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    iget-object v6, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    # getter for: Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;
    invoke-static {v6}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->access$000(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 301
    const-string v5, "Mms:thumbnailcache"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 302
    const-string v5, "ThumbnailManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Image task for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    # getter for: Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->mUri:Landroid/net/Uri;
    invoke-static {v7}, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->access$000(Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "exiting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask$1;->this$1:Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;

    iget-object v7, v7, Lcom/android/mms/util/ThumbnailManager$ThumbnailTask;->this$0:Lcom/android/mms/util/ThumbnailManager;

    iget-object v7, v7, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " remain"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_6
    return-void
.end method
