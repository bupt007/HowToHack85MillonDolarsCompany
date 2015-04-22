.class Lcom/parse/OfflineStore$29;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/parse/OfflineStore$29;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$29;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineStore$29;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 1134
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const-string v1, "key=?"

    .line 1135
    .local v1, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/OfflineStore$29;->val$key:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 1136
    .local v0, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/OfflineStore$29;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v3, "Dependencies"

    invoke-virtual {v2, v3, v1, v0}, Lcom/parse/ParseSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v2

    return-object v2
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
    .line 1130
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$29;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
