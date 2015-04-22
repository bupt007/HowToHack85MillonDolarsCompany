.class Lcom/parse/ParseConfig$3$1;
.super Ljava/lang/Object;
.source "ParseConfig.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseConfig$3;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lorg/json/JSONObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseConfig$3;

.field final synthetic val$command:Lcom/parse/ParseRESTCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseConfig$3;Lcom/parse/ParseRESTCommand;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/parse/ParseConfig$3$1;->this$0:Lcom/parse/ParseConfig$3;

    iput-object p2, p0, Lcom/parse/ParseConfig$3$1;->val$command:Lcom/parse/ParseRESTCommand;

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
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseConfig$3$1;->val$command:Lcom/parse/ParseRESTCommand;

    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->cast()Lbolts/Task;

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
    .line 94
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig$3$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
