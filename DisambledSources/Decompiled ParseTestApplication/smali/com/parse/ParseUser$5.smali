.class Lcom/parse/ParseUser$5;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->signUpAsync(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseOperationSet;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$5;->val$sessionToken:Ljava/lang/String;

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
            "Lcom/parse/ParseOperationSet;",
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
    .line 793
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseOperationSet;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseOperationSet;

    .line 794
    .local v2, "operations":Lcom/parse/ParseOperationSet;
    iget-object v3, p0, Lcom/parse/ParseUser$5;->this$0:Lcom/parse/ParseUser;

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/parse/ParseUser;->toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v1

    .line 795
    .local v1, "objectJSON":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/parse/ParseUser$5;->val$sessionToken:Ljava/lang/String;

    # invokes: Lcom/parse/ParseUser;->isRevocableSessionEnabled()Z
    invoke-static {}, Lcom/parse/ParseUser;->access$500()Z

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/parse/ParseRESTUserCommand;->signUpUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 797
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/ParseUser$5$1;

    invoke-direct {v4, p0, v2}, Lcom/parse/ParseUser$5$1;-><init>(Lcom/parse/ParseUser$5;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    return-object v3
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
    .line 790
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
