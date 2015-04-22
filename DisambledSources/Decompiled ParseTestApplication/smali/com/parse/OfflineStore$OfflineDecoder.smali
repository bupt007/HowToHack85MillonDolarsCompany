.class Lcom/parse/OfflineStore$OfflineDecoder;
.super Lcom/parse/ParseDecoder;
.source "OfflineStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/OfflineStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OfflineDecoder"
.end annotation


# instance fields
.field private offlineObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/parse/OfflineStore;


# direct methods
.method private constructor <init>(Lcom/parse/OfflineStore;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, "offlineObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lbolts/Task<Lcom/parse/ParseObject;>;>;"
    iput-object p1, p0, Lcom/parse/OfflineStore$OfflineDecoder;->this$0:Lcom/parse/OfflineStore;

    invoke-direct {p0}, Lcom/parse/ParseDecoder;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/parse/OfflineStore$OfflineDecoder;->offlineObjects:Ljava/util/Map;

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/OfflineStore;Ljava/util/Map;Lcom/parse/OfflineStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/OfflineStore;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lcom/parse/OfflineStore$1;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore$OfflineDecoder;-><init>(Lcom/parse/OfflineStore;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 99
    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "__type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OfflineObject"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "object":Ljava/lang/Object;
    const-string v1, "uuid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/parse/OfflineStore$OfflineDecoder;->offlineObjects:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;

    invoke-virtual {v1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    .line 109
    .end local v0    # "uuid":Ljava/lang/String;
    :goto_0
    return-object v1

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
