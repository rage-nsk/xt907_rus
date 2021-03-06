.class public Lcom/android/mms/concurrent/TaskManager$Task;
.super Ljava/lang/Object;
.source "TaskManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/concurrent/TaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static sId:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private mFinished:Z

.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mPoolTag:Ljava/lang/String;

.field private mPostExecutionRunnable:Ljava/lang/Runnable;

.field private mRunnable:Ljava/lang/Runnable;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 448
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/mms/concurrent/TaskManager$Task;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "type"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "poolTag"    # Ljava/lang/String;

    .prologue
    .line 458
    .local p0, "this":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<TV;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 459
    iput-object p1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mRunnable:Ljava/lang/Runnable;

    .line 460
    iput p2, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mType:I

    .line 461
    iput-object p3, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mName:Ljava/lang/String;

    .line 462
    sget-object v0, Lcom/android/mms/concurrent/TaskManager$Task;->sId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mId:I

    .line 463
    iput-object p4, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mPoolTag:Ljava/lang/String;

    .line 464
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 471
    .local p0, "this":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<TV;>;"
    :goto_0
    iget v1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mType:I

    invoke-static {v1}, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->hasConflict(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    invoke-static {p0}, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->setConflictingTask(Lcom/android/mms/concurrent/TaskManager$Task;)V

    .line 473
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Conflict detected for task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    monitor-enter p0

    .line 476
    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " interrupted while solving conflict"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 483
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->run()V

    .line 484
    const/4 v1, 0x0

    return-object v1
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 551
    .local p0, "this":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<TV;>;"
    iget v0, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mType:I

    return v0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 489
    .local p0, "this":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<TV;>;"
    :try_start_0
    invoke-static {p0}, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->reportStarted(Lcom/android/mms/concurrent/TaskManager$Task;)V

    .line 490
    # getter for: Lcom/android/mms/concurrent/TaskManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mPoolTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    # getter for: Lcom/android/mms/concurrent/TaskManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Just finished ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mPoolTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->runPostRunnable()V

    .line 503
    :goto_0
    return-void

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception running task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string v1, "TaskManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    # getter for: Lcom/android/mms/concurrent/TaskManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Just finished ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mPoolTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->runPostRunnable()V

    goto :goto_0

    .line 498
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    # getter for: Lcom/android/mms/concurrent/TaskManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 499
    const-string v2, "TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Just finished ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mPoolTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") task: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->runPostRunnable()V

    throw v1
.end method

.method public runPostRunnable()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<TV;>;"
    const/4 v4, 0x1

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mPostExecutionRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_1

    .line 531
    # getter for: Lcom/android/mms/concurrent/TaskManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "About to start post runnable for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mPostExecutionRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    :goto_0
    :try_start_2
    # getter for: Lcom/android/mms/concurrent/TaskManager;->LOCAL_LOG:Z
    invoke-static {}, Lcom/android/mms/concurrent/TaskManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 541
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Just finished post runnable for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    :cond_1
    invoke-static {p0}, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->reportFinished(Lcom/android/mms/concurrent/TaskManager$Task;)V

    .line 546
    iput-boolean v4, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mFinished:Z

    .line 548
    return-void

    .line 536
    :catch_0
    move-exception v0

    .line 537
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception running post runnable in task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/concurrent/TaskManager$Task;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-string v1, "TaskManager"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 545
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    invoke-static {p0}, Lcom/android/mms/concurrent/TaskManager$BackgroundExecutor;->reportFinished(Lcom/android/mms/concurrent/TaskManager$Task;)V

    .line 546
    iput-boolean v4, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mFinished:Z

    throw v1
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p0, "this":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<TV;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mFuture:Ljava/util/concurrent/Future;

    .line 468
    return-void
.end method

.method public setPostRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 555
    .local p0, "this":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<TV;>;"
    iget-boolean v0, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mFinished:Z

    if-eqz v0, :cond_0

    .line 557
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 561
    :goto_0
    return-void

    .line 559
    :cond_0
    iput-object p1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mPostExecutionRunnable:Ljava/lang/Runnable;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 565
    .local p0, "this":Lcom/android/mms/concurrent/TaskManager$Task;, "Lcom/android/mms/concurrent/TaskManager$Task<TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/mms/concurrent/TaskManager$Task;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
