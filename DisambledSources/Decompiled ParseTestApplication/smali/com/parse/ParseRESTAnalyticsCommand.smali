.class Lcom/parse/ParseRESTAnalyticsCommand;
.super Lcom/parse/ParseRESTCommand;
.source "ParseRESTAnalyticsCommand.java"


# static fields
.field private static final EVENT_APP_OPENED:Ljava/lang/String; = "AppOpened"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
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
    .line 21
    .local p3, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static trackAppOpenedCommand(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;
    .locals 2
    .param p0, "pushHash"    # Ljava/lang/String;
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 28
    const-string v1, "push_hash"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :cond_0
    const-string v1, "AppOpened"

    invoke-static {v1, v0, p1}, Lcom/parse/ParseRESTAnalyticsCommand;->trackEventCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v1

    return-object v1
.end method

.method static trackEventCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;
    .locals 6
    .param p0, "eventName"    # Ljava/lang/String;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTAnalyticsCommand;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v2, "events/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "httpPath":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 47
    .local v0, "commandParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 48
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 50
    :cond_0
    const-string v2, "at"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lcom/parse/Parse;->encodeDate(Ljava/util/Date;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v2, Lcom/parse/ParseRESTAnalyticsCommand;

    sget-object v3, Lcom/parse/ParseRequest$Method;->POST:Lcom/parse/ParseRequest$Method;

    invoke-direct {v2, v1, v3, v0, p2}, Lcom/parse/ParseRESTAnalyticsCommand;-><init>(Ljava/lang/String;Lcom/parse/ParseRequest$Method;Ljava/util/Map;Ljava/lang/String;)V

    return-object v2
.end method

.method public static trackEventCommand(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;
    .locals 2
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "dimensions"    # Lorg/json/JSONObject;
    .param p2, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p1, :cond_0

    .line 37
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    .restart local v0    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "dimensions"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    :cond_0
    invoke-static {p0, v0, p2}, Lcom/parse/ParseRESTAnalyticsCommand;->trackEventCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTAnalyticsCommand;

    move-result-object v1

    return-object v1
.end method
