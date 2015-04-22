.class Lcom/parse/ParsePinningEventuallyQueue$PauseException;
.super Ljava/lang/Exception;
.source "ParsePinningEventuallyQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePinningEventuallyQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PauseException"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 619
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/parse/ParsePinningEventuallyQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/parse/ParsePinningEventuallyQueue$1;

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/parse/ParsePinningEventuallyQueue$PauseException;-><init>()V

    return-void
.end method
