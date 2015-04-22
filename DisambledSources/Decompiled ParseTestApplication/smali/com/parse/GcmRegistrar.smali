.class Lcom/parse/GcmRegistrar;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/GcmRegistrar$Request;,
        Lcom/parse/GcmRegistrar$Singleton;
    }
.end annotation


# static fields
.field private static final ERROR_EXTRA:Ljava/lang/String; = "error"

.field private static final PARSE_SENDER_ID:Ljava/lang/String; = "1076345567071"

.field public static final REGISTER_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTER"

.field public static final REGISTER_RESPONSE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final REGISTRATION_ID_EXTRA:Ljava/lang/String; = "registration_id"

.field private static final SENDER_ID_EXTRA:Ljava/lang/String; = "com.parse.push.gcm_sender_id"

.field private static final TAG:Ljava/lang/String; = "com.parse.GcmRegistrar"


# instance fields
.field private context:Landroid/content/Context;

.field private final lock:Ljava/lang/Object;

.field private request:Lcom/parse/GcmRegistrar$Request;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    .line 56
    iput-object v1, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    .line 57
    iput-object v1, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    .line 61
    iput-object p1, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/GcmRegistrar;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/GcmRegistrar;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/GcmRegistrar;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/parse/GcmRegistrar;->sendRegistrationRequest()V

    return-void
.end method

.method static synthetic access$202(Lcom/parse/GcmRegistrar;Lcom/parse/GcmRegistrar$Request;)Lcom/parse/GcmRegistrar$Request;
    .locals 0
    .param p0, "x0"    # Lcom/parse/GcmRegistrar;
    .param p1, "x1"    # Lcom/parse/GcmRegistrar$Request;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    return-object p1
.end method

.method private static actualSenderIDFromExtra(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "senderIDExtra"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 43
    instance-of v2, p0, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 52
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move-object v0, p0

    .line 47
    check-cast v0, Ljava/lang/String;

    .line 48
    .local v0, "senderID":Ljava/lang/String;
    const-string v2, "id:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/parse/GcmRegistrar;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/parse/GcmRegistrar$Singleton;->INSTANCE:Lcom/parse/GcmRegistrar;

    return-object v0
.end method

.method private sendRegistrationRequest()V
    .locals 8

    .prologue
    .line 125
    iget-object v5, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 126
    :try_start_0
    iget-object v4, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-nez v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    .line 139
    .local v0, "metaData":Landroid/os/Bundle;
    const-string v3, "1076345567071"

    .line 140
    .local v3, "senderIDs":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 141
    const-string v4, "com.parse.push.gcm_sender_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 143
    .local v2, "senderIDExtra":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 144
    invoke-static {v2}, Lcom/parse/GcmRegistrar;->actualSenderIDFromExtra(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "senderID":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 156
    .end local v1    # "senderID":Ljava/lang/String;
    .end local v2    # "senderIDExtra":Ljava/lang/Object;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/parse/GcmRegistrar;->context:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/parse/GcmRegistrar$Request;->createAndSend(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/GcmRegistrar$Request;

    move-result-object v4

    iput-object v4, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    .line 157
    iget-object v4, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    invoke-virtual {v4}, Lcom/parse/GcmRegistrar$Request;->getTask()Lbolts/Task;

    move-result-object v4

    new-instance v6, Lcom/parse/GcmRegistrar$2;

    invoke-direct {v6, p0}, Lcom/parse/GcmRegistrar$2;-><init>(Lcom/parse/GcmRegistrar;)V

    invoke-virtual {v4, v6}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 173
    .end local v0    # "metaData":Landroid/os/Bundle;
    .end local v3    # "senderIDs":Ljava/lang/String;
    :cond_1
    monitor-exit v5

    .line 174
    return-void

    .line 149
    .restart local v0    # "metaData":Landroid/os/Bundle;
    .restart local v1    # "senderID":Ljava/lang/String;
    .restart local v2    # "senderIDExtra":Ljava/lang/Object;
    .restart local v3    # "senderIDs":Ljava/lang/String;
    :cond_2
    const-string v4, "com.parse.GcmRegistrar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found com.parse.push.gcm_sender_id <meta-data> element with value \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", but the value is missing the expected \"id:\" "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "prefix."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v0    # "metaData":Landroid/os/Bundle;
    .end local v1    # "senderID":Ljava/lang/String;
    .end local v2    # "senderIDExtra":Ljava/lang/Object;
    .end local v3    # "senderIDs":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method getRequestIdentifier()I
    .locals 2

    .prologue
    .line 210
    iget-object v1, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    # getter for: Lcom/parse/GcmRegistrar$Request;->identifier:I
    invoke-static {v0}, Lcom/parse/GcmRegistrar$Request;->access$300(Lcom/parse/GcmRegistrar$Request;)I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleRegistrationIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 185
    invoke-virtual {p0, p1}, Lcom/parse/GcmRegistrar;->isRegistrationIntent(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    const-string v2, "registration_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "registrationId":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 193
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 195
    .local v0, "installation":Lcom/parse/ParseInstallation;
    sget-object v2, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    invoke-virtual {v0, v2}, Lcom/parse/ParseInstallation;->setPushType(Lcom/parse/PushType;)V

    .line 196
    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->setDeviceToken(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 200
    .end local v0    # "installation":Lcom/parse/ParseInstallation;
    :cond_0
    iget-object v3, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    if-eqz v2, :cond_1

    .line 202
    iget-object v2, p0, Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;

    invoke-virtual {v2, p1}, Lcom/parse/GcmRegistrar$Request;->onReceiveResponseIntent(Landroid/content/Intent;)V

    .line 204
    :cond_1
    monitor-exit v3

    .line 206
    .end local v1    # "registrationId":Ljava/lang/String;
    :cond_2
    return-void

    .line 204
    .restart local v1    # "registrationId":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isRegistrationIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 177
    if-eqz p1, :cond_0

    const-string v0, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public register()V
    .locals 4

    .prologue
    .line 70
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v2, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v1, v2, :cond_3

    .line 71
    iget-object v2, p0, Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 72
    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v0

    .line 74
    .local v0, "installation":Lcom/parse/ParseInstallation;
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getDeviceToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->isDeviceTokenStale()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v3, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-eq v1, v3, :cond_1

    .line 82
    sget-object v1, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    invoke-virtual {v0, v1}, Lcom/parse/ParseInstallation;->setPushType(Lcom/parse/PushType;)V

    .line 83
    invoke-virtual {v0}, Lcom/parse/ParseInstallation;->saveEventually()Lbolts/Task;

    .line 86
    :cond_1
    invoke-direct {p0}, Lcom/parse/GcmRegistrar;->sendRegistrationRequest()V

    .line 88
    :cond_2
    monitor-exit v2

    .line 90
    .end local v0    # "installation":Lcom/parse/ParseInstallation;
    :cond_3
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    invoke-static {}, Lcom/parse/ParseInstallation;->hasCurrentInstallationAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/GcmRegistrar$1;

    invoke-direct {v1, p0}, Lcom/parse/GcmRegistrar$1;-><init>(Lcom/parse/GcmRegistrar;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
