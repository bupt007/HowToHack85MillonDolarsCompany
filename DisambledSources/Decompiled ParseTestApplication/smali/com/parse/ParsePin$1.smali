.class final Lcom/parse/ParsePin$1;
.super Ljava/lang/Object;
.source "ParsePin.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/parse/ParsePin;",
        ">;",
        "Lcom/parse/ParsePin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/parse/ParsePin$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParsePin;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParsePin;",
            ">;>;)",
            "Lcom/parse/ParsePin;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<Lcom/parse/ParsePin;>;>;"
    const/4 v0, 0x0

    .line 26
    .local v0, "pin":Lcom/parse/ParsePin;
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 27
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "pin":Lcom/parse/ParsePin;
    check-cast v0, Lcom/parse/ParsePin;

    .line 32
    .restart local v0    # "pin":Lcom/parse/ParsePin;
    :cond_0
    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/parse/ParsePin;

    invoke-static {v1}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    .end local v0    # "pin":Lcom/parse/ParsePin;
    check-cast v0, Lcom/parse/ParsePin;

    .line 34
    .restart local v0    # "pin":Lcom/parse/ParsePin;
    iget-object v1, p0, Lcom/parse/ParsePin$1;->val$name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePin;->setName(Ljava/lang/String;)V

    .line 36
    :cond_1
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
    .line 22
    invoke-virtual {p0, p1}, Lcom/parse/ParsePin$1;->then(Lbolts/Task;)Lcom/parse/ParsePin;

    move-result-object v0

    return-object v0
.end method
