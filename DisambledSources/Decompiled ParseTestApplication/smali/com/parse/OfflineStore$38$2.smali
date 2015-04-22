.class Lcom/parse/OfflineStore$38$2;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$38;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseObject;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParsePin;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$38;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$38;)V
    .locals 0

    .prologue
    .line 1370
    iput-object p1, p0, Lcom/parse/OfflineStore$38$2;->this$1:Lcom/parse/OfflineStore$38;

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
            "Lcom/parse/ParseObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParsePin;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1373
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParsePin;

    .line 1374
    .local v0, "pin":Lcom/parse/ParsePin;
    iget-object v1, p0, Lcom/parse/OfflineStore$38$2;->this$1:Lcom/parse/OfflineStore$38;

    iget-object v1, v1, Lcom/parse/OfflineStore$38;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$38$2;->this$1:Lcom/parse/OfflineStore$38;

    iget-object v2, v2, Lcom/parse/OfflineStore$38;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v1

    return-object v1
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
    .line 1370
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$38$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
