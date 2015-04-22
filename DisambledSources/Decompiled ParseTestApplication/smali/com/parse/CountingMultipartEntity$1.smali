.class Lcom/parse/CountingMultipartEntity$1;
.super Ljava/lang/Object;
.source "CountingMultipartEntity.java"

# interfaces
.implements Lcom/parse/ParseCallback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/CountingMultipartEntity;-><init>(Lcom/parse/entity/mime/HttpMultipartMode;Ljava/lang/String;Ljava/nio/charset/Charset;Lcom/parse/ProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseCallback2",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/parse/ParseException;",
        ">;"
    }
.end annotation


# instance fields
.field maxProgressSoFar:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/parse/CountingMultipartEntity;

.field final synthetic val$progressCallback:Lcom/parse/ProgressCallback;


# direct methods
.method constructor <init>(Lcom/parse/CountingMultipartEntity;Lcom/parse/ProgressCallback;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/parse/CountingMultipartEntity$1;->this$0:Lcom/parse/CountingMultipartEntity;

    iput-object p2, p0, Lcom/parse/CountingMultipartEntity$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/CountingMultipartEntity$1;->maxProgressSoFar:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public done(Ljava/lang/Integer;Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "percentDone"    # Ljava/lang/Integer;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/parse/CountingMultipartEntity$1;->maxProgressSoFar:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 41
    iput-object p1, p0, Lcom/parse/CountingMultipartEntity$1;->maxProgressSoFar:Ljava/lang/Integer;

    .line 42
    iget-object v0, p0, Lcom/parse/CountingMultipartEntity$1;->val$progressCallback:Lcom/parse/ProgressCallback;

    invoke-interface {v0, p1}, Lcom/parse/ProgressCallback;->done(Ljava/lang/Integer;)V

    .line 44
    :cond_0
    return-void
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/parse/ParseException;

    .end local p2    # "x1":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, p2}, Lcom/parse/CountingMultipartEntity$1;->done(Ljava/lang/Integer;Lcom/parse/ParseException;)V

    return-void
.end method
