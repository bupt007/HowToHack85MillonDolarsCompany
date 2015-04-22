.class Lcom/parse/ParseUser$4;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->signUpAsync(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$anonymousData:Lorg/json/JSONObject;

.field final synthetic val$oldPassword:Ljava/lang/String;

.field final synthetic val$oldUsername:Ljava/lang/String;

.field final synthetic val$user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 761
    iput-object p1, p0, Lcom/parse/ParseUser$4;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$4;->val$user:Lcom/parse/ParseUser;

    iput-object p3, p0, Lcom/parse/ParseUser$4;->val$oldUsername:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseUser$4;->val$oldPassword:Ljava/lang/String;

    iput-object p5, p0, Lcom/parse/ParseUser$4;->val$anonymousData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 764
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p1}, Lbolts/Task;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseUser$4;->val$user:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$4;->val$oldUsername:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/parse/ParseUser$4;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$4;->val$oldUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseUser$4;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$4;->val$oldPassword:Ljava/lang/String;

    # setter for: Lcom/parse/ParseUser;->password:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$302(Lcom/parse/ParseUser;Ljava/lang/String;)Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/parse/ParseUser$4;->val$user:Lcom/parse/ParseUser;

    iget-object v2, p0, Lcom/parse/ParseUser$4;->val$anonymousData:Lorg/json/JSONObject;

    # invokes: Lcom/parse/ParseUser;->restoreAnonymity(Lorg/json/JSONObject;)V
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$400(Lcom/parse/ParseUser;Lorg/json/JSONObject;)V

    .line 771
    monitor-exit v1

    .line 776
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    return-object p1

    .line 771
    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 775
    :cond_2
    iget-object v0, p0, Lcom/parse/ParseUser$4;->this$0:Lcom/parse/ParseUser;

    iget-object v1, p0, Lcom/parse/ParseUser$4;->val$user:Lcom/parse/ParseUser;

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 776
    iget-object v0, p0, Lcom/parse/ParseUser$4;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$100(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object p1

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lbolts/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 761
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
