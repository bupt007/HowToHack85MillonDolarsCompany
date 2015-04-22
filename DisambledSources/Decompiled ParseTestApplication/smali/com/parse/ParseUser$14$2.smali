.class Lcom/parse/ParseUser$14$2;
.super Ljava/lang/Object;
.source "ParseUser.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseUser$14;->then(Lbolts/Task;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/ParseUser$14;


# direct methods
.method constructor <init>(Lcom/parse/ParseUser$14;)V
    .locals 0

    .prologue
    .line 1192
    iput-object p1, p0, Lcom/parse/ParseUser$14$2;->this$0:Lcom/parse/ParseUser$14;

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
    .line 1192
    invoke-virtual {p0}, Lcom/parse/ParseUser$14$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/parse/ParseUser$14$2;->this$0:Lcom/parse/ParseUser$14;

    iget-object v0, v0, Lcom/parse/ParseUser$14;->val$user:Lcom/parse/ParseUser;

    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    const-string v2, "currentUser"

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser;->saveToDisk(Landroid/content/Context;Ljava/lang/String;)V

    .line 1197
    const/4 v0, 0x0

    return-object v0
.end method
