.class abstract Lcom/parse/OfflineQueryLogic$ConstraintMatcher;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/OfflineQueryLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ConstraintMatcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineQueryLogic;

.field protected user:Lcom/parse/ParseUser;


# direct methods
.method public constructor <init>(Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseUser;)V
    .locals 0
    .param p2, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 35
    .local p0, "this":Lcom/parse/OfflineQueryLogic$ConstraintMatcher;, "Lcom/parse/OfflineQueryLogic$ConstraintMatcher<TT;>;"
    iput-object p1, p0, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->this$0:Lcom/parse/OfflineQueryLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/parse/OfflineQueryLogic$ConstraintMatcher;->user:Lcom/parse/ParseUser;

    .line 37
    return-void
.end method


# virtual methods
.method abstract matchesAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
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
.end method
