.class Lcom/parse/OfflineQueryLogic$13;
.super Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.source "OfflineQueryLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->createMatcher(Lcom/parse/ParseUser;Lcom/parse/ParseQuery$QueryConstraints;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/OfflineQueryLogic$ConstraintMatcher",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$queryConstraintValue:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p2, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 753
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$13;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$13;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/OfflineQueryLogic$13;->val$queryConstraintValue:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;)V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 4
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    :try_start_0
    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$13;->this$0:Lcom/parse/OfflineQueryLogic;

    iget-object v3, p0, Lcom/parse/OfflineQueryLogic$13;->val$key:Ljava/lang/String;

    # invokes: Lcom/parse/OfflineQueryLogic;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    invoke-static {v2, p1, v3}, Lcom/parse/OfflineQueryLogic;->access$200(Lcom/parse/OfflineQueryLogic;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 762
    .local v1, "objectValue":Ljava/lang/Object;
    iget-object v2, p0, Lcom/parse/OfflineQueryLogic$13;->val$queryConstraintValue:Ljava/lang/Object;

    # invokes: Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
    invoke-static {v2, v1}, Lcom/parse/OfflineQueryLogic;->access$400(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .end local v1    # "objectValue":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, "e":Lcom/parse/ParseException;
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
.end method
