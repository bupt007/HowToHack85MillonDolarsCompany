.class Lcom/parse/ParseSQLiteDatabase$27;
.super Ljava/lang/Object;
.source "ParseSQLiteDatabase.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteDatabase;->rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;
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
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$sql:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$27;->this$0:Lcom/parse/ParseSQLiteDatabase;

    iput-object p2, p0, Lcom/parse/ParseSQLiteDatabase$27;->val$sql:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseSQLiteDatabase$27;->val$args:[Ljava/lang/String;

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
            "Ljava/lang/Void;",
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
    .line 356
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$27;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase$27;->val$sql:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase$27;->val$args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

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
    .line 353
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$27;->then(Lbolts/Task;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
