.class Lcom/parse/twitter/Twitter$1$1$1;
.super Landroid/os/AsyncTask;
.source "Twitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/twitter/Twitter$1$1;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/parse/signpost/http/HttpParameters;",
        ">;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field final synthetic this$2:Lcom/parse/twitter/Twitter$1$1;

.field final synthetic val$verifier:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/twitter/Twitter$1$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iput-object p2, p0, Lcom/parse/twitter/Twitter$1$1$1;->val$verifier:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/parse/signpost/http/HttpParameters;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->val$provider:Lcom/parse/signpost/OAuthProvider;

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    iget-object v3, p0, Lcom/parse/twitter/Twitter$1$1$1;->val$verifier:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/parse/signpost/OAuthProvider;->retrieveAccessToken(Lcom/parse/signpost/OAuthConsumer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->val$provider:Lcom/parse/signpost/OAuthProvider;

    invoke-interface {v1}, Lcom/parse/signpost/OAuthProvider;->getResponseParameters()Lcom/parse/signpost/http/HttpParameters;

    move-result-object v1

    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Throwable;
    iput-object v0, p0, Lcom/parse/twitter/Twitter$1$1$1;->error:Ljava/lang/Throwable;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/parse/twitter/Twitter$1$1$1;->doInBackground([Ljava/lang/Void;)Lcom/parse/signpost/http/HttpParameters;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/parse/signpost/http/HttpParameters;)V
    .locals 3
    .param p1, "result"    # Lcom/parse/signpost/http/HttpParameters;

    .prologue
    .line 178
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->error:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1$1$1;->error:Ljava/lang/Throwable;

    invoke-interface {v1, v2}, Lcom/parse/internal/AsyncCallback;->onFailure(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 197
    :goto_0
    return-void

    .line 185
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->this$0:Lcom/parse/twitter/Twitter;

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    invoke-interface {v2}, Lcom/parse/signpost/OAuthConsumer;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setAuthToken(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->this$0:Lcom/parse/twitter/Twitter;

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1;->val$consumer:Lcom/parse/signpost/OAuthConsumer;

    invoke-interface {v2}, Lcom/parse/signpost/OAuthConsumer;->getTokenSecret()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setAuthTokenSecret(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->this$0:Lcom/parse/twitter/Twitter;

    const-string v2, "screen_name"

    invoke-virtual {p1, v2}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setScreenName(Ljava/lang/String;)V

    .line 188
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->this$0:Lcom/parse/twitter/Twitter;

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Lcom/parse/signpost/http/HttpParameters;->getFirst(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/parse/twitter/Twitter;->setUserId(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1;->this$0:Lcom/parse/twitter/Twitter;

    invoke-interface {v1, v2}, Lcom/parse/internal/AsyncCallback;->onSuccess(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_3
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->val$callback:Lcom/parse/internal/AsyncCallback;

    invoke-interface {v1, v0}, Lcom/parse/internal/AsyncCallback;->onFailure(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    iget-object v1, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v1, v1, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v2, v2, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 157
    check-cast p1, Lcom/parse/signpost/http/HttpParameters;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/parse/twitter/Twitter$1$1$1;->onPostExecute(Lcom/parse/signpost/http/HttpParameters;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 173
    iget-object v0, p0, Lcom/parse/twitter/Twitter$1$1$1;->this$2:Lcom/parse/twitter/Twitter$1$1;

    iget-object v0, v0, Lcom/parse/twitter/Twitter$1$1;->this$1:Lcom/parse/twitter/Twitter$1;

    iget-object v0, v0, Lcom/parse/twitter/Twitter$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 174
    return-void
.end method
