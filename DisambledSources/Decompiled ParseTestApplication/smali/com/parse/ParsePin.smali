.class Lcom/parse/ParsePin;
.super Lcom/parse/ParseObject;
.source "ParsePin.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Pin"
.end annotation


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "_name"

.field private static final KEY_OBJECTS:Ljava/lang/String; = "_objects"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 134
    return-void
.end method

.method static getParsePin(Ljava/lang/String;)Lbolts/Task;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParsePin;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 16
    const-class v1, Lcom/parse/ParsePin;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v1

    const-string v2, "_name"

    invoke-virtual {v1, v2, p0}, Lcom/parse/ParseQuery;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 22
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/ParsePin;>;"
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParsePin$1;

    invoke-direct {v2, p0}, Lcom/parse/ParsePin$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method static pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "includeChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePin$2;

    invoke-direct {v1, p1, p2}, Lcom/parse/ParsePin$2;-><init>(Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method static unpinAllObjectsAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    invoke-static {p0}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePin$4;

    invoke-direct {v1}, Lcom/parse/ParsePin$4;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 88
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/parse/ParsePin;->getParsePin(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParsePin$3;

    invoke-direct {v1, p1}, Lcom/parse/ParsePin$3;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    const-string v0, "_name"

    invoke-virtual {p0, v0}, Lcom/parse/ParsePin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    const-string v0, "_objects"

    invoke-virtual {p0, v0}, Lcom/parse/ParsePin;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, "_name"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParsePin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public setObjects(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    const-string v0, "_objects"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParsePin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    return-void
.end method
