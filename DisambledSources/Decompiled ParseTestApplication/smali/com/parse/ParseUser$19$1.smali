.class Lcom/parse/ParseUser$19$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$19;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$19;

.field final synthetic val$oldAnonymousData:Lorg/json/JSONObject;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$19;Lcom/parse/ParseUser;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1558
    iput-object p1, p0, Lcom/parse/ParseUser$19$1;->this$0:Lcom/parse/ParseUser$19;

    iput-object p2, p0, Lcom/parse/ParseUser$19$1;->val$user:Lcom/parse/ParseUser;

    iput-object p3, p0, Lcom/parse/ParseUser$19$1;->val$oldAnonymousData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1561
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseUser$19$1$2;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$19$1$2;-><init>(Lcom/parse/ParseUser$19$1;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$19$1$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$19$1$1;-><init>(Lcom/parse/ParseUser$19$1;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

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
    .line 1558
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$19$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
