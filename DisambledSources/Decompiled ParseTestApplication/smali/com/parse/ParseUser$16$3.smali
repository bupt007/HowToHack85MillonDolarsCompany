.class Lcom/parse/ParseUser$16$3;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$16;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Boolean;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser$16;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$16;)V
    .locals 0

    .prologue
    .line 1275
    iput-object p1, p0, Lcom/parse/ParseUser$16$3;->this$0:Lcom/parse/ParseUser$16;

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
            "Ljava/lang/Boolean;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1278
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1279
    const-string v0, "_currentUser"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$16$3$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$16$3$1;-><init>(Lcom/parse/ParseUser$16$3;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    .line 1286
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
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
    .line 1275
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$16$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
