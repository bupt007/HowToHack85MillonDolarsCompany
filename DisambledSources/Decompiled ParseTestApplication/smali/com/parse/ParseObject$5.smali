.class Lcom/parse/ParseObject$5;
.super Lcom/parse/ParseTraverser;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$fetchedObjects:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/parse/ParseObject$5;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$5;->val$fetchedObjects:Ljava/util/Map;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 679
    instance-of v1, p1, Lcom/parse/ParseObject;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 680
    check-cast v0, Lcom/parse/ParseObject;

    .line 681
    .local v0, "parseObj":Lcom/parse/ParseObject;
    # getter for: Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$000(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/parse/ParseObject$5;->val$fetchedObjects:Ljava/util/Map;

    # getter for: Lcom/parse/ParseObject;->objectId:Ljava/lang/String;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$000(Lcom/parse/ParseObject;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    .end local v0    # "parseObj":Lcom/parse/ParseObject;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
