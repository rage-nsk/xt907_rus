.class abstract Lcom/android/mms/util/BackgroundLoaderManager;
.super Ljava/lang/Object;
.source "BackgroundLoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/util/BackgroundLoaderManager$BackgroundLoaderThreadFactory;
    }
.end annotation


# instance fields
.field protected final mCallbackHandler:Landroid/os/Handler;

.field protected final mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/util/Set",
            "<",
            "Lcom/android/mms/util/ItemLoadedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mExecutor:Ljava/util/concurrent/Executor;

.field protected final mPendingTaskUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mPendingTaskUris:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbacks:Ljava/util/HashMap;

    .line 70
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 71
    .local v6, "queue":Ljava/util/concurrent/LinkedBlockingQueue;, "Ljava/util/concurrent/LinkedBlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v8, 0x2

    .line 72
    .local v8, "poolSize":I
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/android/mms/util/BackgroundLoaderManager$BackgroundLoaderThreadFactory;

    invoke-virtual {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/android/mms/util/BackgroundLoaderManager$BackgroundLoaderThreadFactory;-><init>(Ljava/lang/String;)V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbackHandler:Landroid/os/Handler;

    .line 76
    return-void
.end method

.method protected static asList(Ljava/util/Set;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "source":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public addCallback(Landroid/net/Uri;Lcom/android/mms/util/ItemLoadedCallback;)Z
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Lcom/android/mms/util/ItemLoadedCallback;

    .prologue
    .line 108
    const-string v1, "BackgroundLoaderManager"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "BackgroundLoaderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding image callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    if-nez p1, :cond_1

    .line 112
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "uri is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    if-nez p2, :cond_2

    .line 115
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "callback is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 118
    .local v0, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/mms/util/ItemLoadedCallback;>;"
    if-nez v0, :cond_3

    .line 119
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/mms/util/ItemLoadedCallback;>;"
    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 120
    .restart local v0    # "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/mms/util/ItemLoadedCallback;>;"
    iget-object v1, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v1, 0x1

    return v1
.end method

.method public cancelCallback(Lcom/android/mms/util/ItemLoadedCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/android/mms/util/ItemLoadedCallback;

    .prologue
    .line 127
    const-string v3, "BackgroundLoaderManager"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const-string v3, "BackgroundLoaderManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancelling image callback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 131
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/util/BackgroundLoaderManager;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 132
    .local v0, "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/mms/util/ItemLoadedCallback;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v0    # "callbacks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/mms/util/ItemLoadedCallback;>;"
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 86
    return-void
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/mms/util/BackgroundLoaderManager;->clear()V

    .line 83
    return-void
.end method
