.class Lcom/parse/ParseAuthenticationProvider$2;
.super Ljava/lang/Object;
.source "ParseAuthenticationProvider.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseAuthenticationProvider;->linkAsync(Lcom/parse/ParseUser;)Lbolts/Task;
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
        "Lorg/json/JSONObject;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseAuthenticationProvider;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseAuthenticationProvider;Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/parse/ParseAuthenticationProvider$2;->this$0:Lcom/parse/ParseAuthenticationProvider;

    iput-object p2, p0, Lcom/parse/ParseAuthenticationProvider$2;->val$user:Lcom/parse/ParseUser;

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
            "Lorg/json/JSONObject;",
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
    .line 66
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    iget-object v1, p0, Lcom/parse/ParseAuthenticationProvider$2;->this$0:Lcom/parse/ParseAuthenticationProvider;

    iget-object v2, p0, Lcom/parse/ParseAuthenticationProvider$2;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v0}, Lcom/parse/ParseAuthenticationProvider;->linkAsync(Lcom/parse/ParseUser;Lorg/json/JSONObject;)Lbolts/Task;

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
    .line 63
    invoke-virtual {p0, p1}, Lcom/parse/ParseAuthenticationProvider$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
