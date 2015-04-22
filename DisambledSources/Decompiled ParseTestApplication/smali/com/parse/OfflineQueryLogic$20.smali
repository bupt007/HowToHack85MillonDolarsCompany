.class Lcom/parse/OfflineQueryLogic$20;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$container:Ljava/lang/Object;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1016
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$20;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$20;->val$db:Lcom/parse/ParseSQLiteDatabase;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$20;->val$key:Ljava/lang/String;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v0, 0x0

    .line 1019
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    instance-of v1, v1, Lcom/parse/ParseObject;

    if-eqz v1, :cond_1

    .line 1021
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$20;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    invoke-static {v1, v2, v0, v3}, Lcom/parse/OfflineQueryLogic;->access$600(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineQueryLogic$20$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineQueryLogic$20$1;-><init>(Lcom/parse/OfflineQueryLogic$20;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 1036
    :cond_0
    :goto_0
    return-object v0

    .line 1027
    :cond_1
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 1028
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20;->val$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 1029
    :cond_2
    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    .line 1030
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 1031
    :cond_3
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1036
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "include is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

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
    .line 1016
    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$20;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
