.class final Lcom/parse/ParseInstallation$3;
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
        "Lcom/parse/ParseInstallation;",
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
    .line 128
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
            "Lcom/parse/ParseInstallation;",
            ">;)",
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
    .line 131
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseInstallation;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseInstallation;

    .line 132
    .local v0, "ldsInstallation":Lcom/parse/ParseInstallation;
    if-eqz v0, :cond_0

    .line 136
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseInstallation;>;"
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseInstallation;>;"
    :cond_0
    const-string v1, "currentInstallation"

    const-string v2, "_currentInstallation"

    invoke-static {v1, v2}, Lcom/parse/ParseObject;->migrateFromDiskToLDS(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->cast()Lbolts/Task;

    move-result-object p1

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
    .line 128
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
