.class Lcom/parse/OfflineStore$15;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$uuid:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 888
    iput-object p1, p0, Lcom/parse/OfflineStore$15;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$15;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineStore$15;->val$uuid:Lbolts/Capture;

    iput-object p4, p0, Lcom/parse/OfflineStore$15;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 891
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 892
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "key"

    iget-object v2, p0, Lcom/parse/OfflineStore$15;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v2, "uuid"

    iget-object v1, p0, Lcom/parse/OfflineStore$15;->val$uuid:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object v1, p0, Lcom/parse/OfflineStore$15;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v2, "Dependencies"

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v0, v3}, Lcom/parse/ParseSQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)Lbolts/Task;

    move-result-object v1

    return-object v1
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
    .line 888
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$15;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
