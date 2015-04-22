.class final Lcom/parse/ParseObject$40;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic val$currentUser:Lcom/parse/ParseUser;

.field final synthetic val$objects:Ljava/util/List;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2263
    iput-object p1, p0, Lcom/parse/ParseObject$40;->val$objects:Ljava/util/List;

    iput-object p2, p0, Lcom/parse/ParseObject$40;->val$currentUser:Lcom/parse/ParseUser;

    iput-object p3, p0, Lcom/parse/ParseObject$40;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 7
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
    .line 2266
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v3, Ljava/util/IdentityHashMap;

    invoke-direct {v3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2268
    .local v3, "uniqueObjects":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Ljava/lang/Boolean;>;"
    iget-object v4, p0, Lcom/parse/ParseObject$40;->val$objects:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 2269
    .local v1, "obj":Lcom/parse/ParseObject;
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2272
    .end local v1    # "obj":Lcom/parse/ParseObject;
    :cond_0
    new-instance v2, Lbolts/Capture;

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v4}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 2274
    .local v2, "remaining":Lbolts/Capture;, "Lbolts/Capture<Ljava/util/List<Lcom/parse/ParseObject;>;>;"
    const/4 v4, 0x0

    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/ParseObject$40$1;

    invoke-direct {v5, p0, v2}, Lcom/parse/ParseObject$40$1;-><init>(Lcom/parse/ParseObject$40;Lbolts/Capture;)V

    new-instance v6, Lcom/parse/ParseObject$40$2;

    invoke-direct {v6, p0, v2}, Lcom/parse/ParseObject$40$2;-><init>(Lcom/parse/ParseObject$40;Lbolts/Capture;)V

    invoke-virtual {v4, v5, v6}, Lbolts/Task;->continueWhile(Ljava/util/concurrent/Callable;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    return-object v4
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
    .line 2263
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$40;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
