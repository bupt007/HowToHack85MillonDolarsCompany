.class Lcom/parse/ParseRequest$ParseRequestException;
.super Lcom/parse/ParseException;
.source "ParseRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ParseRequestException"
.end annotation


# instance fields
.field isPermanentFailure:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "theCode"    # I
    .param p2, "theMessage"    # Ljava/lang/String;

    .prologue
    .line 421
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 422
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "theCode"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 425
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 426
    return-void
.end method
