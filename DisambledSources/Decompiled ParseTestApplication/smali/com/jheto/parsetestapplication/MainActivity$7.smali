.class Lcom/jheto/parsetestapplication/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/parse/FindCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jheto/parsetestapplication/MainActivity;->existEmail(Ljava/lang/String;Lcom/jheto/parsetestapplication/MainActivity$IExist;)V
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

.field private final synthetic val$emailToCheck:Ljava/lang/String;

.field private final synthetic val$iexist:Lcom/jheto/parsetestapplication/MainActivity$IExist;


# direct methods
.method constructor <init>(Lcom/jheto/parsetestapplication/MainActivity;Ljava/lang/String;Lcom/jheto/parsetestapplication/MainActivity$IExist;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jheto/parsetestapplication/MainActivity$7;->this$0:Lcom/jheto/parsetestapplication/MainActivity;

    iput-object p2, p0, Lcom/jheto/parsetestapplication/MainActivity$7;->val$emailToCheck:Ljava/lang/String;

    iput-object p3, p0, Lcom/jheto/parsetestapplication/MainActivity$7;->val$iexist:Lcom/jheto/parsetestapplication/MainActivity$IExist;

    .line 120
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

    invoke-virtual {p0, p1, p2}, Lcom/jheto/parsetestapplication/MainActivity$7;->done(Ljava/util/List;Lcom/parse/ParseException;)V

    return-void
.end method

.method public done(Ljava/util/List;Lcom/parse/ParseException;)V
    .locals 6
    .param p2, "arg1"    # Lcom/parse/ParseException;
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
    .line 123
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    const/4 v1, 0x0

    .line 124
    .local v1, "exist":Z
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 125
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 126
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 137
    .end local v2    # "i":I
    :cond_0
    :goto_1
    if-nez v1, :cond_1

    .line 138
    iget-object v4, p0, Lcom/jheto/parsetestapplication/MainActivity$7;->val$iexist:Lcom/jheto/parsetestapplication/MainActivity$IExist;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/jheto/parsetestapplication/MainActivity$IExist;->exist(Z)V

    .line 141
    :cond_1
    return-void

    .line 127
    .restart local v2    # "i":I
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseObject;

    .line 128
    .local v3, "obj":Lcom/parse/ParseObject;
    const-string v4, "email"

    invoke-virtual {v3, v4}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "email"

    invoke-virtual {v3, v4}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "email":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, Lcom/jheto/parsetestapplication/MainActivity$7;->val$emailToCheck:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 130
    const/4 v1, 0x1

    .line 131
    iget-object v4, p0, Lcom/jheto/parsetestapplication/MainActivity$7;->val$iexist:Lcom/jheto/parsetestapplication/MainActivity$IExist;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/jheto/parsetestapplication/MainActivity$IExist;->exist(Z)V

    goto :goto_1

    .line 128
    .end local v0    # "email":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 126
    .restart local v0    # "email":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
