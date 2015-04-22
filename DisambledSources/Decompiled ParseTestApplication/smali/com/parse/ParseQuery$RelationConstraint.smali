.class Lcom/parse/ParseQuery$RelationConstraint;
.super Ljava/lang/Object;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RelationConstraint"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field private object:Lcom/parse/ParseObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/ParseObject;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_1
    iput-object p1, p0, Lcom/parse/ParseQuery$RelationConstraint;->key:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lcom/parse/ParseQuery$RelationConstraint;->object:Lcom/parse/ParseObject;

    .line 112
    return-void
.end method


# virtual methods
.method public encode(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;

    .prologue
    .line 130
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 132
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "key"

    iget-object v3, p0, Lcom/parse/ParseQuery$RelationConstraint;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v2, "object"

    iget-object v3, p0, Lcom/parse/ParseQuery$RelationConstraint;->object:Lcom/parse/ParseObject;

    invoke-interface {p1, v3}, Lcom/parse/ParseObjectEncodingStrategy;->encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/parse/ParseQuery$RelationConstraint;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Lcom/parse/ParseObject;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/parse/ParseQuery$RelationConstraint;->object:Lcom/parse/ParseObject;

    return-object v0
.end method

.method public getRelation()Lcom/parse/ParseRelation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseRelation",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parse/ParseQuery$RelationConstraint;->object:Lcom/parse/ParseObject;

    iget-object v1, p0, Lcom/parse/ParseQuery$RelationConstraint;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;

    move-result-object v0

    return-object v0
.end method
