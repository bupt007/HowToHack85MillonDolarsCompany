.class Lcom/parse/ParseObject$13;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAsync(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/parse/ParseObject$13;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$13;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1396
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$13;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1403
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$13;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$300(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseObject$13;->val$sessionToken:Ljava/lang/String;

    # invokes: Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->access$400(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1393
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$13;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
