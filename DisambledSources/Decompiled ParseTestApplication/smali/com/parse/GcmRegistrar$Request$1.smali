.class Lcom/parse/GcmRegistrar$Request$1;
.super Landroid/content/BroadcastReceiver;
.source "GcmRegistrar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/GcmRegistrar$Request;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/GcmRegistrar$Request;


# direct methods
.method constructor <init>(Lcom/parse/GcmRegistrar$Request;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/parse/GcmRegistrar$Request$1;->this$0:Lcom/parse/GcmRegistrar$Request;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 259
    if-eqz p2, :cond_0

    const-string v0, "random"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/parse/GcmRegistrar$Request$1;->this$0:Lcom/parse/GcmRegistrar$Request;

    # getter for: Lcom/parse/GcmRegistrar$Request;->identifier:I
    invoke-static {v1}, Lcom/parse/GcmRegistrar$Request;->access$300(Lcom/parse/GcmRegistrar$Request;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/parse/GcmRegistrar$Request$1;->this$0:Lcom/parse/GcmRegistrar$Request;

    # invokes: Lcom/parse/GcmRegistrar$Request;->send()V
    invoke-static {v0}, Lcom/parse/GcmRegistrar$Request;->access$400(Lcom/parse/GcmRegistrar$Request;)V

    .line 262
    :cond_0
    return-void
.end method
