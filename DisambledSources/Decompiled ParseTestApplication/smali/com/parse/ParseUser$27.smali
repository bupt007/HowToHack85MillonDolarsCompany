.class final Lcom/parse/ParseUser$27;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->enableRevocableSessionInBackground()Lbolts/Task;
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
        "Lcom/parse/ParseUser;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1838
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
            "Lcom/parse/ParseUser;",
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
    .line 1841
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseUser;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 1842
    .local v0, "user":Lcom/parse/ParseUser;
    if-nez v0, :cond_0

    .line 1843
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 1845
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseUser;->upgradeToRevocableSessionAsync()Lbolts/Task;

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
    .line 1838
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$27;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
