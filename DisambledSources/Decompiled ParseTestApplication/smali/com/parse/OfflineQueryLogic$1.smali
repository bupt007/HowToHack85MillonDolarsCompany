.class final Lcom/parse/OfflineQueryLogic$1;
.super Ljava/lang/Object;
.source "OfflineQueryLogic.java"

# interfaces
.implements Lcom/parse/OfflineQueryLogic$Decider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineQueryLogic;->matchesEqualConstraint(Ljava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "constraint"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 223
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
