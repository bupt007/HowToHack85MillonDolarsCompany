.class public Lcom/parse/PushConnection$ConnectState;
.super Lcom/parse/PushConnection$State;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectState"
.end annotation


# instance fields
.field private lastDelay:J

.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;J)V
    .locals 0
    .param p2, "lastDelay"    # J

    .prologue
    .line 284
    iput-object p1, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    .line 285
    iput-wide p2, p0, Lcom/parse/PushConnection$ConnectState;->lastDelay:J

    .line 286
    return-void
.end method

.method private nextDelay()J
    .locals 10

    .prologue
    .line 353
    iget-wide v2, p0, Lcom/parse/PushConnection$ConnectState;->lastDelay:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-long v0, v2

    .line 354
    .local v0, "delay":J
    const-wide/16 v2, 0x3a98

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 356
    return-wide v0
.end method

.method private sendHandshake(Ljava/net/Socket;)Z
    .locals 6
    .param p1, "socket"    # Ljava/net/Socket;

    .prologue
    .line 333
    const/4 v3, 0x0

    .line 334
    .local v3, "success":Z
    invoke-static {}, Lcom/parse/PushRouter;->getPushRequestJSONAsync()Lbolts/Task;

    move-result-object v1

    .line 337
    .local v1, "handshakeTask":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    :try_start_0
    invoke-virtual {v1}, Lbolts/Task;->waitForCompletion()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    invoke-virtual {v1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 343
    .local v2, "request":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/parse/PushConnection;->writeLine(Ljava/net/Socket;Ljava/lang/String;)Z
    invoke-static {p1, v4}, Lcom/parse/PushConnection;->access$700(Ljava/net/Socket;Ljava/lang/String;)Z

    move-result v3

    .line 347
    :cond_0
    return v3

    .line 338
    .end local v2    # "request":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "com.parse.PushConnection"

    const-string v5, "Unexpected interruption when waiting for handshake to be sent"

    invoke-static {v4, v5, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public runState()Lcom/parse/PushConnection$State;
    .locals 12

    .prologue
    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "connectedAndSentHandshake":Z
    const/4 v3, 0x0

    .line 292
    .local v3, "socket":Ljava/net/Socket;
    const/4 v6, 0x0

    .line 296
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_0
    const-string v7, "push.parse.com"

    iget-object v8, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->host:Ljava/lang/String;
    invoke-static {v8}, Lcom/parse/PushConnection;->access$400(Lcom/parse/PushConnection;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 297
    new-instance v4, Ljava/net/Socket;

    invoke-direct {v4}, Ljava/net/Socket;-><init>()V

    .end local v3    # "socket":Ljava/net/Socket;
    .local v4, "socket":Ljava/net/Socket;
    move-object v3, v4

    .line 302
    .end local v4    # "socket":Ljava/net/Socket;
    .restart local v3    # "socket":Ljava/net/Socket;
    :goto_0
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v7, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->host:Ljava/lang/String;
    invoke-static {v7}, Lcom/parse/PushConnection;->access$400(Lcom/parse/PushConnection;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->port:I
    invoke-static {v8}, Lcom/parse/PushConnection;->access$500(Lcom/parse/PushConnection;)I

    move-result v8

    invoke-direct {v0, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 303
    .local v0, "address":Ljava/net/InetSocketAddress;
    const v7, 0x9c40

    invoke-virtual {v3, v0, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 305
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 306
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 307
    invoke-direct {p0, v3}, Lcom/parse/PushConnection$ConnectState;->sendHandshake(Ljava/net/Socket;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 320
    .end local v0    # "address":Ljava/net/InetSocketAddress;
    :goto_1
    if-eqz v6, :cond_0

    .line 321
    const-string v7, "com.parse.PushConnection"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to connect to push server due to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_0
    if-nez v1, :cond_2

    .line 325
    # invokes: Lcom/parse/PushConnection;->closeSocket(Ljava/net/Socket;)V
    invoke-static {v3}, Lcom/parse/PushConnection;->access$600(Ljava/net/Socket;)V

    .line 326
    new-instance v7, Lcom/parse/PushConnection$WaitRetryState;

    iget-object v8, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0}, Lcom/parse/PushConnection$ConnectState;->nextDelay()J

    move-result-wide v10

    invoke-direct {v7, v8, v10, v11}, Lcom/parse/PushConnection$WaitRetryState;-><init>(Lcom/parse/PushConnection;J)V

    .line 328
    :goto_2
    return-object v7

    .line 299
    :cond_1
    :try_start_1
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v5

    .line 300
    .local v5, "sslSocketFactory":Ljavax/net/SocketFactory;
    invoke-virtual {v5}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 308
    .end local v5    # "sslSocketFactory":Ljavax/net/SocketFactory;
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Ljava/io/IOException;
    move-object v6, v2

    .line 318
    goto :goto_1

    .line 310
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 317
    .local v2, "e":Ljava/lang/SecurityException;
    move-object v6, v2

    goto :goto_1

    .line 328
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_2
    new-instance v7, Lcom/parse/PushConnection$ConnectedState;

    iget-object v8, p0, Lcom/parse/PushConnection$ConnectState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {v7, v8, v3}, Lcom/parse/PushConnection$ConnectedState;-><init>(Lcom/parse/PushConnection;Ljava/net/Socket;)V

    goto :goto_2
.end method
