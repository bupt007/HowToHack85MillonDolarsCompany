.class Lcom/parse/TwitterAuthenticationProvider$1;
.super Ljava/lang/Object;
.source "TwitterAuthenticationProvider.java"

# interfaces
.implements Lcom/parse/internal/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/TwitterAuthenticationProvider;->authenticate(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/TwitterAuthenticationProvider;

.field final synthetic val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;


# direct methods
.method constructor <init>(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    iput-object p2, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    # invokes: Lcom/parse/TwitterAuthenticationProvider;->handleCancel(Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V
    invoke-static {v0, v1}, Lcom/parse/TwitterAuthenticationProvider;->access$000(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)V

    .line 48
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "error"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 52
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v0}, Lcom/parse/TwitterAuthenticationProvider;->access$100(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eq v0, v1, :cond_0

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v0, p1}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    iget-object v0, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v0, v2}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v1, v2}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 64
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v2}, Lcom/parse/TwitterAuthenticationProvider;->access$100(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    if-eq v2, v3, :cond_0

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    iget-object v3, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;
    invoke-static {v3}, Lcom/parse/TwitterAuthenticationProvider;->access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parse/twitter/Twitter;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;
    invoke-static {v4}, Lcom/parse/TwitterAuthenticationProvider;->access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/twitter/Twitter;->getScreenName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;
    invoke-static {v5}, Lcom/parse/TwitterAuthenticationProvider;->access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/twitter/Twitter;->getAuthToken()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # getter for: Lcom/parse/TwitterAuthenticationProvider;->twitter:Lcom/parse/twitter/Twitter;
    invoke-static {v6}, Lcom/parse/TwitterAuthenticationProvider;->access$200(Lcom/parse/TwitterAuthenticationProvider;)Lcom/parse/twitter/Twitter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/twitter/Twitter;->getAuthTokenSecret()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/parse/TwitterAuthenticationProvider;->getAuthData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 76
    .local v0, "authData":Lorg/json/JSONObject;
    :try_start_1
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v2, v0}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onSuccess(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v2, v7}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    .line 72
    .end local v0    # "authData":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider$1;->val$callback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    invoke-interface {v2, v1}, Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    iget-object v2, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v2, v7}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    goto :goto_0

    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/parse/TwitterAuthenticationProvider$1;->this$0:Lcom/parse/TwitterAuthenticationProvider;

    # setter for: Lcom/parse/TwitterAuthenticationProvider;->currentOperationCallback:Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;
    invoke-static {v3, v7}, Lcom/parse/TwitterAuthenticationProvider;->access$102(Lcom/parse/TwitterAuthenticationProvider;Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;)Lcom/parse/ParseAuthenticationProvider$ParseAuthenticationCallback;

    throw v2
.end method
