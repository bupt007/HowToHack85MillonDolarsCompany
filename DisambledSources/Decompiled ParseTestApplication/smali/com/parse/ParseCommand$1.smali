.class Lcom/parse/ParseCommand$1;
.super Ljava/lang/Object;
.source "ParseCommand.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCommand;->onPreExecute(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseCommand;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommand;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/parse/ParseCommand$1;->this$0:Lcom/parse/ParseCommand;

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
    .line 385
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseCommand$1;->this$0:Lcom/parse/ParseCommand;

    invoke-static {}, Lcom/parse/ParseInstallation;->getOrCreateCurrentInstallationId()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/parse/ParseCommand;->installationId:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/parse/ParseCommand;->access$002(Lcom/parse/ParseCommand;Ljava/lang/String;)Ljava/lang/String;

    .line 386
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
    .line 382
    invoke-virtual {p0, p1}, Lcom/parse/ParseCommand$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
