.class Lcom/parse/ParseImageView$1;
.super Ljava/lang/Object;
.source "ParseImageView.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseImageView;->loadInBackground()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<[B",
        "Lbolts/Task",
        "<[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseImageView;

.field final synthetic val$loadingFile:Lcom/parse/ParseFile;


# direct methods
.method constructor <init>(Lcom/parse/ParseImageView;Lcom/parse/ParseFile;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/parse/ParseImageView$1;->this$0:Lcom/parse/ParseImageView;

    iput-object p2, p0, Lcom/parse/ParseImageView$1;->val$loadingFile:Lcom/parse/ParseFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<[B>;)",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<[B>;"
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 138
    .local v1, "data":[B
    iget-object v2, p0, Lcom/parse/ParseImageView$1;->this$0:Lcom/parse/ParseImageView;

    # getter for: Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;
    invoke-static {v2}, Lcom/parse/ParseImageView;->access$000(Lcom/parse/ParseImageView;)Lcom/parse/ParseFile;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseImageView$1;->val$loadingFile:Lcom/parse/ParseFile;

    if-eq v2, v3, :cond_1

    .line 141
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object p1

    .line 149
    .end local p1    # "task":Lbolts/Task;, "Lbolts/Task<[B>;"
    :cond_0
    :goto_0
    return-object p1

    .line 143
    .restart local p1    # "task":Lbolts/Task;, "Lbolts/Task<[B>;"
    :cond_1
    if-eqz v1, :cond_0

    .line 144
    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 146
    iget-object v2, p0, Lcom/parse/ParseImageView$1;->this$0:Lcom/parse/ParseImageView;

    invoke-virtual {v2, v0}, Lcom/parse/ParseImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

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
    .line 134
    invoke-virtual {p0, p1}, Lcom/parse/ParseImageView$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
