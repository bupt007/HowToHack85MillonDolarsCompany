.class Lcom/parse/OfflineStore$19$3;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$19;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/OfflineStore$19;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$19;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lcom/parse/OfflineStore$19$3;->this$1:Lcom/parse/OfflineStore$19;

    iput-object p2, p0, Lcom/parse/OfflineStore$19$3;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
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
    .line 952
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore$19$3;->this$1:Lcom/parse/OfflineStore$19;

    iget-object v0, v0, Lcom/parse/OfflineStore$19;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$19$3;->this$1:Lcom/parse/OfflineStore$19;

    iget-object v1, v1, Lcom/parse/OfflineStore$19;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$19$3;->this$1:Lcom/parse/OfflineStore$19;

    iget-object v2, v2, Lcom/parse/OfflineStore$19;->val$children:Ljava/util/List;

    iget-object v3, p0, Lcom/parse/OfflineStore$19$3;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    invoke-static {v0, v1, v2, v3}, Lcom/parse/OfflineStore;->access$1000(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

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
    .line 949
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$19$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
