.class Lcom/parse/OfflineQueryLogic$14$1;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic$14;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
.field final synthetic this$1:Lcom/parse/OfflineQueryLogic$14;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic$14;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$14$1;->this$1:Lcom/parse/OfflineQueryLogic$14;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$14$1;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$14$1;->val$object:Lcom/parse/ParseObject;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$14$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 779
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 782
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    :goto_0
    return-object p1

    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Boolean;>;"
    :cond_0
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$14$1;->val$matcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$14$1;->val$object:Lcom/parse/ParseObject;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$14$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0, v1, v2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object p1

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
    .line 776
    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$14$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
