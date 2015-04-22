.class Lcom/parse/ParsePush$2;
.super Ljava/lang/Object;
.source "ParsePush.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParsePush;->sendInBackground()Lbolts/Task;
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
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePush;


# direct methods
.method constructor <init>(Lcom/parse/ParsePush;)V
    .locals 0

    .prologue
    .line 364
    iput-object p1, p0, Lcom/parse/ParsePush$2;->this$0:Lcom/parse/ParsePush;

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
            "Ljava/lang/String;",
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
    .line 367
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 368
    .local v0, "sessionToken":Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/ParsePush$2;->this$0:Lcom/parse/ParsePush;

    invoke-virtual {v1, v0}, Lcom/parse/ParsePush;->currentSendCommand(Ljava/lang/String;)Lcom/parse/ParseRESTCommand;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    return-object v1
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
    .line 364
    invoke-virtual {p0, p1}, Lcom/parse/ParsePush$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
