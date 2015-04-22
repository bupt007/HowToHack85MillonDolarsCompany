.class Lcom/parse/ParseSQLiteDatabase$22;
.super Ljava/lang/Object;
.source "ParseSQLiteDatabase.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteDatabase;->updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$values:Landroid/content/ContentValues;

.field final synthetic val$where:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$22;->this$0:Lcom/parse/ParseSQLiteDatabase;

    iput-object p2, p0, Lcom/parse/ParseSQLiteDatabase$22;->val$table:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseSQLiteDatabase$22;->val$values:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/parse/ParseSQLiteDatabase$22;->val$where:Ljava/lang/String;

    iput-object p5, p0, Lcom/parse/ParseSQLiteDatabase$22;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Integer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 309
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$22;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase$22;->val$table:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase$22;->val$values:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/parse/ParseSQLiteDatabase$22;->val$where:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseSQLiteDatabase$22;->val$args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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
    .line 306
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$22;->then(Lbolts/Task;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
