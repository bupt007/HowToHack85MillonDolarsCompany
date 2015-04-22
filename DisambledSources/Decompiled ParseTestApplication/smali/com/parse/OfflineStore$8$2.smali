.class Lcom/parse/OfflineStore$8$2;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$8;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TT;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$8;

.field final synthetic val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

.field final synthetic val$object:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$8;Lbolts/Capture;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/parse/OfflineStore$8$2;->this$1:Lcom/parse/OfflineStore$8;

    iput-object p2, p0, Lcom/parse/OfflineStore$8$2;->val$object:Lbolts/Capture;

    iput-object p3, p0, Lcom/parse/OfflineStore$8$2;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TT;>;)",
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
    .line 492
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore$8$2;->val$object:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    invoke-virtual {v0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 495
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$8$2;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    iget-object v0, p0, Lcom/parse/OfflineStore$8$2;->val$object:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineStore$8$2;->this$1:Lcom/parse/OfflineStore$8;

    iget-object v2, v2, Lcom/parse/OfflineStore$8;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v1, v0, v2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
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
    .line 489
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$8$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
