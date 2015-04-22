.class Lcom/parse/ParseObject$9;
.super Ljava/lang/Object;
.source "ParseObject.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;)V
    .locals 0

    .prologue
    .line 1313
    iput-object p1, p0, Lcom/parse/ParseObject$9;->this$0:Lcom/parse/ParseObject;

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
    .line 1313
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$9;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v2, 0x0

    .line 1316
    iget-object v0, p0, Lcom/parse/ParseObject$9;->this$0:Lcom/parse/ParseObject;

    # getter for: Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$200(Lcom/parse/ParseObject;)Lcom/parse/ParseMulticastDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseObject$9;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseMulticastDelegate;->invoke(Ljava/lang/Object;Lcom/parse/ParseException;)V

    .line 1317
    return-object v2
.end method
