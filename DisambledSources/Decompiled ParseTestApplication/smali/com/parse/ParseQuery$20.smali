.class Lcom/parse/ParseQuery$20;
.super Ljava/lang/Object;
.source "ParseQuery.java"

# interfaces
.implements Lcom/parse/ParseQuery$CallableWithCachePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQuery;->getFirstInBackground(Lcom/parse/GetCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseQuery$CallableWithCachePolicy",
        "<",
        "Lbolts/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseQuery;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery;)V
    .locals 0

    .prologue
    .line 1126
    .local p0, "this":Lcom/parse/ParseQuery$20;, "Lcom/parse/ParseQuery.20;"
    iput-object p1, p0, Lcom/parse/ParseQuery$20;->this$0:Lcom/parse/ParseQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;
    .locals 2
    .param p1, "cachePolicy"    # Lcom/parse/ParseQuery$CachePolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1129
    .local p0, "this":Lcom/parse/ParseQuery$20;, "Lcom/parse/ParseQuery.20;"
    iget-object v0, p0, Lcom/parse/ParseQuery$20;->this$0:Lcom/parse/ParseQuery;

    # invokes: Lcom/parse/ParseQuery;->getUserAsync()Lbolts/Task;
    invoke-static {v0}, Lcom/parse/ParseQuery;->access$1600(Lcom/parse/ParseQuery;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseQuery$20$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseQuery$20$1;-><init>(Lcom/parse/ParseQuery$20;Lcom/parse/ParseQuery$CachePolicy;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/parse/ParseQuery$CachePolicy;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/parse/ParseQuery$CachePolicy;

    .prologue
    .line 1126
    .local p0, "this":Lcom/parse/ParseQuery$20;, "Lcom/parse/ParseQuery.20;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery$20;->call(Lcom/parse/ParseQuery$CachePolicy;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
