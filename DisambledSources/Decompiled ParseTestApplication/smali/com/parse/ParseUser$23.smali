.class Lcom/parse/ParseUser$23;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authData:Lorg/json/JSONObject;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/parse/ParseUser$23;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$23;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$23;->val$authData:Lorg/json/JSONObject;

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
    .line 1666
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$23;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$23;->val$authType:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseUser$23;->val$authData:Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;Lbolts/Task;)Lbolts/Task;
    invoke-static {v0, v1, v2, p1}, Lcom/parse/ParseUser;->access$2300(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;Lbolts/Task;)Lbolts/Task;

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
    .line 1663
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$23;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
