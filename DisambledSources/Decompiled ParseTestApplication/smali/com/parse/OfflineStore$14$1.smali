.class Lcom/parse/OfflineStore$14$1;
.super Ljava/lang/Object;
.source "OfflineStore.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore$14;->then(Lbolts/Task;)Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<TT;",
        "Lbolts/Task",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/parse/OfflineStore$14;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore$14;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lcom/parse/OfflineStore$14$1;->this$1:Lcom/parse/OfflineStore$14;

    iput-object p2, p0, Lcom/parse/OfflineStore$14$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<TT;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 830
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<TT;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore$14$1;->val$db:Lcom/parse/ParseSQLiteDatabase;

    invoke-virtual {v0}, Lcom/parse/ParseSQLiteDatabase;->closeAsync()Lbolts/Task;

    .line 831
    return-object p1
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
    .line 827
    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$14$1;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
