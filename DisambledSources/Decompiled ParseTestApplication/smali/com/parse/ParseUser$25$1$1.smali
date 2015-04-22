.class Lcom/parse/ParseUser$25$1$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$25$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/parse/ParseUser$25$1;

.field final synthetic val$commandResult:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$25$1;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1740
    iput-object p1, p0, Lcom/parse/ParseUser$25$1$1;->this$2:Lcom/parse/ParseUser$25$1;

    iput-object p2, p0, Lcom/parse/ParseUser$25$1$1;->val$commandResult:Lorg/json/JSONObject;

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
    .line 1740
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$25$1$1;->then(Lbolts/Task;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1743
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$25$1$1;->val$commandResult:Lorg/json/JSONObject;

    return-object v0
.end method
