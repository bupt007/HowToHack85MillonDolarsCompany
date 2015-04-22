.class Lcom/parse/ParseSQLiteDatabase$6;
.super Ljava/lang/Object;
.source "ParseSQLiteDatabase.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteDatabase;->open(Landroid/database/sqlite/SQLiteOpenHelper;)Lbolts/Task;
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
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$6;->this$0:Lcom/parse/ParseSQLiteDatabase;

    iput-object p2, p0, Lcom/parse/ParseSQLiteDatabase$6;->val$helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Landroid/database/sqlite/SQLiteDatabase;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$6;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->openFlags:I
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$400(Lcom/parse/ParseSQLiteDatabase;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$6;->val$helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$6;->val$helper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_0
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
    .line 100
    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$6;->then(Lbolts/Task;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
