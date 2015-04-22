.class Lcom/parse/ParseCommand;
.super Lcom/parse/ParseNetworkCommand;
.source "ParseCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseNetworkCommand",
        "<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final APP_BUILD_VERSION:Ljava/lang/String; = "appBuildVersion"

.field private static final APP_DISPLAY_VERSION:Ljava/lang/String; = "appDisplayVersion"

.field private static final COMMAND_UUID:Ljava/lang/String; = "uuid"

.field private static final DEVICE_TYPE_AND_SDK_VERSION:Ljava/lang/String; = "v"

.field private static final INSTALLATION_ID:Ljava/lang/String; = "iid"

.field private static final OS_VERSION:Ljava/lang/String; = "osVersion"

.field private static final SESSION_TOKEN:Ljava/lang/String; = "session_token"


# instance fields
.field private installationId:Ljava/lang/String;

.field private localId:Ljava/lang/String;

.field private op:Ljava/lang/String;

.field private operationSetUUID:Ljava/lang/String;

.field params:Lorg/json/JSONObject;

.field private final sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 103
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "params"    # Lorg/json/JSONObject;
    .param p3, "localId"    # Ljava/lang/String;
    .param p4, "operationSetUUID"    # Ljava/lang/String;
    .param p5, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 122
    sget-object v0, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    invoke-static {p1}, Lcom/parse/ParseCommand;->generateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseNetworkCommand;-><init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V

    .line 124
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    .line 126
    iput-object p3, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/parse/ParseCommand;->operationSetUUID:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/parse/ParseCommand;->maxRetries:I

    .line 131
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 110
    const-string v0, "op"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "localId"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "operationSetUUID"

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "session_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "session_token"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseCommand;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/parse/ParseCommand;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/parse/ParseCommand;->installationId:Ljava/lang/String;

    return-object p1
.end method

.method static addDefaultParameters(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "params"    # Lorg/json/JSONObject;
    .param p1, "sessionToken"    # Ljava/lang/String;
    .param p2, "installationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 302
    const-string v0, "osVersion"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v0, "appBuildVersion"

    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v0, "appDisplayVersion"

    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    const-string v0, "v"

    const-string v1, "a1.9.1"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    const-string v0, "iid"

    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 322
    const-string v0, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    if-eqz p1, :cond_0

    .line 326
    const-string v0, "session_token"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 328
    :cond_0
    return-void
.end method

.method static addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 8
    .param p0, "stringer"    # Lorg/json/JSONStringer;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 261
    instance-of v7, p1, Lorg/json/JSONObject;

    if-eqz v7, :cond_2

    .line 262
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-object v6, p1

    .line 263
    check-cast v6, Lorg/json/JSONObject;

    .line 264
    .local v6, "object":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 265
    .local v4, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 267
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 269
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 271
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 272
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 273
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_1

    .line 276
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 291
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "object":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 280
    :cond_2
    instance-of v7, p1, Lorg/json/JSONArray;

    if-eqz v7, :cond_4

    move-object v0, p1

    .line 281
    check-cast v0, Lorg/json/JSONArray;

    .line 282
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 283
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 284
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 283
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 286
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    goto :goto_2

    .line 290
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_2
.end method

.method private static generateUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "%s/%s/%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isValidCommandJSONObject(Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 208
    const-string v0, "op"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 254
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-static {v0, p0}, Lcom/parse/ParseCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 255
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method enableRetrying()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/ParseCommand;->maxRetries:I

    .line 205
    return-void
.end method

.method getCacheKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/parse/ParseCommand;->toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 243
    .local v1, "json":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 247
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ParseCommand."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/parse/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 238
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    return-object v0
.end method

.method getOp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    return-object v0
.end method

.method getOperationSetUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/parse/ParseCommand;->operationSetUUID:Ljava/lang/String;

    return-object v0
.end method

.method getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public maybeChangeServerOperation()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 441
    iget-object v2, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 442
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "objectId":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 444
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    .line 446
    iget-object v2, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 447
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 448
    const-string v2, "objectId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    const-string v3, "create"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    const-string v2, "update"

    invoke-virtual {p0, v2}, Lcom/parse/ParseCommand;->setOp(Ljava/lang/String;)V

    .line 456
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "objectId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected newEntity(Lcom/parse/ProgressCallback;)Lorg/apache/http/HttpEntity;
    .locals 7
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 333
    iget-object v5, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 334
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 336
    .local v2, "fullParams":Lorg/json/JSONObject;
    :goto_0
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 337
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 338
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v3    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 343
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    iget-object v6, p0, Lcom/parse/ParseCommand;->installationId:Ljava/lang/String;

    invoke-static {v2, v5, v6}, Lcom/parse/ParseCommand;->addDefaultParameters(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 349
    :try_start_2
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF8"

    invoke-direct {v1, v5, v6}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v5, "application/json"

    invoke-virtual {v1, v5}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 351
    return-object v1

    .line 352
    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_1
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected newRequest(Lcom/parse/ParseRequest$Method;Lcom/parse/ProgressCallback;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 6
    .param p1, "method"    # Lcom/parse/ParseRequest$Method;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x6d

    .line 360
    invoke-super {p0, p1, p2}, Lcom/parse/ParseNetworkCommand;->newRequest(Lcom/parse/ParseRequest$Method;Lcom/parse/ProgressCallback;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 364
    .local v2, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :try_start_0
    new-instance v0, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;

    sget-object v3, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    sget-object v4, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/parse/signpost/commonshttp/CommonsHttpOAuthConsumer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .local v0, "consumer":Lcom/parse/signpost/OAuthConsumer;
    const/4 v3, 0x0

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Lcom/parse/signpost/OAuthConsumer;->setTokenWithSecret(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-interface {v0, v2}, Lcom/parse/signpost/OAuthConsumer;->sign(Ljava/lang/Object;)Lcom/parse/signpost/http/HttpRequest;
    :try_end_0
    .catch Lcom/parse/signpost/exception/OAuthMessageSignerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/parse/signpost/exception/OAuthExpectationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/parse/signpost/exception/OAuthCommunicationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 375
    return-object v2

    .line 367
    .end local v0    # "consumer":Lcom/parse/signpost/OAuthConsumer;
    :catch_0
    move-exception v1

    .line 368
    .local v1, "e":Lcom/parse/signpost/exception/OAuthMessageSignerException;
    new-instance v3, Lcom/parse/ParseException;

    invoke-virtual {v1}, Lcom/parse/signpost/exception/OAuthMessageSignerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 369
    .end local v1    # "e":Lcom/parse/signpost/exception/OAuthMessageSignerException;
    :catch_1
    move-exception v1

    .line 370
    .local v1, "e":Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    new-instance v3, Lcom/parse/ParseException;

    invoke-virtual {v1}, Lcom/parse/signpost/exception/OAuthExpectationFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 371
    .end local v1    # "e":Lcom/parse/signpost/exception/OAuthExpectationFailedException;
    :catch_2
    move-exception v1

    .line 372
    .local v1, "e":Lcom/parse/signpost/exception/OAuthCommunicationException;
    new-instance v3, Lcom/parse/ParseException;

    invoke-virtual {v1}, Lcom/parse/signpost/exception/OAuthCommunicationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    throw v3
.end method

.method protected onPostExecute(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lorg/json/JSONObject;>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 423
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "error"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 424
    new-instance v3, Lcom/parse/ParseException;

    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "error"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v3

    .line 430
    :goto_0
    return-object v3

    .line 426
    :cond_0
    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 430
    .local v2, "result":Ljava/lang/Object;
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    goto :goto_0

    .line 427
    .end local v2    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 428
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "corrupted json"

    invoke-virtual {p0, v3, v0}, Lcom/parse/ParseCommand;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v3

    invoke-static {v3}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v3

    goto :goto_0
.end method

.method protected onPreExecute(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 381
    invoke-virtual {p0}, Lcom/parse/ParseCommand;->resolveLocalIds()V

    .line 382
    new-instance v0, Lcom/parse/ParseCommand$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseCommand$1;-><init>(Lcom/parse/ParseCommand;)V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method protected onResponse(Lcom/parse/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 7
    .param p1, "response"    # Lcom/parse/ParseHttpResponse;
    .param p2, "downloadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    const/4 v4, 0x0

    .line 395
    .local v4, "responseStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 397
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 398
    new-instance v1, Ljava/lang/String;

    invoke-static {v4}, Lcom/parse/ParseIOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    .end local v0    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 407
    :try_start_1
    new-instance v5, Lorg/json/JSONTokener;

    invoke-direct {v5, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 408
    .local v5, "tokener":Lorg/json/JSONTokener;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    .local v3, "json":Lorg/json/JSONObject;
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v5    # "tokener":Lorg/json/JSONTokener;
    .restart local v0    # "content":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 399
    :catch_0
    move-exception v2

    .line 400
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v6

    .line 402
    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v4}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v6

    .line 409
    .end local v0    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 410
    .local v2, "e":Lorg/json/JSONException;
    const-string v6, "bad json response"

    invoke-virtual {p0, v6, v2}, Lcom/parse/ParseCommand;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v6

    invoke-static {v6}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0
.end method

.method put(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public releaseLocalIds()V
    .locals 7

    .prologue
    .line 505
    iget-object v5, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 506
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V

    .line 510
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 511
    .local v0, "data":Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v3, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0, v3}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 513
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 514
    .local v4, "pointer":Lorg/json/JSONObject;
    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 515
    .local v2, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    .end local v0    # "data":Ljava/lang/Object;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "localId":Ljava/lang/String;
    .end local v3    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v4    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 520
    :cond_1
    return-void
.end method

.method public resolveLocalIds()V
    .locals 8

    .prologue
    .line 466
    :try_start_0
    iget-object v6, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 467
    .local v0, "data":Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v3, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0, v3}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 469
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONObject;

    .line 470
    .local v5, "pointer":Lorg/json/JSONObject;
    const-string v6, "localId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 471
    .local v2, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 472
    .local v4, "objectId":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 473
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Tried to serialize a command referencing a new, unsaved object."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 481
    .end local v0    # "data":Ljava/lang/Object;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "localId":Ljava/lang/String;
    .end local v3    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v4    # "objectId":Ljava/lang/String;
    .end local v5    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 484
    :goto_1
    return-void

    .line 476
    .restart local v0    # "data":Ljava/lang/Object;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "localId":Ljava/lang/String;
    .restart local v3    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v4    # "objectId":Ljava/lang/String;
    .restart local v5    # "pointer":Lorg/json/JSONObject;
    :cond_0
    const-string v6, "objectId"

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 477
    const-string v6, "localId"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 480
    .end local v2    # "localId":Ljava/lang/String;
    .end local v4    # "objectId":Ljava/lang/String;
    .end local v5    # "pointer":Lorg/json/JSONObject;
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseCommand;->maybeChangeServerOperation()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public retainLocalIds()V
    .locals 7

    .prologue
    .line 487
    iget-object v5, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 488
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V

    .line 492
    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 493
    .local v0, "data":Ljava/lang/Object;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v3, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v0, v3}, Lcom/parse/ParseCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 495
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 496
    .local v4, "pointer":Lorg/json/JSONObject;
    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 497
    .local v2, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    .end local v0    # "data":Ljava/lang/Object;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "localId":Ljava/lang/String;
    .end local v3    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v4    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 502
    :cond_1
    return-void
.end method

.method setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "theLocalId"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    .line 201
    return-void
.end method

.method setOp(Ljava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/parse/ParseCommand;->generateUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseCommand;->setUrl(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method setOperationSetUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/parse/ParseCommand;->operationSetUUID:Ljava/lang/String;

    .line 193
    return-void
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 217
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    .local v0, "answer":Lorg/json/JSONObject;
    const-string v2, "op"

    iget-object v3, p0, Lcom/parse/ParseCommand;->op:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v2, "params"

    iget-object v3, p0, Lcom/parse/ParseCommand;->params:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    iget-object v2, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "localId"

    iget-object v3, p0, Lcom/parse/ParseCommand;->localId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseCommand;->operationSetUUID:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 224
    const-string v2, "operationSetUUID"

    iget-object v3, p0, Lcom/parse/ParseCommand;->operationSetUUID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    :cond_1
    const-string v3, "session_token"

    iget-object v2, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/parse/ParseCommand;->sessionToken:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    return-object v0

    .line 226
    :cond_2
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 228
    .end local v0    # "answer":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
