.class Lcom/parse/ParseCloud$1$1;
.super Ljava/lang/Object;
.source "ParseCloud.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseCloud$1;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCloud$1;


# direct methods
.method constructor <init>(Lcom/parse/ParseCloud$1;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/parse/ParseCloud$1$1;->this$0:Lcom/parse/ParseCloud$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/parse/ParseCloud;->convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/ParseCloud;->access$000(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "result":Ljava/lang/Object;, "TT;"
    return-object v0
.end method
