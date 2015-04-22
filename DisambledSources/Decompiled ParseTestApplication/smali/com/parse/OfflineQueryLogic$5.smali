.class final Lcom/parse/OfflineQueryLogic$5;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"

# interfaces
.implements Lcom/parse/OfflineQueryLogic$Decider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->matchesGreaterThanOrEqualToConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "constraint"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 287
    if-eqz p2, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p2, v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return v0

    :cond_1
    # invokes: Lcom/parse/OfflineQueryLogic;->compareTo(Ljava/lang/Object;Ljava/lang/Object;)I
    invoke-static {p1, p2}, Lcom/parse/OfflineQueryLogic;->access$000(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
