.class Lcom/parse/ParseUser$26;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/parse/ParseOperationSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;)V
    .locals 0

    .prologue
    .line 1714
    iput-object p1, p0, Lcom/parse/ParseUser$26;->this$0:Lcom/parse/ParseUser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/parse/ParseOperationSet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/parse/ParseUser$26;->this$0:Lcom/parse/ParseUser;

    invoke-virtual {v0}, Lcom/parse/ParseUser;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1714
    invoke-virtual {p0}, Lcom/parse/ParseUser$26;->call()Lcom/parse/ParseOperationSet;

    move-result-object v0

    return-object v0
.end method
