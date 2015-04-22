.class final Lcom/parse/ParseObject$1;
.super Ljava/lang/ThreadLocal;
.source "ParseObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/parse/ParseObject$1;->initialValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return-object v0
.end method
