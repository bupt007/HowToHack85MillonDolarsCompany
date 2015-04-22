.class Lcom/jheto/parsetestapplication/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jheto/parsetestapplication/MainActivity;->updateEmail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/FindCallback",
        "<",
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jheto/parsetestapplication/MainActivity;

.field private final synthetic val$emailToUpdate:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jheto/parsetestapplication/MainActivity$6;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    iput-object p2, p0, Lcom/jheto/parsetestapplication/MainActivity$6;->val$emailToUpdate:Ljava/lang/String;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/List;

    check-cast p2, Lcom/parse/ParseException;

    invoke-virtual {p0, p1, p2}, Lcom/jheto/parsetestapplication/MainActivity$6;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 5
    .param p2, "e"    # Lcom/parse/ParseException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/ParseException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "nameList":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/jheto/parsetestapplication/MainActivity$6;->val$emailToUpdate:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".update.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "newEmail":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 103
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    iget-object v2, p0, Lcom/jheto/parsetestapplication/MainActivity$6;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    # getter for: Lcom/jheto/parsetestapplication/MainActivity;->textViewData:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/jheto/parsetestapplication/MainActivity;->access$3(Lcom/jheto/parsetestapplication/MainActivity;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Update Email: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :cond_0
    return-void

    .line 103
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    .line 104
    .local v0, "nameObj":Lcom/parse/ParseObject;
    const-string v3, "email"

    invoke-virtual {v0, v3, v1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v0}, Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;

    goto :goto_0
.end method
