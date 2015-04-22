.class Lcom/parse/ParseRESTCommand;
.super Lcom/parse/ParseNetworkCommand;
.source "ParseRESTCommand.java"


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
.field private static final HEADER_APPLICATION_ID:Ljava/lang/String; = "X-Parse-Application-Id"

.field private static final HEADER_APP_BUILD_VERSION:Ljava/lang/String; = "X-Parse-App-Build-Version"

.field private static final HEADER_APP_DISPLAY_VERSION:Ljava/lang/String; = "X-Parse-App-Display-Version"

.field private static final HEADER_CLIENT_KEY:Ljava/lang/String; = "X-Parse-Client-Key"

.field private static final HEADER_CLIENT_VERSION:Ljava/lang/String; = "X-Parse-Client-Version"

.field private static final HEADER_INSTALLATION_ID:Ljava/lang/String; = "X-Parse-Installation-Id"

.field private static final HEADER_MASTER_KEY:Ljava/lang/String; = "X-Parse-Master-Key"

.field private static final HEADER_OS_VERSION:Ljava/lang/String; = "X-Parse-OS-Version"

.field private static final HEADER_SESSION_TOKEN:Ljava/lang/String; = "X-Parse-Session-Token"

.field private static final PARAMETER_METHOD_OVERRIDE:Ljava/lang/String; = "_method"


# instance fields
.field protected httpPath:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field protected final jsonParameters:Lorg/json/JSONObject;

.field private localId:Ljava/lang/String;

.field public masterKey:Ljava/lang/String;

.field private operationSetUUID:Ljava/lang/String;

.field protected final sessionToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/ParseRequest$Method;
    .param p4, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseRequest$Method;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-static {p1}, Lcom/parse/ParseRESTCommand;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/parse/ParseNetworkCommand;-><init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V

    .line 58
    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    .line 59
    if-eqz p3, :cond_0

    .line 60
    invoke-static {}, Lcom/parse/NoObjectsEncodingStrategy;->get()Lcom/parse/NoObjectsEncodingStrategy;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    .line 64
    :goto_0
    iput-object p4, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    .line 65
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/ParseRequest$Method;
    .param p3, "jsonParameters"    # Lorg/json/JSONObject;
    .param p4, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 69
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpPath"    # Ljava/lang/String;
    .param p2, "httpMethod"    # Lcom/parse/ParseRequest$Method;
    .param p3, "jsonParameters"    # Lorg/json/JSONObject;
    .param p4, "localId"    # Ljava/lang/String;
    .param p5, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Lcom/parse/ParseRESTCommand;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/parse/ParseNetworkCommand;-><init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    .line 78
    iput-object p4, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    .line 79
    iput-object p5, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/parse/ParseRESTCommand;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseRESTCommand;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->installationId:Ljava/lang/String;

    return-object p1
.end method

.method private static addDefaultHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 2
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 103
    const-string v0, "X-Parse-Application-Id"

    sget-object v1, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "X-Parse-Client-Key"

    sget-object v1, Lcom/parse/Parse;->clientKey:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "X-Parse-Client-Version"

    const-string v1, "a1.9.1"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v0, "X-Parse-App-Build-Version"

    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v0, "X-Parse-App-Display-Version"

    invoke-static {}, Lcom/parse/ManifestInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "X-Parse-OS-Version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method private static addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 8
    .param p0, "stringer"    # Lorg/json/JSONStringer;
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 248
    instance-of v7, p1, Lorg/json/JSONObject;

    if-eqz v7, :cond_2

    .line 249
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-object v6, p1

    .line 250
    check-cast v6, Lorg/json/JSONObject;

    .line 251
    .local v6, "object":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 252
    .local v4, "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v5, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 254
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 258
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

    .line 259
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 260
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseRESTCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_1

    .line 263
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 278
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "keyIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "object":Lorg/json/JSONObject;
    :goto_2
    return-void

    .line 267
    :cond_2
    instance-of v7, p1, Lorg/json/JSONArray;

    if-eqz v7, :cond_4

    move-object v0, p1

    .line 268
    check-cast v0, Lorg/json/JSONArray;

    .line 269
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_3

    .line 271
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/parse/ParseRESTCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 273
    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    goto :goto_2

    .line 277
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_2
.end method

.method private static createUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "httpPath"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string v0, "%s/1/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;
    .locals 7
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v6, 0x0

    .line 83
    const-string v0, "httpPath"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "httpPath":Ljava/lang/String;
    const-string v0, "httpMethod"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseRequest$Method;->fromString(Ljava/lang/String;)Lcom/parse/ParseRequest$Method;

    move-result-object v2

    .line 85
    .local v2, "httpMethod":Lcom/parse/ParseRequest$Method;
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "sessionToken":Ljava/lang/String;
    const-string v0, "localId"

    invoke-virtual {p0, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "localId":Ljava/lang/String;
    const-string v0, "parameters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 89
    .local v3, "jsonParameters":Lorg/json/JSONObject;
    new-instance v0, Lcom/parse/ParseRESTCommand;

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static isValidCommandJSONObject(Lorg/json/JSONObject;)Z
    .locals 1
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 281
    const-string v0, "httpPath"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private maybeChangeServerOperation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 336
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "objectId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 338
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    .line 340
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseRESTCommand;->url:Ljava/lang/String;

    .line 342
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    const-string v2, "classes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    sget-object v2, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    if-ne v1, v2, :cond_0

    .line 343
    sget-object v1, Lcom/parse/ParseRequest$Method;->PUT:Lcom/parse/ParseRequest$Method;

    iput-object v1, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    .line 347
    .end local v0    # "objectId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 240
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    .line 241
    .local v0, "stringer":Lorg/json/JSONStringer;
    invoke-static {v0, p0}, Lcom/parse/ParseRESTCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    .line 242
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method enableRetrying()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/ParseRESTCommand;->maxRetries:I

    .line 94
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 214
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/parse/ParseRESTCommand;->toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 225
    .local v1, "json":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    :cond_0
    const-string v2, "ParseRESTCommand.%s.%s.%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    invoke-virtual {v5}, Lcom/parse/ParseRequest$Method;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-static {v5}, Lcom/parse/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v1}, Lcom/parse/codec/digest/DigestUtils;->md5Hex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 217
    .end local v1    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    const-string v1, ""

    .restart local v1    # "json":Ljava/lang/String;
    goto :goto_0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationSetUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->operationSetUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method protected newEntity(Lcom/parse/ProgressCallback;)Lorg/apache/http/HttpEntity;
    .locals 8
    .param p1, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;

    .prologue
    .line 137
    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-nez v4, :cond_0

    .line 138
    const-string v4, "Trying to execute a %s command without body parameters."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    invoke-virtual {v7}, Lcom/parse/ParseRequest$Method;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "message":Ljava/lang/String;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 144
    .end local v2    # "message":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    .line 145
    .local v3, "parameters":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    sget-object v5, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    sget-object v5, Lcom/parse/ParseRequest$Method;->DELETE:Lcom/parse/ParseRequest$Method;

    if-ne v4, v5, :cond_2

    .line 150
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    .end local v3    # "parameters":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    .restart local v3    # "parameters":Lorg/json/JSONObject;
    const-string v4, "_method"

    iget-object v5, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    invoke-virtual {v5}, Lcom/parse/ParseRequest$Method;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_2
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF8"

    invoke-direct {v1, v4, v5}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    const-string v4, "application/json"

    invoke-virtual {v1, v4}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    return-object v1

    .line 156
    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    .end local v3    # "parameters":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected newRequest(Lcom/parse/ParseRequest$Method;Lcom/parse/ProgressCallback;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 3
    .param p1, "method"    # Lcom/parse/ParseRequest$Method;
    .param p2, "uploadProgressCallback"    # Lcom/parse/ProgressCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 115
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/parse/ParseRequest$Method;->PUT:Lcom/parse/ParseRequest$Method;

    if-eq p1, v1, :cond_2

    .line 118
    sget-object v1, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    invoke-super {p0, v1, p2}, Lcom/parse/ParseNetworkCommand;->newRequest(Lcom/parse/ParseRequest$Method;Lcom/parse/ProgressCallback;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 123
    .local v0, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :goto_0
    invoke-static {v0}, Lcom/parse/ParseRESTCommand;->addDefaultHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 124
    const-string v1, "X-Parse-Installation-Id"

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->installationId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "X-Parse-Session-Token"

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->masterKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 129
    const-string v1, "X-Parse-Master-Key"

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->masterKey:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_1
    return-object v0

    .line 120
    .end local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/parse/ParseNetworkCommand;->newRequest(Lcom/parse/ParseRequest$Method;Lcom/parse/ProgressCallback;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .restart local v0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
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
    .line 163
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 164
    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand;->resolveLocalIds()V

    .line 165
    new-instance v0, Lcom/parse/ParseRESTCommand$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseRESTCommand$1;-><init>(Lcom/parse/ParseRESTCommand;)V

    sget-object v1, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method protected onResponse(Lcom/parse/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 8
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
    const/16 v7, 0x1f4

    .line 177
    const/4 v4, 0x0

    .line 178
    .local v4, "responseStream":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 180
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseHttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 181
    new-instance v1, Ljava/lang/String;

    invoke-static {v4}, Lcom/parse/ParseIOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v0    # "content":Ljava/lang/String;
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parse/ParseHttpResponse;->getStatusCode()I

    move-result v5

    .line 191
    .local v5, "statusCode":I
    const/16 v6, 0xc8

    if-lt v5, v6, :cond_2

    const/16 v6, 0x258

    if-ge v5, v6, :cond_2

    .line 194
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 196
    .local v3, "json":Lorg/json/JSONObject;
    const/16 v6, 0x190

    if-lt v5, v6, :cond_0

    if-ge v5, v7, :cond_0

    .line 197
    const-string v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "error"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/parse/ParseRESTCommand;->newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;

    move-result-object v6

    invoke-static {v6}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    move-object v0, v1

    .line 208
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v5    # "statusCode":I
    .restart local v0    # "content":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 182
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v2}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v6

    goto :goto_0

    .line 198
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v3    # "json":Lorg/json/JSONObject;
    .restart local v5    # "statusCode":I
    :cond_0
    if-lt v5, v7, :cond_1

    .line 199
    :try_start_2
    const-string v6, "code"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "error"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/parse/ParseRESTCommand;->newTemporaryException(ILjava/lang/String;)Lcom/parse/ParseException;

    move-result-object v6

    invoke-static {v6}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v0    # "content":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 203
    .end local v0    # "content":Ljava/lang/String;
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v1    # "content":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 204
    .local v2, "e":Lorg/json/JSONException;
    const-string v6, "bad json response"

    invoke-virtual {p0, v6, v2}, Lcom/parse/ParseRESTCommand;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v6

    invoke-static {v6}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0

    .line 208
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v1    # "content":Ljava/lang/String;
    :cond_2
    const/4 v6, -0x1

    invoke-virtual {p0, v6, v1}, Lcom/parse/ParseRESTCommand;->newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;

    move-result-object v6

    invoke-static {v6}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v6

    move-object v0, v1

    .end local v1    # "content":Ljava/lang/String;
    .restart local v0    # "content":Ljava/lang/String;
    goto :goto_0
.end method

.method public releaseLocalIds()V
    .locals 6

    .prologue
    .line 387
    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 388
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V

    .line 391
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v2, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v4, v2}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 393
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 394
    .local v3, "pointer":Lorg/json/JSONObject;
    const-string v4, "localId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 395
    .local v1, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "localId":Ljava/lang/String;
    .end local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v3    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 400
    :cond_1
    return-void
.end method

.method public resolveLocalIds()V
    .locals 7

    .prologue
    .line 351
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 352
    .local v2, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    iget-object v5, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v5, v2}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 353
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 354
    .local v4, "pointer":Lorg/json/JSONObject;
    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 355
    .local v1, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 356
    .local v3, "objectId":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 357
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Tried to serialize a command referencing a new, unsaved object."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 364
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "localId":Ljava/lang/String;
    .end local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v3    # "objectId":Ljava/lang/String;
    .end local v4    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 367
    :goto_1
    return-void

    .line 360
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "localId":Ljava/lang/String;
    .restart local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .restart local v3    # "objectId":Ljava/lang/String;
    .restart local v4    # "pointer":Lorg/json/JSONObject;
    :cond_0
    const-string v5, "objectId"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 361
    const-string v5, "localId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 363
    .end local v1    # "localId":Ljava/lang/String;
    .end local v3    # "objectId":Ljava/lang/String;
    .end local v4    # "pointer":Lorg/json/JSONObject;
    :cond_1
    invoke-direct {p0}, Lcom/parse/ParseRESTCommand;->maybeChangeServerOperation()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public retainLocalIds()V
    .locals 6

    .prologue
    .line 370
    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 371
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V

    .line 375
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v2, "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v4, v2}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 377
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 378
    .local v3, "pointer":Lorg/json/JSONObject;
    const-string v4, "localId"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 379
    .local v1, "localId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 381
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "localId":Ljava/lang/String;
    .end local v2    # "localPointers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    .end local v3    # "pointer":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 384
    :cond_1
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    .line 320
    return-void
.end method

.method setOperationSetUUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "operationSetUUID"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->operationSetUUID:Ljava/lang/String;

    .line 316
    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 285
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 287
    .local v1, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 288
    const-string v2, "httpPath"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    :cond_0
    const-string v2, "httpMethod"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    invoke-virtual {v3}, Lcom/parse/ParseRequest$Method;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 292
    const-string v2, "parameters"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 295
    const-string v2, "sessionToken"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 298
    const-string v2, "localId"

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_3
    return-object v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
