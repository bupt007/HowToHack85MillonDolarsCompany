.class Lcom/parse/ParsePinningEventuallyQueue$1;
.super Ljava/lang/Object;
.source "ParsePinningEventuallyQueue.java"

# interfaces
.implements Lcom/parse/ConnectivityNotifier$ConnectivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePinningEventuallyQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParsePinningEventuallyQueue;


# direct methods
.method constructor <init>(Lcom/parse/ParsePinningEventuallyQueue;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/parse/ParsePinningEventuallyQueue$1;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

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

    .line 69
    const-string v1, "noConnectivity"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    .local v0, "connectionLost":Z
    if-eqz v0, :cond_0

    .line 72
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$1;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-virtual {v1, v2}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/parse/ParsePinningEventuallyQueue$1;->this$0:Lcom/parse/ParsePinningEventuallyQueue;

    invoke-static {p1}, Lcom/parse/ConnectivityNotifier;->isConnected(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/parse/ParsePinningEventuallyQueue;->setConnected(Z)V

    goto :goto_0
.end method
