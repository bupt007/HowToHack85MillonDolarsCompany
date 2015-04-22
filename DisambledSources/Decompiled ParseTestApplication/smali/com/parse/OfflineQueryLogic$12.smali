.class Lcom/parse/OfflineQueryLogic$12;
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

.field final synthetic val$relation:Lcom/parse/ParseQuery$RelationConstraint;


# direct methods
.method constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;Lcom/parse/ParseQuery$RelationConstraint;)V
    .locals 0
    .param p2, "x0"    # Lcom/parse/ParseUser;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$12;->this$0:Lcom/parse/OfflineQueryLogic;

    iput-object p3, p0, Lcom/parse/OfflineQueryLogic$12;->val$relation:Lcom/parse/ParseQuery$RelationConstraint;

    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;-><init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;)V

    return-void
.end method


# virtual methods
.method public matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
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
    .line 745
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v0, p0, Lcom/parse/OfflineQueryLogic$12;->val$relation:Lcom/parse/ParseQuery$RelationConstraint;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$RelationConstraint;->getRelation()Lcom/parse/ParseRelation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseRelation;->hasKnownObject(Lcom/parse/ParseObject;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
