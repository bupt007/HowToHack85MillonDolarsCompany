.class Lcom/parse/ParseACL$UserResolutionListener;
.super Ljava/lang/Object;
.source "ParseACL.java"

# interfaces
.implements Lcom/parse/GetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParseACL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserResolutionListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/GetCallback",
        "<",
        "Lcom/parse/ParseObject;",
        ">;"
    }
.end annotation


# instance fields
.field private final parent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseACL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parse/ParseACL;)V
    .locals 1
    .param p1, "parent"    # Lcom/parse/ParseACL;

    .prologue
    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/parse/ParseACL$UserResolutionListener;->parent:Ljava/lang/ref/WeakReference;

    .line 505
    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 3
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 512
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseACL$UserResolutionListener;->parent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseACL;

    .line 513
    .local v1, "parent":Lcom/parse/ParseACL;
    if-eqz v1, :cond_0

    .line 514
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v2, v0

    # invokes: Lcom/parse/ParseACL;->resolveUser(Lcom/parse/ParseUser;)V
    invoke-static {v1, v2}, Lcom/parse/ParseACL;->access$000(Lcom/parse/ParseACL;Lcom/parse/ParseUser;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_0
    invoke-virtual {p1, p0}, Lcom/parse/ParseObject;->unregisterSaveListener(Lcom/parse/GetCallback;)V

    .line 519
    return-void

    .line 517
    .end local v1    # "parent":Lcom/parse/ParseACL;
    :catchall_0
    move-exception v2

    invoke-virtual {p1, p0}, Lcom/parse/ParseObject;->unregisterSaveListener(Lcom/parse/GetCallback;)V

    throw v2
.end method

.method public bridge synthetic done(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Throwable;

    .prologue
    .line 500
    check-cast p1, Lcom/parse/ParseObject;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/parse/ParseException;

    .end local p2    # "x1":Ljava/lang/Throwable;
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseACL$UserResolutionListener;->done(Lcom/parse/ParseObject;Lcom/parse/ParseException;)V

    return-void
.end method
