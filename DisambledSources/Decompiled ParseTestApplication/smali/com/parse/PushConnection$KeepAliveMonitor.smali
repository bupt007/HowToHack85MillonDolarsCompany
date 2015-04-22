.class Lcom/parse/PushConnection$KeepAliveMonitor;
.super Ljava/lang/Object;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeepAliveMonitor"
.end annotation


# instance fields
.field private broadcast:Landroid/app/PendingIntent;

.field private final interval:J

.field private keepAliveTask:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private manager:Landroid/app/AlarmManager;

.field private readReceiver:Landroid/content/BroadcastReceiver;

.field private final socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/parse/PushConnection;

.field private unregistered:Z

.field private writeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;Ljava/net/Socket;J)V
    .locals 1
    .param p2, "socket"    # Ljava/net/Socket;
    .param p3, "interval"    # J

    .prologue
    .line 553
    iput-object p1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 554
    iput-object p2, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->socket:Ljava/net/Socket;

    .line 555
    iput-wide p3, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->interval:J

    .line 556
    return-void
.end method

.method static synthetic access$1200(Lcom/parse/PushConnection$KeepAliveMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/PushConnection$KeepAliveMonitor;

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/parse/PushConnection$KeepAliveMonitor;->signalKeepAliveFailure()V

    return-void
.end method

.method static synthetic access$1300(Lcom/parse/PushConnection$KeepAliveMonitor;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection$KeepAliveMonitor;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->keepAliveTask:Lbolts/Task;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/parse/PushConnection$KeepAliveMonitor;Lbolts/Task;)Lbolts/Task;
    .locals 0
    .param p0, "x0"    # Lcom/parse/PushConnection$KeepAliveMonitor;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 535
    iput-object p1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->keepAliveTask:Lbolts/Task;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/parse/PushConnection$KeepAliveMonitor;)Ljava/net/Socket;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection$KeepAliveMonitor;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parse/PushConnection$KeepAliveMonitor;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/parse/PushConnection$KeepAliveMonitor;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private declared-synchronized signalKeepAliveFailure()V
    .locals 2

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->unregistered:Z

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->this$0:Lcom/parse/PushConnection;

    # getter for: Lcom/parse/PushConnection;->eventSet:Lcom/parse/PushConnection$EventSet;
    invoke-static {v0}, Lcom/parse/PushConnection;->access$300(Lcom/parse/PushConnection;)Lcom/parse/PushConnection$EventSet;

    move-result-object v0

    sget-object v1, Lcom/parse/PushConnection$Event;->KEEP_ALIVE_ERROR:Lcom/parse/PushConnection$Event;

    invoke-virtual {v0, v1}, Lcom/parse/PushConnection$EventSet;->signalEvent(Lcom/parse/PushConnection$Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 697
    :cond_0
    monitor-exit p0

    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public register()V
    .locals 18

    .prologue
    .line 565
    sget-object v9, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    .line 566
    .local v9, "appContext":Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 568
    .local v11, "packageName":Ljava/lang/String;
    const-string v12, "com.parse.PushConnection.readKeepAlive"

    .line 569
    .local v12, "readAction":Ljava/lang/String;
    new-instance v14, Landroid/content/Intent;

    const-string v2, "com.parse.PushConnection.readKeepAlive"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 570
    .local v14, "readIntent":Landroid/content/Intent;
    invoke-virtual {v14, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    invoke-virtual {v14, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 573
    const-string v15, "com.parse.PushConnection.writeKeepAlive"

    .line 574
    .local v15, "writeAction":Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.parse.PushConnection.writeKeepAlive"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 575
    .local v17, "writeIntent":Landroid/content/Intent;
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 576
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v2, "alarm"

    invoke-virtual {v9, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    .line 581
    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {v9, v2, v14, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 584
    .local v10, "oldReadBroadcast":Landroid/app/PendingIntent;
    if-eqz v10, :cond_0

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 586
    invoke-virtual {v10}, Landroid/app/PendingIntent;->cancel()V

    .line 591
    :goto_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v9, v2, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 595
    const/4 v3, 0x2

    .line 596
    .local v3, "alarmType":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 597
    .local v4, "start":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->interval:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 599
    new-instance v2, Lcom/parse/PushConnection$KeepAliveMonitor$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/parse/PushConnection$KeepAliveMonitor$1;-><init>(Lcom/parse/PushConnection$KeepAliveMonitor;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->readReceiver:Landroid/content/BroadcastReceiver;

    .line 613
    new-instance v2, Lcom/parse/PushConnection$KeepAliveMonitor$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v9, v14}, Lcom/parse/PushConnection$KeepAliveMonitor$2;-><init>(Lcom/parse/PushConnection$KeepAliveMonitor;Landroid/content/Context;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->writeReceiver:Landroid/content/BroadcastReceiver;

    .line 684
    new-instance v13, Landroid/content/IntentFilter;

    const-string v2, "com.parse.PushConnection.readKeepAlive"

    invoke-direct {v13, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 685
    .local v13, "readFilter":Landroid/content/IntentFilter;
    invoke-virtual {v13, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->readReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v2, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 688
    new-instance v16, Landroid/content/IntentFilter;

    const-string v2, "com.parse.PushConnection.writeKeepAlive"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 689
    .local v16, "writeFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/parse/PushConnection$KeepAliveMonitor;->writeReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v16

    invoke-virtual {v9, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 691
    return-void

    .line 588
    .end local v3    # "alarmType":I
    .end local v4    # "start":J
    .end local v13    # "readFilter":Landroid/content/IntentFilter;
    .end local v16    # "writeFilter":Landroid/content/IntentFilter;
    :cond_0
    const-string v2, "com.parse.PushConnection"

    const-string v6, "oldReadBroadcast was null"

    invoke-static {v2, v6}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 704
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->readReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 705
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->writeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 706
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->manager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 707
    iget-object v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->broadcast:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 709
    monitor-enter p0

    .line 710
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/parse/PushConnection$KeepAliveMonitor;->unregistered:Z

    .line 711
    monitor-exit p0

    .line 712
    return-void

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
