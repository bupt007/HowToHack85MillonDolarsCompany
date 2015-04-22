.class Lcom/parse/ParseObject$21;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleFetchResultAsync(Lorg/json/JSONObject;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/parse/ParseObject$21;->this$0:Lcom/parse/ParseObject;

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
    .line 1731
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    .line 1733
    const/4 p1, 0x0

    .line 1735
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    return-object p1
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
    .line 1727
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$21;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
