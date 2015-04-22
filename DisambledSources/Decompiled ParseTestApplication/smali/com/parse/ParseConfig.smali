.class public Lcom/parse/ParseConfig;
.super Ljava/lang/Object;
.source "ParseConfig.java"


# static fields
.field static final CURRENT_CONFIG_FILENAME:Ljava/lang/String; = "currentConfig"

.field private static currentConfig:Lcom/parse/ParseConfig;

.field private static final currentConfigMutex:Ljava/lang/Object;

.field private static final taskQueue:Lcom/parse/TaskQueue;


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    sput-object v0, Lcom/parse/ParseConfig;->taskQueue:Lcom/parse/TaskQueue;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    .line 155
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-virtual {p2, p1}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 146
    .local v0, "decodedObject":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "params"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 147
    .local v1, "decodedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v1, :cond_0

    .line 148
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Object did not contain the \'params\' key."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    .line 151
    return-void
.end method

.method static synthetic access$000(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lbolts/Task;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/parse/ParseConfig;->getAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseConfig;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseConfig;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseConfig;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Lcom/parse/ParseConfig;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parse/ParseConfig;)Lcom/parse/ParseConfig;
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseConfig;

    .prologue
    .line 22
    sput-object p0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    return-object p0
.end method

.method static clearCurrentConfigForTesting()V
    .locals 2

    .prologue
    .line 117
    sget-object v1, Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 118
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    .line 119
    monitor-exit v1

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static get()Lcom/parse/ParseConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-static {}, Lcom/parse/ParseConfig;->getInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseConfig;

    return-object v0
.end method

.method private static getAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseConfig$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseConfig$3;-><init>(Lbolts/Task;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseConfig$2;

    invoke-direct {v1}, Lcom/parse/ParseConfig$2;-><init>()V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentConfig()Lcom/parse/ParseConfig;
    .locals 4

    .prologue
    .line 40
    sget-object v1, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    if-nez v1, :cond_0

    .line 41
    sget-object v2, Lcom/parse/ParseConfig;->currentConfigMutex:Ljava/lang/Object;

    monitor-enter v2

    .line 42
    :try_start_0
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v3, "currentConfig"

    invoke-static {v1, v3}, Lcom/parse/ParseConfig;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseConfig;

    move-result-object v0

    .line 43
    .local v0, "config":Lcom/parse/ParseConfig;
    if-eqz v0, :cond_1

    .end local v0    # "config":Lcom/parse/ParseConfig;
    :goto_0
    sput-object v0, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    .line 44
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :cond_0
    sget-object v1, Lcom/parse/ParseConfig;->currentConfig:Lcom/parse/ParseConfig;

    return-object v1

    .line 43
    .restart local v0    # "config":Lcom/parse/ParseConfig;
    :cond_1
    :try_start_1
    new-instance v0, Lcom/parse/ParseConfig;

    .end local v0    # "config":Lcom/parse/ParseConfig;
    invoke-direct {v0}, Lcom/parse/ParseConfig;-><init>()V

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseConfig;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-static {p0, p1}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 134
    .local v1, "object":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 140
    :goto_0
    return-object v2

    .line 138
    :cond_0
    :try_start_0
    new-instance v3, Lcom/parse/ParseConfig;

    new-instance v4, Lcom/parse/ParseDecoder;

    invoke-direct {v4}, Lcom/parse/ParseDecoder;-><init>()V

    invoke-direct {v3, v1, v4}, Lcom/parse/ParseConfig;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Lorg/json/JSONException;
    goto :goto_0
.end method

.method public static getInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    sget-object v0, Lcom/parse/ParseConfig;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseConfig$1;

    invoke-direct {v1}, Lcom/parse/ParseConfig$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getInBackground(Lcom/parse/ConfigCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/ConfigCallback;

    .prologue
    .line 68
    invoke-static {}, Lcom/parse/ParseConfig;->getInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 69
    return-void
.end method

.method private saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 587
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 589
    .local v2, "object":Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 590
    .local v1, "jsonParams":Lorg/json/JSONObject;
    const-string v3, "params"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    invoke-static {p1, p2, v2}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 595
    return-void

    .line 591
    .end local v1    # "jsonParams":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "could not serialize config to JSON"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    return-object p2

    .line 183
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 184
    .local v0, "value":Ljava/lang/Object;
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_1

    .line 185
    const/4 p2, 0x0

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 211
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .line 214
    .restart local p2    # "defaultValue":Z
    :cond_1
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 215
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/util/Date;

    .prologue
    .line 239
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    .end local p2    # "defaultValue":Ljava/util/Date;
    :goto_0
    return-object p2

    .line 242
    .restart local p2    # "defaultValue":Ljava/util/Date;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 244
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 246
    :cond_2
    instance-of v1, v0, Ljava/util/Date;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/Date;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 257
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseConfig;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 271
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    .end local p2    # "defaultValue":D
    :cond_0
    return-wide p2
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 296
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p2

    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getJSONArray(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONArray;

    .prologue
    .line 320
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 321
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, "encoded":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_1

    :cond_0
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "encoded":Ljava/lang/Object;
    move-object p2, v0

    .end local p2    # "defaultValue":Lorg/json/JSONArray;
    :cond_1
    return-object p2

    .line 321
    .restart local p2    # "defaultValue":Lorg/json/JSONArray;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getJSONObject(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lorg/json/JSONObject;

    .prologue
    .line 347
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 348
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 349
    .local v0, "encoded":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    instance-of v2, v0, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "encoded":Ljava/lang/Object;
    move-object p2, v0

    .end local p2    # "defaultValue":Lorg/json/JSONObject;
    :cond_1
    return-object p2

    .line 348
    .restart local p2    # "defaultValue":Lorg/json/JSONObject;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 361
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getList(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 375
    .local p2, "defaultValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    .end local p2    # "defaultValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    return-object p2

    .line 378
    .restart local p2    # "defaultValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 380
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 381
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 384
    :cond_2
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/util/List;

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    .local v0, "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_1
    move-object p2, v0

    .line 385
    goto :goto_0

    .end local v0    # "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    .line 384
    goto :goto_1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 396
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/parse/ParseConfig;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 409
    invoke-virtual {p0, p1}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 410
    .local v0, "number":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    .end local p2    # "defaultValue":J
    :cond_0
    return-wide p2
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getMap(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 436
    .local p2, "defaultValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    iget-object v2, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    .end local p2    # "defaultValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    :goto_0
    return-object p2

    .line 439
    .restart local p2    # "defaultValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 441
    .local v1, "value":Ljava/lang/Object;
    if-eqz v1, :cond_1

    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    .line 442
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 445
    :cond_2
    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/util/Map;

    .end local v1    # "value":Ljava/lang/Object;
    move-object v0, v1

    .local v0, "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    :goto_1
    move-object p2, v0

    .line 446
    goto :goto_0

    .end local v0    # "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    .line 445
    goto :goto_1
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public getNumber(Ljava/lang/String;Ljava/lang/Number;)Ljava/lang/Number;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Number;

    .prologue
    .line 470
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    .end local p2    # "defaultValue":Ljava/lang/Number;
    :goto_0
    return-object p2

    .line 473
    .restart local p2    # "defaultValue":Ljava/lang/Number;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 474
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 475
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 477
    :cond_2
    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 490
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getParseFile(Ljava/lang/String;Lcom/parse/ParseFile;)Lcom/parse/ParseFile;

    move-result-object v0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;Lcom/parse/ParseFile;)Lcom/parse/ParseFile;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/parse/ParseFile;

    .prologue
    .line 506
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 513
    .end local p2    # "defaultValue":Lcom/parse/ParseFile;
    :goto_0
    return-object p2

    .line 509
    .restart local p2    # "defaultValue":Lcom/parse/ParseFile;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 510
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 511
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 513
    :cond_2
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/parse/ParseFile;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getParseGeoPoint(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseGeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public getParseGeoPoint(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseGeoPoint;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Lcom/parse/ParseGeoPoint;

    .prologue
    .line 537
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 544
    .end local p2    # "defaultValue":Lcom/parse/ParseGeoPoint;
    :goto_0
    return-object p2

    .line 540
    .restart local p2    # "defaultValue":Lcom/parse/ParseGeoPoint;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 541
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 542
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 544
    :cond_2
    instance-of v1, v0, Lcom/parse/ParseGeoPoint;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/parse/ParseGeoPoint;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseConfig;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 568
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 571
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 572
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_1

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne v0, v1, :cond_2

    .line 573
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 575
    :cond_2
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_1
    move-object p2, v0

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_3
    move-object v0, p2

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ParseConfig["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseConfig;->params:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
