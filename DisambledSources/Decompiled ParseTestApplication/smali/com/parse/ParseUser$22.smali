.class Lcom/parse/ParseUser$22;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Lorg/json/JSONObject;Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseUser;

.field final synthetic val$authData:Lorg/json/JSONObject;

.field final synthetic val$authType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 1628
    iput-object p1, p0, Lcom/parse/ParseUser$22;->this$0:Lcom/parse/ParseUser;

    iput-object p2, p0, Lcom/parse/ParseUser$22;->val$authType:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseUser$22;->val$authData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1628
    invoke-virtual {p0}, Lcom/parse/ParseUser$22;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/parse/ParseUser$22;->this$0:Lcom/parse/ParseUser;

    iget-object v1, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1632
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseUser$22;->this$0:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->authData:Lorg/json/JSONObject;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1800(Lcom/parse/ParseUser;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$22;->val$authType:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseUser$22;->val$authData:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1633
    iget-object v0, p0, Lcom/parse/ParseUser$22;->this$0:Lcom/parse/ParseUser;

    # getter for: Lcom/parse/ParseUser;->linkedServiceNames:Ljava/util/Set;
    invoke-static {v0}, Lcom/parse/ParseUser;->access$1900(Lcom/parse/ParseUser;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseUser$22;->val$authType:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1635
    iget-object v0, p0, Lcom/parse/ParseUser$22;->this$0:Lcom/parse/ParseUser;

    # invokes: Lcom/parse/ParseUser;->stripAnonymity()V
    invoke-static {v0}, Lcom/parse/ParseUser;->access$2000(Lcom/parse/ParseUser;)V

    .line 1637
    iget-object v0, p0, Lcom/parse/ParseUser$22;->this$0:Lcom/parse/ParseUser;

    const/4 v2, 0x1

    # setter for: Lcom/parse/ParseUser;->dirty:Z
    invoke-static {v0, v2}, Lcom/parse/ParseUser;->access$702(Lcom/parse/ParseUser;Z)Z

    .line 1638
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
