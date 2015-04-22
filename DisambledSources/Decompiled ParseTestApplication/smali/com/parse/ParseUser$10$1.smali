.class Lcom/parse/ParseUser$10$1;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$10;->then(Lbolts/Task;)Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        "Lbolts/Task",
        "<",
        "Lcom/parse/ParseUser;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$10;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$10;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/parse/ParseUser$10$1;->this$0:Lcom/parse/ParseUser$10;

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
            "Lcom/parse/ParseUser;",
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
    .line 1093
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1094
    .local v0, "ldsUser":Lcom/parse/ParseUser;
    if-eqz v0, :cond_0

    .line 1098
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    :cond_0
    const-string v1, "currentUser"

    const-string v2, "_currentUser"

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
    .line 1090
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$10$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
