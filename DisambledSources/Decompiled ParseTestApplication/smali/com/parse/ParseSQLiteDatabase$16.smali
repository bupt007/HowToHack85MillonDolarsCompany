.class Lcom/parse/ParseSQLiteDatabase$16;
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
        "Ljava/lang/Void;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$select:[Ljava/lang/String;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$where:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 225
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$16;->this$0:Lcom/parse/ParseSQLiteDatabase;

    iput-object p2, p0, Lcom/parse/ParseSQLiteDatabase$16;->val$table:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseSQLiteDatabase$16;->val$select:[Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseSQLiteDatabase$16;->val$where:Ljava/lang/String;

    iput-object p5, p0, Lcom/parse/ParseSQLiteDatabase$16;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Landroid/database/Cursor;
    .locals 8
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
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v5, 0x0

    .line 228
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$16;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase$16;->val$table:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase$16;->val$select:[Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseSQLiteDatabase$16;->val$where:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseSQLiteDatabase$16;->val$args:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

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
    .line 225
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$16;->then(Lbolts/Task;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
