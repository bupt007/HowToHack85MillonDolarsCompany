.class Lcom/parse/EventuallyPin;
.super Lcom/parse/ParseObject;
.source "EventuallyPin.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_EventuallyPin"
.end annotation


# static fields
.field public static final PIN_NAME:Ljava/lang/String; = "_eventuallyPin"

.field public static final TYPE_COMMAND:I = 0x3

.field public static final TYPE_DELETE:I = 0x2

.field public static final TYPE_SAVE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "_EventuallyPin"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static findAllPinned()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/EventuallyPin;->findAllPinned(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static findAllPinned(Ljava/util/Collection;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 161
    .local p0, "excludeUUIDs":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Lcom/parse/ParseQuery;

    const-class v2, Lcom/parse/EventuallyPin;

    invoke-direct {v1, v2}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/Class;)V

    const-string v2, "_eventuallyPin"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 166
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<Lcom/parse/EventuallyPin;>;"
    if-eqz p0, :cond_0

    .line 167
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseQuery;->whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 172
    :cond_0
    invoke-virtual {v0}, Lcom/parse/ParseQuery;->findInBackground()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/EventuallyPin$2;

    invoke-direct {v2}, Lcom/parse/EventuallyPin$2;-><init>()V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method private static pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;
    .locals 3
    .param p0, "type"    # I
    .param p1, "obj"    # Lcom/parse/ParseObject;
    .param p2, "operationSetUUID"    # Ljava/lang/String;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .param p4, "command"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/parse/EventuallyPin;

    invoke-direct {v0}, Lcom/parse/EventuallyPin;-><init>()V

    .line 133
    .local v0, "pin":Lcom/parse/EventuallyPin;
    const-string v1, "uuid"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    const-string v1, "time"

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    const-string v1, "type"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    if-eqz p1, :cond_0

    .line 137
    const-string v1, "object"

    invoke-virtual {v0, v1, p1}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    .line 140
    const-string v1, "operationSetUUID"

    invoke-virtual {v0, v1, p2}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    :cond_1
    if-eqz p3, :cond_2

    .line 143
    const-string v1, "sessionToken"

    invoke-virtual {v0, v1, p3}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :cond_2
    if-eqz p4, :cond_3

    .line 146
    const-string v1, "command"

    invoke-virtual {v0, v1, p4}, Lcom/parse/EventuallyPin;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    :cond_3
    const-string v1, "_eventuallyPin"

    invoke-virtual {v0, v1}, Lcom/parse/EventuallyPin;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/EventuallyPin$1;

    invoke-direct {v2, v0}, Lcom/parse/EventuallyPin$1;-><init>(Lcom/parse/EventuallyPin;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static pinEventuallyCommand(Lcom/parse/ParseObject;Lcom/parse/ParseNetworkCommand;)Lbolts/Task;
    .locals 7
    .param p0, "object"    # Lcom/parse/ParseObject;
    .param p1, "command"    # Lcom/parse/ParseNetworkCommand;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseNetworkCommand;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/EventuallyPin;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    const/4 v4, 0x3

    .line 77
    .local v4, "type":I
    const/4 v0, 0x0

    .line 78
    .local v0, "json":Lorg/json/JSONObject;
    instance-of v5, p1, Lcom/parse/ParseRESTCommand;

    if-eqz v5, :cond_4

    move-object v3, p1

    .line 79
    check-cast v3, Lcom/parse/ParseRESTCommand;

    .line 80
    .local v3, "restCommand":Lcom/parse/ParseRESTCommand;
    iget-object v5, v3, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    const-string v6, "classes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    iget-object v5, v3, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    sget-object v6, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    if-eq v5, v6, :cond_0

    iget-object v5, v3, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    sget-object v6, Lcom/parse/ParseRequest$Method;->PUT:Lcom/parse/ParseRequest$Method;

    if-ne v5, v6, :cond_2

    .line 83
    :cond_0
    const/4 v4, 0x1

    .line 106
    .end local v3    # "restCommand":Lcom/parse/ParseRESTCommand;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/parse/ParseNetworkCommand;->getOperationSetUUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/parse/ParseNetworkCommand;->getSessionToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, p0, v5, v6, v0}, Lcom/parse/EventuallyPin;->pinEventuallyCommand(ILcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lbolts/Task;

    move-result-object v5

    return-object v5

    .line 84
    .restart local v3    # "restCommand":Lcom/parse/ParseRESTCommand;
    :cond_2
    iget-object v5, v3, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/ParseRequest$Method;

    sget-object v6, Lcom/parse/ParseRequest$Method;->DELETE:Lcom/parse/ParseRequest$Method;

    if-ne v5, v6, :cond_1

    .line 85
    const/4 v4, 0x2

    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v3}, Lcom/parse/ParseRESTCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 90
    .end local v3    # "restCommand":Lcom/parse/ParseRESTCommand;
    :cond_4
    instance-of v5, p1, Lcom/parse/ParseCommand;

    if-eqz v5, :cond_1

    move-object v1, p1

    .line 91
    check-cast v1, Lcom/parse/ParseCommand;

    .line 92
    .local v1, "oldCommand":Lcom/parse/ParseCommand;
    invoke-virtual {v1}, Lcom/parse/ParseCommand;->getOp()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "op":Ljava/lang/String;
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_5
    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 102
    invoke-virtual {p1}, Lcom/parse/ParseNetworkCommand;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 93
    :sswitch_0
    const-string v6, "create"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    :sswitch_1
    const-string v6, "update"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "delete"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v5, 0x2

    goto :goto_1

    .line 96
    :pswitch_0
    const/4 v4, 0x1

    .line 97
    goto :goto_0

    .line 99
    :pswitch_1
    const/4 v4, 0x2

    .line 100
    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        -0x509a5f04 -> :sswitch_0
        -0x4f997a55 -> :sswitch_2
        -0x31ffc737 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCommand()Lcom/parse/ParseNetworkCommand;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v2, "command"

    invoke-virtual {p0, v2}, Lcom/parse/EventuallyPin;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 64
    .local v1, "json":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->isValidCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->fromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    .line 71
    .local v0, "command":Lcom/parse/ParseNetworkCommand;
    :goto_0
    return-object v0

    .line 66
    .end local v0    # "command":Lcom/parse/ParseNetworkCommand;
    :cond_0
    invoke-static {v1}, Lcom/parse/ParseCommand;->isValidCommandJSONObject(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    new-instance v0, Lcom/parse/ParseCommand;

    invoke-direct {v0, v1}, Lcom/parse/ParseCommand;-><init>(Lorg/json/JSONObject;)V

    .restart local v0    # "command":Lcom/parse/ParseNetworkCommand;
    goto :goto_0

    .line 69
    .end local v0    # "command":Lcom/parse/ParseNetworkCommand;
    :cond_1
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Failed to load command from JSON."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getObject()Lcom/parse/ParseObject;
    .locals 1

    .prologue
    .line 50
    const-string v0, "object"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public getOperationSetUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "operationSetUUID"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 46
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "uuid"

    invoke-virtual {p0, v0}, Lcom/parse/EventuallyPin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
