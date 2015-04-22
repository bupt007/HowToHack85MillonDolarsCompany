.class public Lcom/parse/PushConnection$StoppedState;
.super Lcom/parse/PushConnection$State;
.source "PushConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/PushConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StoppedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/PushConnection;


# direct methods
.method public constructor <init>(Lcom/parse/PushConnection;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/parse/PushConnection$StoppedState;->this$0:Lcom/parse/PushConnection;

    invoke-direct {p0, p1}, Lcom/parse/PushConnection$State;-><init>(Lcom/parse/PushConnection;)V

    return-void
.end method


# virtual methods
.method public isTerminal()Z
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x1

    return v0
.end method

.method public runState()Lcom/parse/PushConnection$State;
    .locals 1

    .prologue
    .line 483
    const/4 v0, 0x0

    return-object v0
.end method
