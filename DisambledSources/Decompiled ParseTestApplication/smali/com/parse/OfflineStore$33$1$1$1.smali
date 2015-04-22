.class Lcom/parse/OfflineStore$33$1$1$1;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$33$1$1;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$3:Lcom/parse/OfflineStore$33$1$1;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$33$1$1;)V
    .locals 0

    .prologue
    .line 1234
    iput-object p1, p0, Lcom/parse/OfflineStore$33$1$1$1;->this$3:Lcom/parse/OfflineStore$33$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
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
    .line 1238
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore$33$1$1$1;->this$3:Lcom/parse/OfflineStore$33$1$1;

    iget-object v0, v0, Lcom/parse/OfflineStore$33$1$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->endTransactionAsync()Lbolts/Task;

    .line 1239
    iget-object v0, p0, Lcom/parse/OfflineStore$33$1$1$1;->this$3:Lcom/parse/OfflineStore$33$1$1;

    iget-object v0, v0, Lcom/parse/OfflineStore$33$1$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->closeAsync()Lbolts/Task;

    .line 1240
    return-object p1
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
    .line 1234
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$33$1$1$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
