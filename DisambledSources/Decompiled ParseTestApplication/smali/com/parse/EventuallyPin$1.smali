.class final Lcom/parse/EventuallyPin$1;
.super Ljava/lang/Object;
.source "EventuallyPin.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/EventuallyPin;->pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;
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
        "Lcom/parse/EventuallyPin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pin:Lcom/parse/EventuallyPin;


# direct methods
.method constructor <init>(Lcom/parse/EventuallyPin;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/parse/EventuallyPin$1;->val$pin:Lcom/parse/EventuallyPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/parse/EventuallyPin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lcom/parse/EventuallyPin;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/EventuallyPin$1;->val$pin:Lcom/parse/EventuallyPin;

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
    .line 148
    invoke-virtual {p0, p1}, Lcom/parse/EventuallyPin$1;->then(Lbolts/Task;)Lcom/parse/EventuallyPin;

    move-result-object v0

    return-object v0
.end method
