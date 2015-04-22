.class Lcom/parse/ParseObject$39;
.super Lcom/parse/ParseTraverser;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->canBeSerialized()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$result:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 2228
    iput-object p1, p0, Lcom/parse/ParseObject$39;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$39;->val$result:Lbolts/Capture;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 2231
    instance-of v1, p1, Lcom/parse/ParseObject;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2232
    check-cast v0, Lcom/parse/ParseObject;

    .line 2233
    .local v0, "object":Lcom/parse/ParseObject;
    invoke-virtual {v0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2234
    iget-object v1, p0, Lcom/parse/ParseObject$39;->val$result:Lbolts/Capture;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 2239
    .end local v0    # "object":Lcom/parse/ParseObject;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseObject$39;->val$result:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
