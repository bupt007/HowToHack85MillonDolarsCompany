.class Lcom/parse/ParseSQLiteDatabase$13;
.super Ljava/lang/Object;
.source "ParseSQLiteDatabase.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteDatabase;->closeAsync()Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:Lbolts/Task$TaskCompletionSource;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v0, v2}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:Lbolts/Task$TaskCompletionSource;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 202
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:Lbolts/Task$TaskCompletionSource;
    invoke-static {v1}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task$TaskCompletionSource;

    move-result-object v1

    invoke-virtual {v1, v2}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

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
    .line 196
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$13;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
