.class final Lcom/parse/ParseTestUtils$1;
.super Ljava/lang/Object;
.source "ParseTestUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseTestUtils;->setStrictModeEnabledForMainThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$done:Ljava/util/concurrent/Semaphore;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(ZLjava/util/concurrent/Semaphore;)V
    .locals 0

    .prologue
    .line 283
    iput-boolean p1, p0, Lcom/parse/ParseTestUtils$1;->val$enabled:Z

    iput-object p2, p0, Lcom/parse/ParseTestUtils$1;->val$done:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/parse/ParseTestUtils$1;->val$enabled:Z

    invoke-static {v0}, Lcom/parse/ParseTestUtils;->setStrictModeEnabledForThisThread(Z)V

    .line 287
    iget-object v0, p0, Lcom/parse/ParseTestUtils$1;->val$done:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 288
    return-void
.end method
