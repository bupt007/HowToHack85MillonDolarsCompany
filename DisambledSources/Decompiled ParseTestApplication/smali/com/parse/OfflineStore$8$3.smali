.class Lcom/parse/OfflineStore$8$3;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$8;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TT;",
        "Lbolts/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$8;

.field final synthetic val$object:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$8;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/parse/OfflineStore$8$3;->this$1:Lcom/parse/OfflineStore$8;

    iput-object p2, p0, Lcom/parse/OfflineStore$8$3;->val$object:Lbolts/Capture;

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
            "<TT;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 486
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore$8$3;->val$object:Lbolts/Capture;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/parse/OfflineStore$8$3;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v1, v0, Lcom/parse/OfflineStore$8;->this$0:Lcom/parse/OfflineStore;

    iget-object v0, p0, Lcom/parse/OfflineStore$8$3;->val$object:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$8$3;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v2, v2, Lcom/parse/OfflineStore$8;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
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
    .line 483
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
