.class Lcom/parse/ParseDecoder;
.super Ljava/lang/Object;
.source "ParseDecoder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 3
    .param p1, "array"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 23
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 25
    :cond_0
    return-object v1
.end method

.method convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .local v2, "outputMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 31
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 33
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 34
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v3}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 36
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    return-object v2
.end method

.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 48
    move-object/from16 v0, p1

    instance-of v15, v0, Lorg/json/JSONArray;

    if-eqz v15, :cond_1

    .line 49
    check-cast p1, Lorg/json/JSONArray;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p1}, Lcom/parse/ParseDecoder;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    .line 118
    :cond_0
    :goto_0
    return-object p1

    .line 52
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    move-object/from16 v0, p1

    instance-of v15, v0, Lorg/json/JSONObject;

    if-eqz v15, :cond_0

    move-object/from16 v6, p1

    .line 56
    check-cast v6, Lorg/json/JSONObject;

    .line 58
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v15, "__op"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 59
    .local v12, "opString":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 61
    :try_start_0
    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lcom/parse/ParseFieldOperations;->decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseFieldOperation;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 62
    :catch_0
    move-exception v4

    .line 63
    .local v4, "e":Lorg/json/JSONException;
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 67
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_2
    const-string v15, "__type"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 68
    .local v14, "typeString":Ljava/lang/String;
    if-nez v14, :cond_3

    .line 69
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/parse/ParseDecoder;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_3
    const-string v15, "Date"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 73
    const-string v15, "iso"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "iso":Ljava/lang/String;
    invoke-static {v5}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    goto :goto_0

    .line 77
    .end local v5    # "iso":Ljava/lang/String;
    :cond_4
    const-string v15, "Bytes"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 78
    const-string v15, "base64"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "base64":Ljava/lang/String;
    invoke-static {v2}, Lcom/parse/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 82
    .end local v2    # "base64":Ljava/lang/String;
    :cond_5
    const-string v15, "Pointer"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 83
    const-string v15, "className"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "objectId"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/parse/ParseDecoder;->decodePointer(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_6
    const-string v15, "File"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 88
    new-instance p1, Lcom/parse/ParseFile;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v6, v1}, Lcom/parse/ParseFile;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    goto/16 :goto_0

    .line 91
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_7
    const-string v15, "GeoPoint"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 94
    :try_start_1
    const-string v15, "latitude"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 95
    .local v8, "latitude":D
    const-string v15, "longitude"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    .line 99
    .local v10, "longitude":D
    new-instance p1, Lcom/parse/ParseGeoPoint;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/parse/ParseGeoPoint;-><init>(DD)V

    goto/16 :goto_0

    .line 96
    .end local v8    # "latitude":D
    .end local v10    # "longitude":D
    .restart local p1    # "object":Ljava/lang/Object;
    :catch_1
    move-exception v4

    .line 97
    .restart local v4    # "e":Lorg/json/JSONException;
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 102
    .end local v4    # "e":Lorg/json/JSONException;
    :cond_8
    const-string v15, "Object"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 103
    const-string v15, "className"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "className":Ljava/lang/String;
    const-string v15, "objectId"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "objectId":Ljava/lang/String;
    invoke-static {v3, v7}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v13

    .line 106
    .local v13, "output":Lcom/parse/ParseObject;
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v13, v6, v0, v15}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    move-object/from16 p1, v13

    .line 107
    goto/16 :goto_0

    .line 110
    .end local v3    # "className":Ljava/lang/String;
    .end local v7    # "objectId":Ljava/lang/String;
    .end local v13    # "output":Lcom/parse/ParseObject;
    :cond_9
    const-string v15, "Relation"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 111
    new-instance p1, Lcom/parse/ParseRelation;

    .end local p1    # "object":Ljava/lang/Object;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-direct {v0, v6, v1}, Lcom/parse/ParseRelation;-><init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V

    goto/16 :goto_0

    .line 114
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_a
    const-string v15, "OfflineObject"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 115
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v16, "An unexpected offline pointer was encountered."

    invoke-direct/range {v15 .. v16}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 118
    :cond_b
    const/16 p1, 0x0

    goto/16 :goto_0
.end method

.method protected decodePointer(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-static {p1, p2}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method
