.class Lcom/parse/OfflineQueryLogic$9;
.super Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.source "OfflineQueryLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->createDontSelectMatcher(Lcom/parse/ParseUser;Ljava/lang/Object;Ljava/lang/String;)Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
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

.field final synthetic val$selectMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/OfflineQueryLogic$ConstraintMatcher;)V
    .locals 0
    .param p2, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 619
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$9;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$9;->val$selectMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;)V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 2
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
    .line 622
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$9;->val$selectMatcher:Lcom/parse/OfflineQueryLogic$ConstraintMatcher;

    invoke-virtual {v0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineQueryLogic$9$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineQueryLogic$9$1;-><init>(Lcom/parse/OfflineQueryLogic$9;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
