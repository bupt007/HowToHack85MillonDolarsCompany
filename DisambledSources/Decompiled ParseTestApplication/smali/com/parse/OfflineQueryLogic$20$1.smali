.class Lcom/parse/OfflineQueryLogic$20$1;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic$20;->then(Lbolts/Task;)Lbolts/Task;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineQueryLogic$20;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic$20;)V
    .locals 0

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$20$1;->this$1:Lcom/parse/OfflineQueryLogic$20;

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
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1024
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$20$1;->this$1:Lcom/parse/OfflineQueryLogic$20;

    iget-object v0, v0, Lcom/parse/OfflineQueryLogic$20;->val$container:Ljava/lang/Object;

    check-cast v0, Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$20$1;->this$1:Lcom/parse/OfflineQueryLogic$20;

    iget-object v1, v1, Lcom/parse/OfflineQueryLogic$20;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
