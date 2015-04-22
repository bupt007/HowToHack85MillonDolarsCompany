.class Lcom/parse/GcmRegistrar$2;
.super Ljava/lang/Object;
.source "GcmRegistrar.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GcmRegistrar;->sendRegistrationRequest()V
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
        "Ljava/lang/String;",
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
    .line 157
    iput-object p1, p0, Lcom/parse/GcmRegistrar$2;->this$0:Lcom/parse/GcmRegistrar;

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
    .line 157
    invoke-virtual {p0, p1}, Lcom/parse/GcmRegistrar$2;->then(Lbolts/Task;)Ljava/lang/Void;

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
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 160
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    if-eqz v0, :cond_0

    .line 162
    const-string v1, "com.parse.GcmRegistrar"

    const-string v2, "Got error when trying to register for GCM push"

    invoke-static {v1, v2, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/parse/GcmRegistrar$2;->this$0:Lcom/parse/GcmRegistrar;

    # getter for: Lcom/parse/GcmRegistrar;->lock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/GcmRegistrar;->access$000(Lcom/parse/GcmRegistrar;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/parse/GcmRegistrar$2;->this$0:Lcom/parse/GcmRegistrar;

    const/4 v3, 0x0

    # setter for: Lcom/parse/GcmRegistrar;->request:Lcom/parse/GcmRegistrar$Request;
    invoke-static {v1, v3}, Lcom/parse/GcmRegistrar;->access$202(Lcom/parse/GcmRegistrar;Lcom/parse/GcmRegistrar$Request;)Lcom/parse/GcmRegistrar$Request;

    .line 167
    monitor-exit v2

    .line 169
    return-object v4

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
