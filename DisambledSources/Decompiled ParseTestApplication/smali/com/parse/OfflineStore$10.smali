.class Lcom/parse/OfflineStore$10;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$select:[Ljava/lang/String;

.field final synthetic val$uuid:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 664
    iput-object p1, p0, Lcom/parse/OfflineStore$10;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$10;->val$uuid:Lbolts/Capture;

    iput-object p3, p0, Lcom/parse/OfflineStore$10;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p4, p0, Lcom/parse/OfflineStore$10;->val$select:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 667
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/parse/OfflineStore$10;->val$uuid:Lbolts/Capture;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 668
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/parse/OfflineStore$10;->val$uuid:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v0, v2

    .line 669
    .local v0, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/OfflineStore$10;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v2, "ParseObjects"

    iget-object v3, p0, Lcom/parse/OfflineStore$10;->val$select:[Ljava/lang/String;

    const-string v4, "uuid = ?"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

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
    .line 664
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$10;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
