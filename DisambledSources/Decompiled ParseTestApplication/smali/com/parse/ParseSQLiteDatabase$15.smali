.class Lcom/parse/ParseSQLiteDatabase$15;
.super Ljava/lang/Object;
.source "ParseSQLiteDatabase.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;
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
        "Landroid/database/Cursor;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$15;->this$0:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Landroid/database/Cursor;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/parse/ParseSQLiteDatabase;->access$500()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/ParseSQLiteCursor;->create(Landroid/database/Cursor;Ljava/util/concurrent/Executor;)Landroid/database/Cursor;

    move-result-object v0

    .line 237
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 238
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
    .line 230
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$15;->then(Lbolts/Task;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
