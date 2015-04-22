.class Lcom/parse/ParseUser$21;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;Lbolts/Task;)Lbolts/Task;
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

.field final synthetic val$toAwait:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 1641
    iput-object p1, p0, Lcom/parse/ParseUser$21;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$21;->val$toAwait:Lbolts/Task;

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
    .line 1644
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseUser$21;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$21;->val$toAwait:Lbolts/Task;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->saveAsync(Lbolts/Task;)Lbolts/Task;

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
    .line 1641
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$21;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
