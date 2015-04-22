.class Lcom/parse/ParseInstallation$5;
.super Ljava/lang/Object;
.source "ParseInstallation.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseInstallation;->fetchAsync(Lbolts/Task;)Lbolts/Task;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseInstallation;

.field final synthetic val$toAwait:Lbolts/Task;


# direct methods
.method constructor <init>(Lcom/parse/ParseInstallation;Lbolts/Task;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/parse/ParseInstallation$5;->this$0:Lcom/parse/ParseInstallation;

    iput-object p2, p0, Lcom/parse/ParseInstallation$5;->val$toAwait:Lbolts/Task;

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
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseInstallation$5;->this$0:Lcom/parse/ParseInstallation;

    iget-object v1, p0, Lcom/parse/ParseInstallation$5;->val$toAwait:Lbolts/Task;

    # invokes: Lcom/parse/ParseObject;->fetchAsync(Lbolts/Task;)Lbolts/Task;
    invoke-static {v0, v1}, Lcom/parse/ParseInstallation;->access$001(Lcom/parse/ParseInstallation;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

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
    .line 276
    invoke-virtual {p0, p1}, Lcom/parse/ParseInstallation$5;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
