.class Lcom/parse/OfflineStore$20;
.super Lcom/parse/ParseTraverser;
.source "OfflineStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$objectsInTree:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/parse/OfflineStore$20;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$20;->val$objectsInTree:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/parse/ParseTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method protected visit(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 987
    instance-of v0, p1, Lcom/parse/ParseObject;

    if-eqz v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/parse/OfflineStore$20;->val$objectsInTree:Ljava/util/ArrayList;

    check-cast p1, Lcom/parse/ParseObject;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
