.class Lcom/parse/ParseObject$33;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deleteAsync(Lbolts/Task;)Lbolts/Task;
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


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1932
    iput-object p1, p0, Lcom/parse/ParseObject$33;->this$0:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
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
    .line 1935
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseObject$33;->this$0:Lcom/parse/ParseObject;

    iget-object v1, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1936
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject$33;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1937
    iget-object v0, p0, Lcom/parse/ParseObject$33;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$000(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1938
    const/4 p1, 0x0

    monitor-exit v1

    .line 1940
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    monitor-exit v1

    goto :goto_0

    .line 1941
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
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
    .line 1932
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$33;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
