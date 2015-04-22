.class Lcom/parse/PushConnection$ReaderThread;
.super Ljava/lang/Thread;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderThread"
.end annotation


# instance fields
.field private final socket:Ljava/net/Socket;

.field private stopped:Z

.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;Ljava/net/Socket;)V
    .locals 1
    .param p2, "socket"    # Ljava/net/Socket;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/parse/PushConnection$ReaderThread;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/parse/PushConnection$ReaderThread;->socket:Ljava/net/Socket;

    .line 729
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/PushConnection$ReaderThread;->stopped:Z

    .line 730
    return-void
.end method

.method private runReaderLoop(Ljava/io/BufferedReader;)V
    .locals 8
    .param p1, "reader"    # Ljava/io/BufferedReader;

    .prologue
    .line 760
    :goto_0
    const/4 v1, 0x0

    .line 764
    .local v1, "line":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 765
    iget-object v5, p0, Lcom/parse/PushConnection$ReaderThread;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;
    invoke-static {v5}, Lcom/parse/PushConnection;->access$1100(Lcom/parse/PushConnection;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 770
    :goto_1
    if-nez v1, :cond_0

    .line 796
    :goto_2
    return-void

    .line 775
    :cond_0
    new-instance v4, Lorg/json/JSONTokener;

    invoke-direct {v4, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 776
    .local v4, "tokener":Lorg/json/JSONTokener;
    const/4 v2, 0x0

    .line 778
    .local v2, "message":Lorg/json/JSONObject;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "message":Lorg/json/JSONObject;
    .local v3, "message":Lorg/json/JSONObject;
    move-object v2, v3

    .line 784
    .end local v3    # "message":Lorg/json/JSONObject;
    .restart local v2    # "message":Lorg/json/JSONObject;
    :goto_3
    if-eqz v2, :cond_1

    .line 785
    invoke-static {v2}, Lcom/parse/PushRouter;->handlePpnsPushAsync(Lorg/json/JSONObject;)Lbolts/Task;

    .line 790
    :cond_1
    monitor-enter p0

    .line 791
    :try_start_2
    iget-boolean v5, p0, Lcom/parse/PushConnection$ReaderThread;->stopped:Z

    if-eqz v5, :cond_2

    .line 792
    monitor-exit p0

    goto :goto_2

    .line 794
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 779
    :catch_0
    move-exception v0

    .line 781
    .local v0, "e":Lorg/json/JSONException;
    const-string v5, "com.parse.PushConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad json: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 794
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 766
    .end local v2    # "message":Lorg/json/JSONObject;
    .end local v4    # "tokener":Lorg/json/JSONTokener;
    :catch_1
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 735
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 738
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v3, p0, Lcom/parse/PushConnection$ReaderThread;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 740
    if-eqz v0, :cond_0

    .line 741
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-direct {p0, v2}, Lcom/parse/PushConnection$ReaderThread;->runReaderLoop(Ljava/io/BufferedReader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, v2

    .line 747
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :cond_0
    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 748
    invoke-static {v0}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 751
    :goto_0
    monitor-enter p0

    .line 752
    :try_start_2
    iget-boolean v3, p0, Lcom/parse/PushConnection$ReaderThread;->stopped:Z

    if-nez v3, :cond_1

    .line 753
    iget-object v3, p0, Lcom/parse/PushConnection$ReaderThread;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v3}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v3

    sget-object v4, Lcom/parse/PushConnection$Event;->READ_ERROR:Lcom/parse/PushConnection$Event;

    invoke-virtual {v3, v4}, Lcom/parse/PushConnection$EventSet;->signalEvent(Lcom/parse/PushConnection$Event;)V

    .line 755
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 756
    return-void

    .line 744
    :catch_0
    move-exception v3

    .line 747
    :goto_1
    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 748
    invoke-static {v0}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .line 747
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 748
    invoke-static {v0}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v3

    .line 755
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 747
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 744
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public stopReading()V
    .locals 1

    .prologue
    .line 800
    monitor-enter p0

    .line 801
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/parse/PushConnection$ReaderThread;->stopped:Z

    .line 802
    monitor-exit p0

    .line 803
    return-void

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
