.class Lcom/parse/OfflineStore$OfflineEncodingStrategy;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lcom/parse/ParseObjectEncodingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/OfflineStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OfflineEncodingStrategy"
.end annotation


# instance fields
.field private db:Lcom/parse/ParseSQLiteDatabase;

.field private tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tasksLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/parse/OfflineStore;


# direct methods
.method public constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 1
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->this$0:Lcom/parse/OfflineStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasksLock:Ljava/lang/Object;

    .line 130
    iput-object p2, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->db:Lcom/parse/ParseSQLiteDatabase;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasksLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore$OfflineEncodingStrategy;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public encodeRelatedObject(Lcom/parse/ParseObject;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 161
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 162
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 163
    .local v1, "result":Lorg/json/JSONObject;
    const-string v3, "__type"

    const-string v4, "Pointer"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-string v3, "objectId"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v3, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v2, v1

    .line 180
    .end local v1    # "result":Lorg/json/JSONObject;
    .local v2, "result":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 169
    .end local v2    # "result":Ljava/lang/Object;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .restart local v1    # "result":Lorg/json/JSONObject;
    const-string v3, "__type"

    const-string v4, "OfflineObject"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    iget-object v4, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasksLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    iget-object v3, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->this$0:Lcom/parse/OfflineStore;

    iget-object v6, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    invoke-static {v5, p1, v6}, Lcom/parse/OfflineStore;->access$200(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v5

    new-instance v6, Lcom/parse/OfflineStore$OfflineEncodingStrategy$2;

    invoke-direct {v6, p0, v1}, Lcom/parse/OfflineStore$OfflineEncodingStrategy$2;-><init>(Lcom/parse/OfflineStore$OfflineEncodingStrategy;Lorg/json/JSONObject;)V

    invoke-virtual {v5, v6}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v4

    move-object v2, v1

    .line 180
    .restart local v2    # "result":Ljava/lang/Object;
    goto :goto_0

    .line 179
    .end local v2    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    .end local v1    # "result":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public whenFinished()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/parse/OfflineStore$OfflineEncodingStrategy;->tasks:Ljava/util/ArrayList;

    invoke-static {v0}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$OfflineEncodingStrategy$1;-><init>(Lcom/parse/OfflineStore$OfflineEncodingStrategy;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
