.class Lcom/parse/ParseUser$16$2;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$16;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseUser$16;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$16;)V
    .locals 0

    .prologue
    .line 1288
    iput-object p1, p0, Lcom/parse/ParseUser$16$2;->this$0:Lcom/parse/ParseUser$16;

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
    .line 1288
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 1291
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1292
    .local v0, "deleted":Z
    # getter for: Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;
    invoke-static {}, Lcom/parse/ParseUser;->access$1000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1293
    :try_start_0
    # setter for: Lcom/parse/ParseUser;->currentUserMatchesDisk:Z
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1102(Z)Z

    .line 1294
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1295
    monitor-exit v2

    .line 1296
    return-object v3

    .line 1295
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
