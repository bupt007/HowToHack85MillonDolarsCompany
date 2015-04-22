.class Lcom/parse/ParseFile$7;
.super Ljava/lang/Object;
.source "ParseFile.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFile;->getDataAsync(Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
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
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseFile;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile;)V
    .locals 0

    .prologue
    .line 486
    iput-object p1, p0, Lcom/parse/ParseFile$7;->this$0:Lcom/parse/ParseFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/parse/ParseFile$7;->then(Lbolts/Task;)[B

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 489
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/ParseFile$7;->this$0:Lcom/parse/ParseFile;

    # invokes: Lcom/parse/ParseFile;->getCachedData()[B
    invoke-static {v0}, Lcom/parse/ParseFile;->access$700(Lcom/parse/ParseFile;)[B

    move-result-object v0

    return-object v0
.end method
