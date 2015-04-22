.class Lcom/parse/PointerOrLocalIdEncodingStrategy;
.super Ljava/lang/Object;
.source "PointerOrLocalIdEncodingStrategy.java"

# interfaces
.implements Lcom/parse/ParseObjectEncodingStrategy;


# static fields
.field private static final instance:Lcom/parse/PointerOrLocalIdEncodingStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/parse/PointerOrLocalIdEncodingStrategy;

    invoke-direct {v0}, Lcom/parse/PointerOrLocalIdEncodingStrategy;-><init>()V

    sput-object v0, Lcom/parse/PointerOrLocalIdEncodingStrategy;->instance:Lcom/parse/PointerOrLocalIdEncodingStrategy;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/parse/PointerOrLocalIdEncodingStrategy;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/parse/PointerOrLocalIdEncodingStrategy;->instance:Lcom/parse/PointerOrLocalIdEncodingStrategy;

    return-object v0
.end method


# virtual methods
.method public encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 24
    const-string v2, "__type"

    const-string v3, "Pointer"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v2, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v2, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    :goto_0
    return-object v1

    .line 28
    :cond_0
    const-string v2, "__type"

    const-string v3, "Pointer"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v2, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v2, "localId"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
