.class final Lcom/parse/ParseInstallation$4;
.super Ljava/lang/Object;
.source "ParseInstallation.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseInstallation;->getCurrentInstallation()Lcom/parse/ParseInstallation;
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
        "Lcom/parse/ParseInstallation;",
        ">;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseInstallation;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
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
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;>;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/util/List<Lcom/parse/ParseInstallation;>;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseInstallation;>;"
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 121
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 126
    :goto_0
    return-object v1

    .line 123
    :cond_0
    const-string v1, "_currentInstallation"

    invoke-static {v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 126
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

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
    .line 115
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
