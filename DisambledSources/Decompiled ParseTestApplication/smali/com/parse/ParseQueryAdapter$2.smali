.class Lcom/parse/ParseQueryAdapter$2;
.super Ljava/lang/Object;
.source "ParseQueryAdapter.java"

# interfaces
.implements Lcom/parse/ParseQueryAdapter$QueryFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseQueryAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/ParseQueryAdapter$QueryFactory",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$className:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    .local p0, "this":Lcom/parse/ParseQueryAdapter$2;, "Lcom/parse/ParseQueryAdapter.2;"
    iput-object p1, p0, Lcom/parse/ParseQueryAdapter$2;->val$className:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lcom/parse/ParseQuery;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "this":Lcom/parse/ParseQueryAdapter$2;, "Lcom/parse/ParseQueryAdapter.2;"
    iget-object v1, p0, Lcom/parse/ParseQueryAdapter$2;->val$className:Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    .line 212
    .local v0, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v1, "createdAt"

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 214
    return-object v0
.end method
