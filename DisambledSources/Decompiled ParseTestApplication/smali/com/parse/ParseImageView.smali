.class public Lcom/parse/ParseImageView;
.super Landroid/widget/ImageView;
.source "ParseImageView.java"


# instance fields
.field private file:Lcom/parse/ParseFile;

.field private isLoaded:Z

.field private placeholder:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseImageView;->isLoaded:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseImageView;->isLoaded:Z

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributeSet"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseImageView;->isLoaded:Z

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseImageView;)Lcom/parse/ParseFile;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseImageView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;

    return-object v0
.end method


# virtual methods
.method public loadInBackground()Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v1, p0, Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;

    if-nez v1, :cond_0

    .line 130
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 134
    :goto_0
    return-object v1

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;

    .line 134
    .local v0, "loadingFile":Lcom/parse/ParseFile;
    iget-object v1, p0, Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;

    invoke-virtual {v1}, Lcom/parse/ParseFile;->getDataInBackground()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseImageView$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseImageView$1;-><init>(Lcom/parse/ParseImageView;Lcom/parse/ParseFile;)V

    sget-object v3, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method public loadInBackground(Lcom/parse/GetDataCallback;)V
    .locals 2
    .param p1, "completionCallback"    # Lcom/parse/GetDataCallback;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/parse/ParseImageView;->loadInBackground()Lbolts/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;Z)Lbolts/Task;

    .line 164
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->cancel()V

    .line 84
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parse/ParseImageView;->isLoaded:Z

    .line 90
    return-void
.end method

.method public setParseFile(Lcom/parse/ParseFile;)V
    .locals 1
    .param p1, "file"    # Lcom/parse/ParseFile;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;

    invoke-virtual {v0}, Lcom/parse/ParseFile;->cancel()V

    .line 117
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseImageView;->isLoaded:Z

    .line 118
    iput-object p1, p0, Lcom/parse/ParseImageView;->file:Lcom/parse/ParseFile;

    .line 119
    iget-object v0, p0, Lcom/parse/ParseImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/parse/ParseImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method public setPlaceholder(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "placeholder"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/parse/ParseImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    .line 102
    iget-boolean v0, p0, Lcom/parse/ParseImageView;->isLoaded:Z

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/parse/ParseImageView;->placeholder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/parse/ParseImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_0
    return-void
.end method
