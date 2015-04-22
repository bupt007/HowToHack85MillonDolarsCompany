.class Lcom/parse/ParseObject$29;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->fetchAsync(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/parse/ParseRESTCommand;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1819
    iput-object p1, p0, Lcom/parse/ParseObject$29;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$29;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseRESTCommand;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1822
    iget-object v1, p0, Lcom/parse/ParseObject$29;->this$0:Lcom/parse/ParseObject;

    iget-object v2, v1, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1823
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject$29;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    invoke-static {v1}, Lcom/parse/ParseObject;->access$000(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/parse/ParseObject$29;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->className:Ljava/lang/String;
    invoke-static {v3}, Lcom/parse/ParseObject;->access$900(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/ParseObject$29;->val$sessionToken:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/parse/ParseRESTObjectCommand;->getObjectCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1825
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->enableRetrying()V

    .line 1826
    monitor-exit v2

    return-object v0

    .line 1827
    .end local v0    # "command":Lcom/parse/ParseRESTCommand;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1819
    invoke-virtual {p0}, Lcom/parse/ParseObject$29;->call()Lcom/parse/ParseRESTCommand;

    move-result-object v0

    return-object v0
.end method
