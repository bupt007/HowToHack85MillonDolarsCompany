.class Lcom/parse/OfflineStore$17;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$encoded:Lbolts/Capture;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$uuid:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;Lbolts/Capture;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/parse/OfflineStore$17;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$17;->val$uuid:Lbolts/Capture;

    iput-object p3, p0, Lcom/parse/OfflineStore$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p4, p0, Lcom/parse/OfflineStore$17;->val$encoded:Lbolts/Capture;

    iput-object p5, p0, Lcom/parse/OfflineStore$17;->val$object:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
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
    .line 862
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/parse/OfflineStore$17;->val$uuid:Lbolts/Capture;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 865
    new-instance v0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    iget-object v1, p0, Lcom/parse/OfflineStore$17;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$17;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {v0, v1, v2}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V

    .line 866
    .local v0, "encoder":Lcom/parse/OfflineStore$OfflineEncodingStrategy;
    iget-object v1, p0, Lcom/parse/OfflineStore$17;->val$encoded:Lbolts/Capture;

    iget-object v2, p0, Lcom/parse/OfflineStore$17;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v2, v0}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 868
    invoke-virtual {v0}, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->whenFinished()Lbolts/Task;

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
    .line 859
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$17;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
