.class public Lcom/parse/ParseACL;
.super Ljava/lang/Object;
.source "ParseACL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseACL$UserResolutionListener;
    }
.end annotation


# static fields
.field private static final PUBLIC_KEY:Ljava/lang/String; = "*"

.field private static final UNRESOLVED_KEY:Ljava/lang/String; = "*unresolved"

.field private static defaultACL:Lcom/parse/ParseACL;

.field private static defaultACLUsesCurrentUser:Z

.field private static defaultACLWithCurrentUser:Lcom/parse/ParseACL;

.field private static lastCurrentUser:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private permissionsById:Lorg/json/JSONObject;

.field private shared:Z

.field private unresolvedUser:Lcom/parse/ParseUser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    .line 81
    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseUser;)V
    .locals 1
    .param p1, "owner"    # Lcom/parse/ParseUser;

    .prologue
    const/4 v0, 0x1

    .line 158
    invoke-direct {p0}, Lcom/parse/ParseACL;-><init>()V

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseACL;->setReadAccess(Lcom/parse/ParseUser;Z)V

    .line 160
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseACL;->setWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseACL;Lcom/parse/ParseUser;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseACL;
    .param p1, "x1"    # Lcom/parse/ParseUser;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->resolveUser(Lcom/parse/ParseUser;)V

    return-void
.end method

.method static createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;
    .locals 12
    .param p0, "object"    # Lorg/json/JSONObject;
    .param p1, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 124
    new-instance v1, Lcom/parse/ParseACL;

    invoke-direct {v1}, Lcom/parse/ParseACL;-><init>()V

    .line 126
    .local v1, "acl":Lcom/parse/ParseACL;
    invoke-static {p0}, Lcom/parse/Parse;->keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 127
    .local v5, "key":Ljava/lang/String;
    const-string v9, "unresolvedUser"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 130
    :try_start_0
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 134
    .local v7, "unresolvedUser":Lorg/json/JSONObject;
    invoke-virtual {p1, v7}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parse/ParseUser;

    iput-object v9, v1, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    goto :goto_0

    .line 131
    .end local v7    # "unresolvedUser":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 132
    .local v2, "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 136
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_1
    move-object v8, v5

    .line 139
    .local v8, "userId":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 143
    .local v6, "permissions":Lorg/json/JSONObject;
    invoke-static {v6}, Lcom/parse/Parse;->keys(Lorg/json/JSONObject;)Ljava/lang/Iterable;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, "accessType":Ljava/lang/String;
    const/4 v9, 0x1

    invoke-direct {v1, v0, v8, v9}, Lcom/parse/ParseACL;->setAccess(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 140
    .end local v0    # "accessType":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "permissions":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 141
    .restart local v2    # "e":Lorg/json/JSONException;
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "could not decode ACL: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 148
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "userId":Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private getAccess(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "accessType"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 212
    :try_start_0
    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 213
    .local v1, "permissions":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v2

    .line 217
    :cond_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 222
    .end local v1    # "permissions":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON failure with ACL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static getDefaultACL()Lcom/parse/ParseACL;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 53
    sget-boolean v3, Lcom/parse/ParseACL;->defaultACLUsesCurrentUser:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    if-eqz v3, :cond_2

    .line 54
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 55
    .local v0, "currentUser":Lcom/parse/ParseUser;
    if-eqz v0, :cond_2

    .line 57
    sget-object v3, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseUser;

    move-object v1, v3

    .line 58
    .local v1, "last":Lcom/parse/ParseUser;
    :goto_0
    if-eq v1, v0, :cond_0

    .line 59
    sget-object v3, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    invoke-virtual {v3}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v2

    .line 60
    .local v2, "newDefaultACLWithCurrentUser":Lcom/parse/ParseACL;
    invoke-virtual {v2, v4}, Lcom/parse/ParseACL;->setShared(Z)V

    .line 61
    invoke-virtual {v2, v0, v4}, Lcom/parse/ParseACL;->setReadAccess(Lcom/parse/ParseUser;Z)V

    .line 62
    invoke-virtual {v2, v0, v4}, Lcom/parse/ParseACL;->setWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 63
    sput-object v2, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 64
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    .line 66
    .end local v2    # "newDefaultACLWithCurrentUser":Lcom/parse/ParseACL;
    :cond_0
    sget-object v3, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 69
    .end local v1    # "last":Lcom/parse/ParseUser;
    :goto_1
    return-object v3

    .line 57
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_2
    sget-object v3, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_1
.end method

.method private prepareUnresolvedUser(Lcom/parse/ParseUser;)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 326
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eq v0, p1, :cond_0

    .line 327
    iget-object v0, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v1, "*unresolved"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 328
    iput-object p1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    .line 329
    new-instance v0, Lcom/parse/ParseACL$UserResolutionListener;

    invoke-direct {v0, p0}, Lcom/parse/ParseACL$UserResolutionListener;-><init>(Lcom/parse/ParseACL;)V

    invoke-virtual {p1, v0}, Lcom/parse/ParseUser;->registerSaveListener(Lcom/parse/GetCallback;)V

    .line 331
    :cond_0
    return-void
.end method

.method private resolveUser(Lcom/parse/ParseUser;)V
    .locals 5
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eq p1, v1, :cond_0

    .line 176
    :goto_0
    return-void

    .line 168
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v2, "*unresolved"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v4, "*unresolved"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    iget-object v1, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    const-string v2, "*unresolved"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 172
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setAccess(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "accessType"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "allowed"    # Z

    .prologue
    .line 185
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 186
    .local v1, "permissions":Lorg/json/JSONObject;
    if-nez v1, :cond_2

    .line 187
    if-nez p3, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "permissions":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .restart local v1    # "permissions":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    :cond_2
    if-eqz p3, :cond_3

    .line 197
    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    .end local v1    # "permissions":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JSON failure with ACL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 199
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "permissions":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 200
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v2, p2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setDefaultACL(Lcom/parse/ParseACL;Z)V
    .locals 2
    .param p0, "acl"    # Lcom/parse/ParseACL;
    .param p1, "withAccessForCurrentUser"    # Z

    .prologue
    const/4 v1, 0x0

    .line 40
    sput-object v1, Lcom/parse/ParseACL;->defaultACLWithCurrentUser:Lcom/parse/ParseACL;

    .line 41
    sput-object v1, Lcom/parse/ParseACL;->lastCurrentUser:Ljava/lang/ref/WeakReference;

    .line 42
    if-eqz p0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v0

    .line 44
    .local v0, "newDefaultACL":Lcom/parse/ParseACL;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseACL;->setShared(Z)V

    .line 45
    sput-object v0, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    .line 46
    sput-boolean p1, Lcom/parse/ParseACL;->defaultACLUsesCurrentUser:Z

    .line 50
    .end local v0    # "newDefaultACL":Lcom/parse/ParseACL;
    :goto_0
    return-void

    .line 48
    :cond_0
    sput-object v1, Lcom/parse/ParseACL;->defaultACL:Lcom/parse/ParseACL;

    goto :goto_0
.end method

.method private setUnresolvedReadAccess(Lcom/parse/ParseUser;Z)V
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->prepareUnresolvedUser(Lcom/parse/ParseUser;)V

    .line 315
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 316
    return-void
.end method

.method private setUnresolvedWriteAccess(Lcom/parse/ParseUser;Z)V
    .locals 1
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/parse/ParseACL;->prepareUnresolvedUser(Lcom/parse/ParseUser;)V

    .line 320
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 321
    return-void
.end method

.method private static validateRoleState(Lcom/parse/ParseRole;)V
    .locals 2
    .param p0, "role"    # Lcom/parse/ParseRole;

    .prologue
    .line 436
    invoke-virtual {p0}, Lcom/parse/ParseRole;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Roles must be saved to the server before they can be used in an ACL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    return-void
.end method


# virtual methods
.method copy()Lcom/parse/ParseACL;
    .locals 4

    .prologue
    .line 84
    new-instance v0, Lcom/parse/ParseACL;

    invoke-direct {v0}, Lcom/parse/ParseACL;-><init>()V

    .line 86
    .local v0, "copy":Lcom/parse/ParseACL;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    iput-object v2, v0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    .line 91
    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    new-instance v3, Lcom/parse/ParseACL$UserResolutionListener;

    invoke-direct {v3, v0}, Lcom/parse/ParseACL$UserResolutionListener;-><init>(Lcom/parse/ParseACL;)V

    invoke-virtual {v2, v3}, Lcom/parse/ParseUser;->registerSaveListener(Lcom/parse/GetCallback;)V

    .line 94
    :cond_0
    return-object v0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getPublicReadAccess()Z
    .locals 1

    .prologue
    .line 238
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getPublicWriteAccess()Z
    .locals 1

    .prologue
    .line 252
    const-string v0, "*"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getReadAccess(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-ne p1, v0, :cond_0

    .line 340
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    .line 348
    :goto_0
    return v0

    .line 342
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    const/4 v0, 0x0

    goto :goto_0

    .line 345
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getReadAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getReadAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 271
    if-nez p1, :cond_0

    .line 272
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    const-string v0, "read"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseACL;->getAccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleReadAccess(Lcom/parse/ParseRole;)Z
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;

    .prologue
    .line 453
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 454
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getRoleReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleReadAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getReadAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleWriteAccess(Lcom/parse/ParseRole;)Z
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;

    .prologue
    .line 482
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 483
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getRoleWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRoleWriteAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getWriteAccess(Lcom/parse/ParseUser;)Z
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-ne p1, v0, :cond_0

    .line 372
    const-string v0, "*unresolved"

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    .line 380
    :goto_0
    return v0

    .line 374
    :cond_0
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 375
    const/4 v0, 0x0

    goto :goto_0

    .line 377
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getWriteAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_2
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseACL;->getWriteAccess(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public getWriteAccess(Ljava/lang/String;)Z
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 293
    if-nez p1, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot getWriteAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseACL;->getAccess(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasUnresolvedUser()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isShared()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/parse/ParseACL;->shared:Z

    return v0
.end method

.method public setPublicReadAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 231
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 232
    return-void
.end method

.method public setPublicWriteAccess(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .prologue
    .line 245
    const-string v0, "*"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 246
    return-void
.end method

.method public setReadAccess(Lcom/parse/ParseUser;Z)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 303
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 304
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseACL;->setUnresolvedReadAccess(Lcom/parse/ParseUser;Z)V

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setReadAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 259
    if-nez p1, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setReadAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    const-string v0, "read"

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseACL;->setAccess(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    return-void
.end method

.method public setRoleReadAccess(Lcom/parse/ParseRole;Z)V
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 467
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 468
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setRoleReadAccess(Ljava/lang/String;Z)V

    .line 469
    return-void
.end method

.method public setRoleReadAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setReadAccess(Ljava/lang/String;Z)V

    .line 407
    return-void
.end method

.method public setRoleWriteAccess(Lcom/parse/ParseRole;Z)V
    .locals 1
    .param p1, "role"    # Lcom/parse/ParseRole;
    .param p2, "allowed"    # Z

    .prologue
    .line 496
    invoke-static {p1}, Lcom/parse/ParseACL;->validateRoleState(Lcom/parse/ParseRole;)V

    .line 497
    invoke-virtual {p1}, Lcom/parse/ParseRole;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setRoleWriteAccess(Ljava/lang/String;Z)V

    .line 498
    return-void
.end method

.method public setRoleWriteAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "roleName"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "role:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    .line 433
    return-void
.end method

.method setShared(Z)V
    .locals 0
    .param p1, "shared"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/parse/ParseACL;->shared:Z

    .line 103
    return-void
.end method

.method public setWriteAccess(Lcom/parse/ParseUser;Z)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "allowed"    # Z

    .prologue
    .line 355
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 356
    invoke-virtual {p1}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseACL;->setUnresolvedWriteAccess(Lcom/parse/ParseUser;Z)V

    .line 363
    :goto_0
    return-void

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setWriteAccess for a user with null id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/parse/ParseACL;->setWriteAccess(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setWriteAccess(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "allowed"    # Z

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot setWriteAccess for null userId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    const-string v0, "write"

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseACL;->setAccess(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method toJSONObject(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;

    .prologue
    .line 109
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/parse/ParseACL;->permissionsById:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v2, "json":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/parse/ParseACL;->unresolvedUser:Lcom/parse/ParseUser;

    invoke-static {v3, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, "encoded":Ljava/lang/Object;
    const-string v3, "unresolvedUser"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v1    # "encoded":Ljava/lang/Object;
    :cond_0
    return-object v2

    .line 114
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
