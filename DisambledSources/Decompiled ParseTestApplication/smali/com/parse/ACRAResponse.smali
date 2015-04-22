.class Lcom/parse/ACRAResponse;
.super Ljava/lang/Object;
.source "ACRAResponse.java"


# instance fields
.field private mStatus:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatusCode()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/parse/ACRAResponse;->mStatus:I

    return v0
.end method

.method public setStatusCode(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    .line 15
    iput p1, p0, Lcom/parse/ACRAResponse;->mStatus:I

    .line 16
    return-void
.end method
