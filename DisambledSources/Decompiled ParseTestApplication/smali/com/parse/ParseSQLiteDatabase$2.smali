.class Lcom/parse/ParseSQLiteDatabase$2;
.super Ljava/lang/Object;
.source "ParseSQLiteDatabase.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteDatabase;-><init>(I)V
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
    .line 57
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$2;->this$0:Lcom/parse/ParseSQLiteDatabase;

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
    .line 60
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$2;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$000(Lcom/parse/ParseSQLiteDatabase;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$2;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # setter for: Lcom/parse/ParseSQLiteDatabase;->current:Lbolts/Task;
    invoke-static {v0, p1}, Lcom/parse/ParseSQLiteDatabase;->access$102(Lcom/parse/ParseSQLiteDatabase;Lbolts/Task;)Lbolts/Task;

    .line 62
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$2;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:Lbolts/Task$TaskCompletionSource;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
    .line 57
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
