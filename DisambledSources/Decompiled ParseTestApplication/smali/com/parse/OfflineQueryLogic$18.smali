.class Lcom/parse/OfflineQueryLogic$18;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$item:Ljava/lang/Object;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    .prologue
    .line 984
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$18;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$18;->val$item:Ljava/lang/Object;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$18;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$18;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
    .line 987
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$18;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v1, p0, Lcom/parse/OfflineQueryLogic$18;->val$item:Ljava/lang/Object;

    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$18;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$18;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineQueryLogic;->fetchIncludeAsync(Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    invoke-static {v0, v1, v2, v3}, Lcom/parse/OfflineQueryLogic;->access$600(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
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
    .line 984
    invoke-virtual {p0, p1}, Lcom/parse/OfflineQueryLogic$18;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
