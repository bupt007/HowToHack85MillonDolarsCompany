.class Lcom/parse/OfflineStore$25;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->unpinAsync(Lcom/parse/ParseObject;)Lbolts/Task;
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
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;)V
    .locals 0

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/parse/OfflineStore$25;->this$0:Lcom/parse/OfflineStore;

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
            "Ljava/lang/String;",
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
    .line 1063
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1064
    .local v0, "uuid":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1066
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 1068
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$25;->this$0:Lcom/parse/OfflineStore;

    # invokes: Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;)Lbolts/Task;
    invoke-static {v1, v0}, Lcom/parse/OfflineStore;->access$1300(Lcom/parse/OfflineStore;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
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
    .line 1060
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$25;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
