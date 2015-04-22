.class Lcom/parse/PushConnection;
.super Ljava/lang/Object;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushConnection$1;,
        Lcom/parse/PushConnection$EventSet;,
        Lcom/parse/PushConnection$ReaderThread;,
        Lcom/parse/PushConnection$KeepAliveMonitor;,
        Lcom/parse/PushConnection$ReachabilityMonitor;,
        Lcom/parse/PushConnection$StoppedState;,
        Lcom/parse/PushConnection$WaitRetryState;,
        Lcom/parse/PushConnection$ConnectedState;,
        Lcom/parse/PushConnection$ConnectState;,
        Lcom/parse/PushConnection$WaitStartState;,
        Lcom/parse/PushConnection$State;,
        Lcom/parse/PushConnection$Event;,
        Lcom/parse/PushConnection$StateTransitionListener;
    }
.end annotation


# static fields
.field private static final CONNECT_TIMEOUT_MS:I = 0x9c40

.field static ENABLE_QUICK_ACK_CHECK:Z = false

.field static ENABLE_RETRY_DELAY:Z = false

.field static KEEP_ALIVE_ACK_INTERVAL:J = 0x0L

.field static KEEP_ALIVE_INTERVAL:J = 0x0L

.field private static final MAX_RETRY_DELAY_MS:J = 0x493e0L

.field private static final MIN_RETRY_DELAY_MS:J = 0x3a98L

.field private static final RETRY_MULT_FACTOR_MAX:D = 2.0

.field private static final RETRY_MULT_FACTOR_MIN:D = 1.5

.field private static final TAG:Ljava/lang/String; = "com.parse.PushConnection"

.field private static stateTransitionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/PushConnection$StateTransitionListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final eventSet:Lcom/parse/PushConnection$EventSet;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private final host:Ljava/lang/String;

.field private final lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final port:I

.field private final service:Landroid/app/Service;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 64
    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/parse/PushConnection;->KEEP_ALIVE_INTERVAL:J

    .line 67
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/parse/PushConnection;->KEEP_ALIVE_ACK_INTERVAL:J

    .line 69
    sput-boolean v2, Lcom/parse/PushConnection;->ENABLE_QUICK_ACK_CHECK:Z

    .line 72
    sput-boolean v2, Lcom/parse/PushConnection;->ENABLE_RETRY_DELAY:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Service;Ljava/lang/String;I)V
    .locals 3
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    const/4 v2, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/parse/PushConnection;->service:Landroid/app/Service;

    .line 90
    iput-object p2, p0, Lcom/parse/PushConnection;->host:Ljava/lang/String;

    .line 91
    iput p3, p0, Lcom/parse/PushConnection;->port:I

    .line 92
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;

    .line 93
    new-instance v1, Lcom/parse/PushConnection$EventSet;

    invoke-direct {v1, v2}, Lcom/parse/PushConnection$EventSet;-><init>(Lcom/parse/PushConnection$1;)V

    iput-object v1, p0, Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;

    .line 94
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 96
    new-instance v0, Lcom/parse/PushConnection$WaitStartState;

    invoke-direct {v0, p0}, Lcom/parse/PushConnection$WaitStartState;-><init>(Lcom/parse/PushConnection;)V

    .line 97
    .local v0, "nextState":Lcom/parse/PushConnection$State;
    invoke-static {p0, v2, v0}, Lcom/parse/PushConnection;->dispatchOnStateChange(Lcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V

    .line 98
    iget-object v1, p0, Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/PushConnection;
    .param p1, "x1"    # Lcom/parse/PushConnection$State;
    .param p2, "x2"    # Lcom/parse/PushConnection$State;

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/parse/PushConnection;->dispatchOnStateChange(Lcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/parse/PushConnection;)Landroid/app/Service;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parse/PushConnection;->service:Landroid/app/Service;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/PushConnection;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parse/PushConnection;->lastReadTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/PushConnection;)Ljava/util/concurrent/ExecutorService;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parse/PushConnection;->executor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/PushConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/parse/PushConnection;->host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/PushConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection;

    .prologue
    .line 57
    iget v0, p0, Lcom/parse/PushConnection;->port:I

    return v0
.end method

.method static synthetic access$600(Ljava/net/Socket;)V
    .locals 0
    .param p0, "x0"    # Ljava/net/Socket;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/parse/PushConnection;->closeSocket(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$700(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/net/Socket;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/parse/PushConnection;->writeLine(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static closeSocket(Ljava/net/Socket;)V
    .locals 1
    .param p0, "socket"    # Ljava/net/Socket;

    .prologue
    .line 146
    :try_start_0
    instance-of v0, p0, Ljavax/net/ssl/SSLSocket;

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Ljava/net/Socket;->shutdownInput()V

    .line 149
    :cond_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static dispatchOnStateChange(Lcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V
    .locals 4
    .param p0, "connection"    # Lcom/parse/PushConnection;
    .param p1, "from"    # Lcom/parse/PushConnection$State;
    .param p2, "to"    # Lcom/parse/PushConnection$State;

    .prologue
    .line 186
    const-class v3, Lcom/parse/PushConnection;

    monitor-enter v3

    .line 187
    :try_start_0
    sget-object v2, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 188
    sget-object v2, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/PushConnection$StateTransitionListener;

    .line 189
    .local v1, "listener":Lcom/parse/PushConnection$StateTransitionListener;
    invoke-interface {v1, p0, p1, p2}, Lcom/parse/PushConnection$StateTransitionListener;->onStateChange(Lcom/parse/PushConnection;Lcom/parse/PushConnection$State;Lcom/parse/PushConnection$State;)V

    goto :goto_0

    .line 192
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/parse/PushConnection$StateTransitionListener;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    return-void
.end method

.method public static registerStateTransitionListener(Lcom/parse/PushConnection$StateTransitionListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/parse/PushConnection$StateTransitionListener;

    .prologue
    .line 163
    const-class v1, Lcom/parse/PushConnection;

    monitor-enter v1

    .line 164
    :try_start_0
    sget-object v0, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    .line 167
    :cond_0
    sget-object v0, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    sget-object v0, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1
    monitor-exit v1

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static unregisterStateTransitionListener(Lcom/parse/PushConnection$StateTransitionListener;)V
    .locals 2
    .param p0, "listener"    # Lcom/parse/PushConnection$StateTransitionListener;

    .prologue
    .line 174
    const-class v1, Lcom/parse/PushConnection;

    monitor-enter v1

    .line 175
    :try_start_0
    sget-object v0, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 176
    monitor-exit v1

    .line 183
    :goto_0
    return-void

    .line 178
    :cond_0
    sget-object v0, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 180
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushConnection;->stateTransitionListeners:Ljava/util/List;

    .line 182
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static writeLine(Ljava/net/Socket;Ljava/lang/String;)Z
    .locals 6
    .param p0, "socket"    # Ljava/net/Socket;
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v1, 0x0

    .line 123
    .local v1, "sent":Z
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 124
    new-instance v3, Ljava/lang/Error;

    const-string v4, "Wrote to push socket on main thread."

    invoke-direct {v3, v4}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v3

    .line 128
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 129
    .local v2, "stream":Ljava/io/OutputStream;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 130
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    const/4 v1, 0x1

    .line 136
    .end local v2    # "stream":Ljava/io/OutputStream;
    :goto_0
    return v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "com.parse.PushConnection"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PushConnection write failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logV(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized start()V
    .locals 2

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;

    sget-object v1, Lcom/parse/PushConnection$Event;->START:Lcom/parse/PushConnection$Event;

    invoke-virtual {v0, v1}, Lcom/parse/PushConnection$EventSet;->signalEvent(Lcom/parse/PushConnection$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;

    sget-object v1, Lcom/parse/PushConnection$Event;->STOP:Lcom/parse/PushConnection$Event;

    invoke-virtual {v0, v1}, Lcom/parse/PushConnection$EventSet;->signalEvent(Lcom/parse/PushConnection$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
