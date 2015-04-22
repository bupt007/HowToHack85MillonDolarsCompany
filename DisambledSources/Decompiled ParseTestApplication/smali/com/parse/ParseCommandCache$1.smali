.class Lcom/parse/ParseCommandCache$1;
.super Ljava/lang/Object;
.source "ParseCommandCache.java"

# interfaces
.implements Lcom/parse/ConnectivityNotifier$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseCommandCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseCommandCache;


# direct methods
.method constructor <init>(Lcom/parse/ParseCommandCache;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/parse/ParseCommandCache$1;->this$0:Lcom/parse/ParseCommandCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public networkConnectivityStatusChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 91
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    .local v0, "connectionLost":Z
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/parse/ParseCommandCache$1;->this$0:Lcom/parse/ParseCommandCache;

    invoke-virtual {v1, v2}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/parse/ParseCommandCache$1;->this$0:Lcom/parse/ParseCommandCache;

    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->isConnected(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parse/ParseCommandCache;->setConnected(Z)V

    goto :goto_0
.end method
