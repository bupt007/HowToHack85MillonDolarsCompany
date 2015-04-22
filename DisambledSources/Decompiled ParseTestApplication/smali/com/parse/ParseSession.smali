.class public Lcom/parse/ParseSession;
.super Lcom/parse/ParseObject;
.source "ParseSession.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Session"
.end annotation


# static fields
.field private static final KEY_CREATED_WITH:Ljava/lang/String; = "createdWith"

.field private static final KEY_EXPIRES_AT:Ljava/lang/String; = "expiresAt"

.field private static final KEY_INSTALLATION_ID:Ljava/lang/String; = "installationId"

.field private static final KEY_RESTRICTED:Ljava/lang/String; = "restricted"

.field private static final KEY_SESSION_TOKEN:Ljava/lang/String; = "sessionToken"

.field private static final KEY_USER:Ljava/lang/String; = "user"

.field private static final READ_ONLY_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sessionToken"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "createdWith"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "restricted"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "expiresAt"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "installationId"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseSession;->READ_ONLY_KEYS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    return-void
.end method

.method public static getCurrentSessionInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseSession$2;

    invoke-direct {v1}, Lcom/parse/ParseSession$2;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseSession$1;

    invoke-direct {v1}, Lcom/parse/ParseSession$1;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentSessionInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/parse/ParseSession;>;"
    invoke-static {}, Lcom/parse/ParseSession;->getCurrentSessionInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 66
    return-void
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const-class v0, Lcom/parse/ParseSession;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const-string v0, "sessionToken"

    invoke-virtual {p0, v0}, Lcom/parse/ParseSession;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 84
    sget-object v0, Lcom/parse/ParseSession;->READ_ONLY_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
