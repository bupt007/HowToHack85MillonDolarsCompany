.class Lcom/parse/GcmRegistrar$1;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GcmRegistrar;->updateAsync()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/GcmRegistrar;


# direct methods
.method constructor <init>(Lcom/parse/GcmRegistrar;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/parse/GcmRegistrar$1;->this$0:Lcom/parse/GcmRegistrar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/parse/GcmRegistrar$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 100
    .local v0, "hasCurrentInstallation":Z
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v2

    sget-object v3, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v2, v3, :cond_2

    .line 101
    iget-object v2, p0, Lcom/parse/GcmRegistrar$1;->this$0:Lcom/parse/GcmRegistrar;

    # getter for: Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/parse/GcmRegistrar;->access$000(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 102
    :try_start_0
    invoke-static {}, Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;

    move-result-object v1

    .line 112
    .local v1, "installation":Lcom/parse/ParseInstallation;
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->getPushType()Lcom/parse/PushType;

    move-result-object v2

    sget-object v4, Lcom/parse/PushType;->GCM:Lcom/parse/PushType;

    if-ne v2, v4, :cond_1

    .line 113
    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->isDeviceTokenStale()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/parse/GcmRegistrar$1;->this$0:Lcom/parse/GcmRegistrar;

    # invokes: Lcom/parse/GcmRegistrar;->sendRegistrationRequest()V
    invoke-static {v2}, Lcom/parse/GcmRegistrar;->access$100(Lcom/parse/GcmRegistrar;)V

    .line 117
    :cond_1
    monitor-exit v3

    .line 119
    .end local v1    # "installation":Lcom/parse/ParseInstallation;
    :cond_2
    const/4 v2, 0x0

    return-object v2

    .line 117
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
