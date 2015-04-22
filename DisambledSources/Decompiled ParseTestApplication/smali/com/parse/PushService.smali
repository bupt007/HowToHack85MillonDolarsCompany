.class public final Lcom/parse/PushService;
.super Landroid/app/Service;
.source "PushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/PushService$8;,
        Lcom/parse/PushService$ServiceLifecycleCallbacks;
    }
.end annotation


# static fields
.field static final CANNOT_USE_PUSH_V1_ERROR_MESSAGE:Ljava/lang/String; = "PushService.subscribe, PushService.unsubscribe, and PushService.setDefaultPushCallback methods cannot be used in conjunction with ParsePushBroadcastReceiver. See ParsePush.subscribe and ParsePush.unsubscribe."

.field private static final START_IF_REQUIRED_ACTION:Ljava/lang/String; = "com.parse.PushService.startIfRequired"

.field private static final TAG:Ljava/lang/String; = "com.parse.PushService"

.field private static final WAKE_LOCK_TIMEOUT_MS:I = 0x4e20

.field private static host:Ljava/lang/String;

.field private static loggedStartError:Z

.field private static port:I

.field private static serviceLifecycleCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/PushService$ServiceLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connection:Lcom/parse/PushConnection;

.field private executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "push.parse.com"

    sput-object v0, Lcom/parse/PushService;->host:Ljava/lang/String;

    .line 120
    const/16 v0, 0x1bb

    sput v0, Lcom/parse/PushService;->port:I

    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    .line 125
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/parse/PushService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/PushService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/parse/PushService;->onHandleGcmIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private static checkManifestAndThrowExceptionIfNeeded()V
    .locals 2

    .prologue
    .line 416
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PushService.subscribe, PushService.unsubscribe, and PushService.setDefaultPushCallback methods cannot be used in conjunction with ParsePushBroadcastReceiver. See ParsePush.subscribe and ParsePush.unsubscribe."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 419
    :cond_0
    return-void
.end method

.method private static collectServiceLifecycleCallbacks()[Ljava/lang/Object;
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "callbacks":[Ljava/lang/Object;
    const-class v2, Lcom/parse/PushService;

    monitor-enter v2

    .line 172
    :try_start_0
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    if-nez v1, :cond_0

    .line 173
    const/4 v1, 0x0

    monitor-exit v2

    move-object v0, v1

    .line 179
    :goto_0
    return-object v0

    .line 175
    :cond_0
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 176
    sget-object v1, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 178
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static dispatchOnServiceCreated(Landroid/app/Service;)V
    .locals 5
    .param p0, "service"    # Landroid/app/Service;

    .prologue
    .line 152
    invoke-static {}, Lcom/parse/PushService;->collectServiceLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 153
    .local v2, "callbacks":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 154
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 155
    .local v1, "callback":Ljava/lang/Object;
    check-cast v1, Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .end local v1    # "callback":Ljava/lang/Object;
    invoke-interface {v1, p0}, Lcom/parse/PushService$ServiceLifecycleCallbacks;->onServiceCreated(Landroid/app/Service;)V

    .line 154
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method private static dispatchOnServiceDestroyed(Landroid/app/Service;)V
    .locals 5
    .param p0, "service"    # Landroid/app/Service;

    .prologue
    .line 161
    invoke-static {}, Lcom/parse/PushService;->collectServiceLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v2

    .line 162
    .local v2, "callbacks":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 163
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 164
    .local v1, "callback":Ljava/lang/Object;
    check-cast v1, Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .end local v1    # "callback":Ljava/lang/Object;
    invoke-interface {v1, p0}, Lcom/parse/PushService$ServiceLifecycleCallbacks;->onServiceDestroyed(Landroid/app/Service;)V

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 167
    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_0
    return-void
.end method

.method public static getSubscriptions(Landroid/content/Context;)Ljava/util/Set;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 437
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/parse/PushRouter;->getSubscriptionsAsync(Z)Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Lcom/parse/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private onGcmStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 562
    iget-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/parse/PushService$7;

    invoke-direct {v1, p0, p1, p3}, Lcom/parse/PushService$7;-><init>(Lcom/parse/PushService;Landroid/content/Intent;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 574
    const/4 v0, 0x2

    return v0
.end method

.method private onHandleGcmIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 578
    if-eqz p1, :cond_0

    .line 579
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    .line 580
    .local v0, "registrar":Lcom/parse/GcmRegistrar;
    invoke-virtual {v0, p1}, Lcom/parse/GcmRegistrar;->isRegistrationIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    invoke-virtual {v0, p1}, Lcom/parse/GcmRegistrar;->handleRegistrationIntent(Landroid/content/Intent;)V

    .line 588
    .end local v0    # "registrar":Lcom/parse/GcmRegistrar;
    :cond_0
    :goto_0
    return-void

    .line 582
    .restart local v0    # "registrar":Lcom/parse/GcmRegistrar;
    :cond_1
    invoke-static {p1}, Lcom/parse/PushRouter;->isGcmPushIntent(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 583
    invoke-static {p1}, Lcom/parse/PushRouter;->handleGcmPushIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 585
    :cond_2
    const-string v1, "com.parse.PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PushService got unknown intent in GCM mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPpnsStartCommand(Landroid/content/Intent;II)I
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 510
    iget-object v0, p0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    .line 512
    .local v0, "conn":Lcom/parse/PushConnection;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.parse.PushService.startIfRequired"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    :cond_0
    const-string v2, "com.parse.PushService"

    const-string v3, "Received request to start service if required"

    invoke-static {v2, v3}, Lcom/parse/Parse;->logI(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    new-instance v1, Lbolts/Capture;

    invoke-direct {v1}, Lbolts/Capture;-><init>()V

    .line 515
    .local v1, "forceEnabledCapture":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/parse/PushRouter;->getForceEnabledStateAsync()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/PushService$6;

    invoke-direct {v3, p0, v1}, Lcom/parse/PushService$6;-><init>(Lcom/parse/PushService;Lbolts/Capture;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/PushService$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/parse/PushService$5;-><init>(Lcom/parse/PushService;Lbolts/Capture;Lcom/parse/PushConnection;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    .line 558
    .end local v1    # "forceEnabledCapture":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method static registerServiceLifecycleCallbacks(Lcom/parse/PushService$ServiceLifecycleCallbacks;)V
    .locals 2
    .param p0, "callbacks"    # Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .prologue
    .line 133
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    .line 134
    :try_start_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    .line 137
    :cond_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static runGcmIntentInService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    const-class v0, Lcom/parse/PushService;

    const-wide/16 v2, 0x4e20

    invoke-static {p0, p1, v0, v2, v3}, Lcom/parse/ServiceUtils;->runWakefulIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;J)Z

    .line 193
    return-void
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, v0}, Lcom/parse/PushService;->setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;I)V

    .line 370
    return-void
.end method

.method public static setDefaultPushCallback(Landroid/content/Context;Ljava/lang/Class;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "icon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const/4 v0, 0x0

    .line 394
    if-nez p2, :cond_0

    .line 395
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must subscribe to channel with a valid icon identifier."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_0
    if-nez p1, :cond_1

    .line 399
    invoke-static {v0}, Lcom/parse/PushService;->unsubscribeInternal(Ljava/lang/String;)V

    .line 409
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-static {v0, p1, p2}, Lcom/parse/PushRouter;->subscribeAsync(Ljava/lang/String;Ljava/lang/Class;I)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/PushService$4;

    invoke-direct {v1}, Lcom/parse/PushService$4;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_0
.end method

.method private static startPpnsServiceIfRequired(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 202
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v2, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v1, v2, :cond_1

    .line 203
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 207
    .local v0, "installation":Lcom/parse/ParseInstallation;
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v2, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v1, v2, :cond_0

    .line 208
    const-string v1, "com.parse.PushService"

    const-string v2, "Detected a client that used to use GCM and is now using PPNS."

    invoke-static {v1, v2}, Lcom/parse/Parse;->logW(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->removePushType()V

    .line 211
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->removeDeviceToken()V

    .line 212
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 215
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.parse.PushService.startIfRequired"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v2, Lcom/parse/PushService;

    invoke-static {p0, v1, v2}, Lcom/parse/ServiceUtils;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Class;)Z

    .line 217
    .end local v0    # "installation":Lcom/parse/ParseInstallation;
    :cond_1
    return-void
.end method

.method public static startServiceIfRequired(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    sget-object v0, Lcom/parse/PushService$8;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 230
    sget-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    if-nez v0, :cond_0

    .line 231
    const-string v0, "com.parse.PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to use push, but this app is not configured for push due to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/parse/ManifestInfo;->getNonePushTypeLogMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/PushService;->loggedStartError:Z

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 224
    :pswitch_0
    invoke-static {p0}, Lcom/parse/PushService;->startPpnsServiceIfRequired(Landroid/content/Context;)V

    goto :goto_0

    .line 227
    :pswitch_1
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/GcmRegistrar;->register()V

    goto :goto_0

    .line 222
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static stopPpnsService(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v0

    sget-object v1, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v0, v1, :cond_0

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/parse/PushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 199
    :cond_0
    return-void
.end method

.method public static subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 262
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, p2, v0}, Lcom/parse/PushService;->subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V

    .line 263
    return-void
.end method

.method public static declared-synchronized subscribe(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/parse/PushService;->checkManifestAndThrowExceptionIfNeeded()V

    .line 298
    if-nez p1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t subscribe to null channel."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 302
    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Lcom/parse/PushRouter;->subscribeAsync(Ljava/lang/String;Ljava/lang/Class;I)Lbolts/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/PushService$1;

    invoke-direct {v2}, Lcom/parse/PushService$1;-><init>()V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    monitor-exit v1

    return-void
.end method

.method static unregisterServiceLifecycleCallbacks(Lcom/parse/PushService$ServiceLifecycleCallbacks;)V
    .locals 2
    .param p0, "callbacks"    # Lcom/parse/PushService$ServiceLifecycleCallbacks;

    .prologue
    .line 143
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    .line 144
    :try_start_0
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 146
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/PushService;->serviceLifecycleCallbacks:Ljava/util/List;

    .line 148
    :cond_0
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static declared-synchronized unsubscribe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "channel"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 326
    const-class v1, Lcom/parse/PushService;

    monitor-enter v1

    if-nez p1, :cond_0

    .line 327
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t unsubscribe from null channel."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 330
    :cond_0
    :try_start_1
    invoke-static {p1}, Lcom/parse/PushService;->unsubscribeInternal(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 331
    monitor-exit v1

    return-void
.end method

.method private static unsubscribeInternal(Ljava/lang/String;)V
    .locals 2
    .param p0, "channel"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {}, Lcom/parse/PushService;->checkManifestAndThrowExceptionIfNeeded()V

    .line 335
    invoke-static {p0}, Lcom/parse/PushRouter;->unsubscribeAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/PushService$3;

    invoke-direct {v1}, Lcom/parse/PushService$3;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/PushService$2;

    invoke-direct {v1}, Lcom/parse/PushService$2;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    .line 349
    return-void
.end method

.method static useServer(Ljava/lang/String;I)V
    .locals 0
    .param p0, "theHost"    # Ljava/lang/String;
    .param p1, "thePort"    # I

    .prologue
    .line 444
    sput-object p0, Lcom/parse/PushService;->host:Ljava/lang/String;

    .line 445
    sput p1, Lcom/parse/PushService;->port:I

    .line 446
    return-void
.end method

.method private wipeRoutingAndUpgradePushStateIfNeeded()V
    .locals 1

    .prologue
    .line 504
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-static {}, Lcom/parse/PushRouter;->wipeRoutingAndUpgradePushStateAsync()Lbolts/Task;

    .line 507
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 595
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You cannot bind directly to the PushService. Use PushService.subscribe instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 457
    sget-object v0, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 458
    const-string v0, "com.parse.PushService"

    const-string v1, "The Parse push service cannot start because Parse.initialize has not yet been called. If you call Parse.initialize from an Activity\'s onCreate, that call should instead be in the Application.onCreate. Be sure your Application class is registered in your AndroidManifest.xml with the android:name property of your <application> tag."

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Lcom/parse/PushService;->stopSelf()V

    .line 481
    :goto_0
    return-void

    .line 468
    :cond_0
    sget-object v0, Lcom/parse/PushService$8;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 476
    const-string v0, "com.parse.PushService"

    const-string v1, "PushService somehow started even though this device doesn\'t support push."

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_1
    invoke-static {p0}, Lcom/parse/PushService;->dispatchOnServiceCreated(Landroid/app/Service;)V

    goto :goto_0

    .line 470
    :pswitch_0
    new-instance v0, Lcom/parse/PushConnection;

    sget-object v1, Lcom/parse/PushService;->host:Ljava/lang/String;

    sget v2, Lcom/parse/PushService;->port:I

    invoke-direct {v0, p0, v1, v2}, Lcom/parse/PushConnection;-><init>(Landroid/app/Service;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    goto :goto_1

    .line 473
    :pswitch_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    goto :goto_1

    .line 468
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/parse/PushService;->connection:Lcom/parse/PushConnection;

    invoke-virtual {v0}, Lcom/parse/PushConnection;->stop()V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/parse/PushService;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 612
    :cond_1
    invoke-static {p0}, Lcom/parse/PushService;->dispatchOnServiceDestroyed(Landroid/app/Service;)V

    .line 614
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 615
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 485
    invoke-direct {p0}, Lcom/parse/PushService;->wipeRoutingAndUpgradePushStateIfNeeded()V

    .line 486
    sget-object v0, Lcom/parse/PushService$8;->$SwitchMap$com$parse$PushType:[I

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/PushType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 492
    const-string v0, "com.parse.PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started push service even though no push service is enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {p1}, Lcom/parse/ServiceUtils;->completeWakefulIntent(Landroid/content/Intent;)V

    .line 494
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 488
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/PushService;->onPpnsStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 490
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/PushService;->onGcmStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
