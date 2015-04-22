.class Lcom/parse/ServiceUtils;
.super Ljava/lang/Object;
.source "ServiceUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.parse.ServiceUtils"

.field private static final WAKE_LOCK_EXTRA:Ljava/lang/String; = "parseWakeLockId"

.field private static wakeLockId:I

.field private static final wakeLocks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parse/ParseWakeLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/parse/ServiceUtils;->wakeLockId:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static completeWakefulIntent(Landroid/content/Intent;)V
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    if-eqz p0, :cond_0

    const-string v3, "parseWakeLockId"

    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    const-string v3, "parseWakeLockId"

    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 76
    .local v1, "id":I
    const/4 v2, 0x0

    .line 78
    .local v2, "wakeLock":Lcom/parse/ParseWakeLock;
    sget-object v4, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    monitor-enter v4

    .line 79
    :try_start_0
    sget-object v3, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/parse/ParseWakeLock;

    move-object v2, v0

    .line 80
    sget-object v3, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 81
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-nez v2, :cond_1

    .line 84
    const-string v3, "com.parse.ServiceUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got wake lock id of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in intent, but no such lock found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "global map. Was completeWakefulIntent called twice for the same intent?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v1    # "id":I
    .end local v2    # "wakeLock":Lcom/parse/ParseWakeLock;
    :cond_0
    :goto_0
    return-void

    .line 81
    .restart local v1    # "id":I
    .restart local v2    # "wakeLock":Lcom/parse/ParseWakeLock;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 87
    :cond_1
    invoke-virtual {v2}, Lcom/parse/ParseWakeLock;->release()V

    goto :goto_0
.end method

.method public static runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v1, 0x0

    .line 23
    .local v1, "startedService":Z
    if-eqz p1, :cond_1

    .line 24
    if-eqz p2, :cond_0

    .line 25
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .line 30
    .local v0, "name":Landroid/content/ComponentName;
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 31
    :goto_0
    if-nez v1, :cond_1

    .line 32
    const-string v2, "com.parse.ServiceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not start the service. Make sure that the XML tag <service android:name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" /> is in your "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "AndroidManifest.xml as a child of the <application> element."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .end local v0    # "name":Landroid/content/ComponentName;
    :cond_1
    return v1

    .line 30
    .restart local v0    # "name":Landroid/content/ComponentName;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static runWakefulIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;J)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "wakeLockTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;J)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const/4 v1, 0x0

    .line 51
    .local v1, "startedService":Z
    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "reason":Ljava/lang/String;
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    invoke-static {p0, v3, v0, v4, v5}, Lcom/parse/ParseWakeLock;->acquireNewWakeLock(Landroid/content/Context;ILjava/lang/String;J)Lcom/parse/ParseWakeLock;

    move-result-object v2

    .line 55
    .local v2, "wl":Lcom/parse/ParseWakeLock;
    sget-object v4, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    monitor-enter v4

    .line 56
    :try_start_0
    const-string v3, "parseWakeLockId"

    sget v5, Lcom/parse/ServiceUtils;->wakeLockId:I

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    sget-object v3, Lcom/parse/ServiceUtils;->wakeLocks:Landroid/util/SparseArray;

    sget v5, Lcom/parse/ServiceUtils;->wakeLockId:I

    invoke-virtual {v3, v5, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 58
    sget v3, Lcom/parse/ServiceUtils;->wakeLockId:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/parse/ServiceUtils;->wakeLockId:I

    .line 59
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-static {p0, p1, p2}, Lcom/parse/ServiceUtils;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 63
    invoke-static {p1}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 67
    .end local v0    # "reason":Ljava/lang/String;
    .end local v2    # "wl":Lcom/parse/ParseWakeLock;
    :cond_0
    return v1

    .line 59
    .restart local v0    # "reason":Ljava/lang/String;
    .restart local v2    # "wl":Lcom/parse/ParseWakeLock;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
