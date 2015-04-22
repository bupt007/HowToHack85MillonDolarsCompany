.class final Lcom/parse/ParseObject$4;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->migrateFromDiskToLDS(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
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
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$disk:Lcom/parse/ParseObject;

.field final synthetic val$filename:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/parse/ParseObject$4;->val$filename:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/ParseObject$4;->val$disk:Lcom/parse/ParseObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/ParseObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/ParseObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 431
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseObject$4;->val$filename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject$4;->val$disk:Lcom/parse/ParseObject;

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
    .line 428
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$4;->then(Lbolts/Task;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
