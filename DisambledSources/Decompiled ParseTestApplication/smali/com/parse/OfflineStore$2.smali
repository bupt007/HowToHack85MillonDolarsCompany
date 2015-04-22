.class Lcom/parse/OfflineStore$2;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$newUUID:Ljava/lang/String;

.field final synthetic val$tcs:Lbolts/Task$TaskCompletionSource;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lbolts/Task$TaskCompletionSource;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/parse/OfflineStore$2;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iput-object p3, p0, Lcom/parse/OfflineStore$2;->val$newUUID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$2;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore$2;->val$tcs:Lbolts/Task$TaskCompletionSource;

    iget-object v1, p0, Lcom/parse/OfflineStore$2;->val$newUUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbolts/Task$TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 269
    const/4 v0, 0x0

    return-object v0
.end method
