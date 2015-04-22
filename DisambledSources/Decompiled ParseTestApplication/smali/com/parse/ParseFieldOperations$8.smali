.class final Lcom/parse/ParseFieldOperations$8;
.super Ljava/lang/Object;
.source "ParseFieldOperation.java"

# interfaces
.implements Lcom/parse/ParseFieldOperations$ParseFieldOperationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    const-string v2, "objects"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 161
    .local v0, "objectsArray":Lorg/json/JSONArray;
    invoke-virtual {p2, v0}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 162
    .local v1, "objectsList":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v2, Lcom/parse/ParseRelationOperation;

    const/4 v3, 0x0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4}, Lcom/parse/ParseRelationOperation;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method
