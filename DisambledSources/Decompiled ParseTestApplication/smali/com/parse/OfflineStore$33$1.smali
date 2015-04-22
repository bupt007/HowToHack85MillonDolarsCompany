.class Lcom/parse/OfflineStore$33$1;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$33;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseSQLiteDatabase;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$33;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$33;)V
    .locals 0

    .prologue
    .line 1222
    iput-object p1, p0, Lcom/parse/OfflineStore$33$1;->this$1:Lcom/parse/OfflineStore$33;

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
            "Lcom/parse/ParseSQLiteDatabase;",
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
    .line 1225
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseSQLiteDatabase;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseSQLiteDatabase;

    .line 1226
    .local v0, "db":Lcom/parse/ParseSQLiteDatabase;
    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->beginTransactionAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$33$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$33$1$1;-><init>(Lcom/parse/OfflineStore$33$1;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

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
    .line 1222
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$33$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
