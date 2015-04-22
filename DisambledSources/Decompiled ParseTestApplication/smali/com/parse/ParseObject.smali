.class public Lcom/parse/ParseObject;
.super Ljava/lang/Object;
.source "ParseObject.java"


# static fields
.field static final API_VERSION:Ljava/lang/String; = "2"

.field private static final AUTO_CLASS_NAME:Ljava/lang/String; = "_Automatic"

.field public static final DEFAULT_PIN:Ljava/lang/String; = "_default"

.field private static final KEY_ACL:Ljava/lang/String; = "ACL"

.field private static final KEY_CLASS_NAME:Ljava/lang/String; = "className"

.field private static final KEY_COMPLETE:Ljava/lang/String; = "__complete"

.field private static final KEY_CREATED_AT:Ljava/lang/String; = "createdAt"

.field private static final KEY_OBJECT_ID:Ljava/lang/String; = "objectId"

.field private static final KEY_OPERATIONS:Ljava/lang/String; = "__operations"

.field private static final KEY_TYPE:Ljava/lang/String; = "__type"

.field private static final KEY_UPDATED_AT:Ljava/lang/String; = "updatedAt"

.field private static final NEW_OFFLINE_OBJECT_ID_PLACEHOLDER:Ljava/lang/String; = "*** Offline Object ***"

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseObject"

.field static final VERSION_NAME:Ljava/lang/String; = "1.9.1"

.field private static final classNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final impreciseDateFormat:Ljava/text/DateFormat;

.field private static final isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final objectTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field static server:Ljava/lang/String;


# instance fields
.field private className:Ljava/lang/String;

.field private createdAt:Ljava/util/Date;

.field private final dataAvailability:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final estimatedData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field hasBeenFetched:Z

.field private final hashedObjects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lcom/parse/ParseJSONCacheItem;",
            ">;"
        }
    .end annotation
.end field

.field isDeleted:Z

.field isDeletingEventually:I

.field private localId:Ljava/lang/String;

.field final mutex:Ljava/lang/Object;

.field private objectId:Ljava/lang/String;

.field final operationSetQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;"
        }
    .end annotation
.end field

.field private final saveEvent:Lcom/parse/ParseMulticastDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseMulticastDelegate",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final serverData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final taskQueue:Lcom/parse/TaskQueue;

.field private updatedAt:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    const-string v1, "https://api.parse.com"

    sput-object v1, Lcom/parse/ParseObject;->server:Ljava/lang/String;

    .line 68
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/parse/ParseObject;->classNames:Ljava/util/Map;

    .line 70
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v1, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    .line 77
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 78
    .local v0, "format":Ljava/text/DateFormat;
    new-instance v1, Ljava/util/SimpleTimeZone;

    const/4 v2, 0x0

    const-string v3, "GMT"

    invoke-direct {v1, v2, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 79
    sput-object v0, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    .line 105
    new-instance v1, Lcom/parse/ParseObject$1;

    invoke-direct {v1}, Lcom/parse/ParseObject$1;-><init>()V

    sput-object v1, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 127
    const-string v0, "_Automatic"

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "theClassName"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v2, Lcom/parse/ParseMulticastDelegate;

    invoke-direct {v2}, Lcom/parse/ParseMulticastDelegate;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    .line 92
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    .line 93
    new-instance v2, Lcom/parse/TaskQueue;

    invoke-direct {v2}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    .line 146
    sget-object v2, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    .local v0, "objectIdForPointer":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must specify a Parse class name when creating a new ParseObject."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    :cond_0
    const-string v2, "_Automatic"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/parse/ParseObject;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 159
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must create this type of ParseObject using ParseObject.create() or the proper subclass."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/parse/ParseObject;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    sget-object v3, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 166
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "You must register this ParseObject subclass before instantiating it."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 170
    :cond_3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 171
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    .line 172
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    .line 173
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v3, Lcom/parse/ParseOperationSet;

    invoke-direct {v3}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    .line 175
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    .line 176
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    .line 179
    iput-object p1, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    .line 180
    if-nez v0, :cond_5

    .line 181
    invoke-virtual {p0}, Lcom/parse/ParseObject;->setDefaultValues()V

    .line 182
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    .line 190
    :goto_0
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v1

    .line 191
    .local v1, "store":Lcom/parse/OfflineStore;
    if-eqz v1, :cond_4

    .line 192
    invoke-virtual {v1, p0}, Lcom/parse/OfflineStore;->registerNewObject(Lcom/parse/ParseObject;)V

    .line 194
    :cond_4
    return-void

    .line 184
    .end local v1    # "store":Lcom/parse/OfflineStore;
    :cond_5
    const-string v2, "*** Offline Object ***"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 185
    iput-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 187
    :cond_6
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/parse/ParseObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseObject;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V
    .locals 0
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Lorg/json/JSONObject;
    .param p2, "x2"    # Lcom/parse/ParseDecoder;
    .param p3, "x3"    # Lcom/parse/ParseOperationSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseObject;->mergeAfterSave(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/parse/ParseObject;Ljava/lang/Object;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->handleDeleteResultAsync(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/ParseObject;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Lbolts/Task;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->deleteAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/ParseObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->currentDeleteCommand(Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/IdentityHashMap;
    .param p4, "x4"    # Ljava/util/IdentityHashMap;

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3, p4}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/parse/ParseObject;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/parse/ParseObject;->canBeSerialized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Ljava/util/List;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lcom/parse/ParseUser;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAllIfNeededAsync(Ljava/util/List;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/util/List;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/util/List;
    .param p1, "x1"    # Lcom/parse/ParseUser;
    .param p2, "x2"    # Lbolts/Task;

    .prologue
    .line 52
    invoke-static {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObject;)Lcom/parse/ParseMulticastDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/ParseObject;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/parse/ParseObject;Z)Lcom/parse/ParseACL;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseObject;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/ParseObject;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/parse/ParseObject;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    return-object v0
.end method

.method private applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V
    .locals 7
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2661
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 2662
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2663
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseFieldOperation;

    .line 2664
    .local v4, "operation":Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2665
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-interface {v4, v3, p0, v1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2666
    .local v2, "newValue":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 2667
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2672
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    .end local v4    # "operation":Lcom/parse/ParseFieldOperation;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2669
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "newValue":Ljava/lang/Object;
    .restart local v3    # "oldValue":Ljava/lang/Object;
    .restart local v4    # "operation":Lcom/parse/ParseFieldOperation;
    :cond_0
    :try_start_1
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2672
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    .end local v4    # "operation":Lcom/parse/ParseFieldOperation;
    :cond_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2673
    return-void
.end method

.method private canBeSerialized()Z
    .locals 4

    .prologue
    .line 2221
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2222
    :try_start_0
    new-instance v0, Lbolts/Capture;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lbolts/Capture;-><init>(Ljava/lang/Object;)V

    .line 2228
    .local v0, "result":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    new-instance v1, Lcom/parse/ParseObject$39;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$39;-><init>(Lcom/parse/ParseObject;Lbolts/Capture;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/parse/ParseObject$39;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/parse/ParseTraverser;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2243
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 2244
    .end local v0    # "result":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Boolean;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 1036
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1037
    :try_start_0
    invoke-static {p2}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1038
    iget-object v3, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseJSONCacheItem;

    .line 1039
    .local v2, "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    if-nez v2, :cond_0

    .line 1040
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "ParseObject contains container item that isn\'t cached."

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1057
    .end local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1045
    .restart local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :cond_0
    :try_start_1
    new-instance v1, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v1, p2}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    .local v1, "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    :try_start_2
    invoke-virtual {v2, v1}, Lcom/parse/ParseJSONCacheItem;->equals(Lcom/parse/ParseJSONCacheItem;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1051
    new-instance v3, Lcom/parse/ParseSetOperation;

    invoke-direct {v3, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v3}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 1057
    .end local v1    # "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    .end local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :cond_1
    :goto_0
    monitor-exit v4

    .line 1058
    return-void

    .line 1046
    .restart local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1055
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "oldCacheItem":Lcom/parse/ParseJSONCacheItem;
    :cond_2
    iget-object v3, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private checkGetAccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3335
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->isDataAvailable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3336
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ParseObject has no data for this key.  Call fetchIfNeeded() to get the data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3339
    :cond_0
    return-void
.end method

.method private checkKeyIsMutable(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2872
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->isKeyMutable(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2873
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot modify `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "` property of an "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2876
    :cond_0
    return-void
.end method

.method private checkpointAllMutableContainers()V
    .locals 4

    .prologue
    .line 1007
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1008
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1009
    .local v1, "o":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/Object;)V

    goto :goto_0

    .line 1011
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "o":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1012
    return-void
.end method

.method private checkpointMutableContainer(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1018
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1019
    :try_start_0
    invoke-static {p1}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    :try_start_1
    new-instance v1, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v1, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1026
    .local v1, "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    :try_start_2
    iget-object v2, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    .end local v1    # "newCacheItem":Lcom/parse/ParseJSONCacheItem;
    :cond_0
    monitor-exit v3

    .line 1029
    return-void

    .line 1023
    :catch_0
    move-exception v0

    .line 1024
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1028
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2212
    .local p1, "dirtyChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local p2, "dirtyFiles":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseFile;>;"
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    .line 2215
    return-void
.end method

.method private static collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V
    .locals 2
    .param p0, "node"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseFile;",
            ">;",
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseObject;",
            ">;",
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2141
    .local p1, "dirtyChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .local p2, "dirtyFiles":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseFile;>;"
    .local p3, "alreadySeen":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    .local p4, "alreadySeenNew":Ljava/util/IdentityHashMap;, "Ljava/util/IdentityHashMap<Lcom/parse/ParseObject;Lcom/parse/ParseObject;>;"
    new-instance v0, Lcom/parse/ParseObject$38;

    invoke-direct {v0, p2, p1, p3, p4}, Lcom/parse/ParseObject$38;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/IdentityHashMap;Ljava/util/IdentityHashMap;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$38;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 2204
    return-void
.end method

.method private collectFetchedObjects()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 675
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 676
    .local v0, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    new-instance v1, Lcom/parse/ParseObject$5;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$5;-><init>(Lcom/parse/ParseObject;Ljava/util/Map;)V

    .line 688
    .local v1, "traverser":Lcom/parse/ParseTraverser;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    .line 689
    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v1, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 207
    :try_start_0
    sget-object v1, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 212
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create instance of subclass."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v1, Lcom/parse/ParseObject;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createWithoutData(Ljava/lang/Class;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .param p1, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method public static createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 8
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "objectId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 245
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v4

    .line 247
    .local v4, "store":Lcom/parse/OfflineStore;
    if-nez p1, :cond_0

    .line 248
    :try_start_0
    sget-object v5, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    const-string v6, "*** Offline Object ***"

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 254
    :goto_0
    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    .line 255
    invoke-virtual {v4, p0, p1}, Lcom/parse/OfflineStore;->getOrCreateObjectWithoutData(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 257
    .local v3, "objectAndIsNew":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/parse/ParseObject;Ljava/lang/Boolean;>;"
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/parse/ParseObject;

    .line 258
    .local v2, "object":Lcom/parse/ParseObject;
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 264
    .end local v3    # "objectAndIsNew":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/parse/ParseObject;Ljava/lang/Boolean;>;"
    .local v1, "isNew":Z
    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 265
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "A ParseObject subclass default constructor must not make changes to the object that cause it to be dirty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v1    # "isNew":Z
    .end local v2    # "object":Lcom/parse/ParseObject;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v5

    sget-object v6, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v5

    .line 250
    :cond_0
    :try_start_2
    sget-object v5, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 275
    :catch_1
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Failed to create instance of subclass."

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_4
    invoke-static {p0}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    .line 261
    .restart local v2    # "object":Lcom/parse/ParseObject;
    const/4 v1, 0x1

    .restart local v1    # "isNew":Z
    goto :goto_1

    .line 278
    :cond_2
    sget-object v5, Lcom/parse/ParseObject;->isCreatingPointerForObjectId:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v2
.end method

.method private currentDeleteCommand(Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 4
    .param p1, "sessionToken"    # Ljava/lang/String;

    .prologue
    .line 1917
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1918
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-static {v1, v3, p1}, Lcom/parse/ParseRESTObjectCommand;->deleteObjectCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1920
    .local v0, "command":Lcom/parse/ParseRESTObjectCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTObjectCommand;->enableRetrying()V

    .line 1921
    monitor-exit v2

    return-object v0

    .line 1922
    .end local v0    # "command":Lcom/parse/ParseRESTObjectCommand;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private currentOperations()Lcom/parse/ParseOperationSet;
    .locals 2

    .prologue
    .line 2652
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2653
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    monitor-exit v1

    return-object v0

    .line 2654
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;
    .locals 8
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2253
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 2254
    .local v0, "currentUser":Lcom/parse/ParseUser;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2255
    .local v5, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2256
    .local v3, "files":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseFile;>;"
    invoke-static {p0, v5, v3}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 2258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2259
    .local v2, "fileSaveTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseFile;

    .line 2260
    .local v1, "file":Lcom/parse/ParseFile;
    const/4 v6, 0x0

    invoke-virtual {v1, p1, v6}, Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2263
    .end local v1    # "file":Lcom/parse/ParseFile;
    :cond_0
    invoke-static {v2}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/ParseObject$40;

    invoke-direct {v7, v5, v0, p1}, Lcom/parse/ParseObject$40;-><init>(Ljava/util/List;Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    return-object v6
.end method

.method public static deleteAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2091
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 2092
    return-void
.end method

.method private static deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2031
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2032
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 2035
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseObject$37;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$37;-><init>(Ljava/util/List;)V

    invoke-static {v0}, Lbolts/Task;->callInBackground(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseObject$36;

    invoke-direct {v1, p1}, Lcom/parse/ParseObject$36;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public static deleteAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2117
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 2118
    .local v0, "sessionToken":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deleteAllAsync(Ljava/util/List;Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static deleteAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2104
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->deleteAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2105
    return-void
.end method

.method private deleteAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1931
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1932
    .local v0, "sessionToken":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$33;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$33;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$32;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$32;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$31;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$31;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method static enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lbolts/Continuation",
            "<",
            "Ljava/lang/Void;",
            "Lbolts/Task",
            "<TT;>;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 358
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<+Lcom/parse/ParseObject;>;"
    .local p1, "taskStart":Lbolts/Continuation;, "Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<TT;>;>;"
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v7

    .line 365
    .local v7, "readyToStart":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/Void;>.TaskCompletionSource;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 366
    .local v5, "locks":Ljava/util/List;, "Ljava/util/List<Ljava/util/concurrent/locks/Lock;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 367
    .local v6, "obj":Lcom/parse/ParseObject;
    iget-object v8, v6, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    invoke-virtual {v8}, Lcom/parse/TaskQueue;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 369
    .end local v6    # "obj":Lcom/parse/ParseObject;
    :cond_0
    new-instance v4, Lcom/parse/LockSet;

    invoke-direct {v4, v5}, Lcom/parse/LockSet;-><init>(Ljava/util/Collection;)V

    .line 371
    .local v4, "lock":Lcom/parse/LockSet;
    invoke-virtual {v4}, Lcom/parse/LockSet;->lock()V

    .line 378
    :try_start_0
    invoke-virtual {v7}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v8

    invoke-interface {p1, v8}, Lbolts/Continuation;->then(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    .local v2, "fullTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 387
    .local v0, "childTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 388
    .restart local v6    # "obj":Lcom/parse/ParseObject;
    iget-object v8, v6, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v9, Lcom/parse/ParseObject$2;

    invoke-direct {v9, v0, v2}, Lcom/parse/ParseObject$2;-><init>(Ljava/util/List;Lbolts/Task;)V

    invoke-virtual {v8, v9}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 407
    .end local v0    # "childTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    .end local v2    # "fullTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    .end local v6    # "obj":Lcom/parse/ParseObject;
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Lcom/parse/LockSet;->unlock()V

    throw v8

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_2
    throw v1

    .line 381
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 382
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 398
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "childTasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    .restart local v2    # "fullTask":Lbolts/Task;, "Lbolts/Task<TT;>;"
    :cond_1
    invoke-static {v0}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v8

    new-instance v9, Lcom/parse/ParseObject$3;

    invoke-direct {v9, v7}, Lcom/parse/ParseObject$3;-><init>(Lbolts/Task$TaskCompletionSource;)V

    invoke-virtual {v8, v9}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    invoke-virtual {v4}, Lcom/parse/LockSet;->unlock()V

    return-object v2
.end method

.method private enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .param p1, "operationSet"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1559
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1560
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should only be used to enqueue saveEventually operation sets"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$16;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$16;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static fetchAll(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2632
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static fetchAllAsync(Ljava/util/List;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 8
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2559
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 2560
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    .line 2578
    :goto_0
    return-object v6

    .line 2563
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2564
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    invoke-virtual {v6}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2565
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 2566
    .local v4, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v4}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2567
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "All objects should have the same class"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2569
    :cond_1
    invoke-virtual {v4}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 2570
    .local v2, "id":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 2571
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "All objects must exist on the server"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2574
    :cond_2
    invoke-virtual {v4}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2576
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "object":Lcom/parse/ParseObject;, "TT;"
    :cond_3
    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v5

    .line 2577
    .local v5, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v6, "objectId"

    invoke-virtual {v5, v6, v3}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 2578
    new-instance v6, Lcom/parse/ParseObject$45;

    invoke-direct {v6, v5, p1}, Lcom/parse/ParseObject$45;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-virtual {p2, v6}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/ParseObject$44;

    invoke-direct {v7, p0}, Lcom/parse/ParseObject$44;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    goto :goto_0
.end method

.method public static fetchAllIfNeeded(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2541
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static fetchAllIfNeededAsync(Ljava/util/List;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 8
    .param p1, "user"    # Lcom/parse/ParseUser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2461
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2462
    .local v3, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 2463
    .local v0, "className":Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseObject;

    .line 2464
    .local v4, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v4}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2465
    if-eqz v0, :cond_1

    invoke-virtual {v4}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2466
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "All objects should have the same class"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2468
    :cond_1
    invoke-virtual {v4}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 2469
    invoke-virtual {v4}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 2470
    .local v2, "id":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 2471
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2476
    .end local v2    # "id":Ljava/lang/String;
    .end local v4    # "object":Lcom/parse/ParseObject;, "TT;"
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 2477
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    .line 2482
    :goto_1
    return-object v6

    .line 2480
    :cond_3
    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v5

    .line 2481
    .local v5, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const-string v6, "objectId"

    invoke-virtual {v5, v6, v3}, Lcom/parse/ParseQuery;->whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;

    .line 2482
    new-instance v6, Lcom/parse/ParseObject$42;

    invoke-direct {v6, v5, p1}, Lcom/parse/ParseObject$42;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;)V

    invoke-virtual {p2, v6}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/ParseObject$41;

    invoke-direct {v7, p0}, Lcom/parse/ParseObject$41;-><init>(Ljava/util/List;)V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    goto :goto_1
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2521
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 2522
    .local v0, "user":Lcom/parse/ParseUser;
    new-instance v1, Lcom/parse/ParseObject$43;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$43;-><init>(Ljava/util/List;Lcom/parse/ParseUser;)V

    invoke-static {p0, v1}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static fetchAllIfNeededInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2554
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllIfNeededInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2555
    return-void
.end method

.method public static fetchAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 2613
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 2614
    .local v0, "user":Lcom/parse/ParseUser;
    new-instance v1, Lcom/parse/ParseObject$46;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$46;-><init>(Ljava/util/List;Lcom/parse/ParseUser;)V

    invoke-static {p0, v1}, Lcom/parse/ParseObject;->enqueueForAll(Ljava/util/List;Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static fetchAllInBackground(Ljava/util/List;Lcom/parse/FindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 2645
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "callback":Lcom/parse/FindCallback;, "Lcom/parse/FindCallback<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->fetchAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 2646
    return-void
.end method

.method static fromDiskJSON(Lorg/json/JSONObject;)Lcom/parse/ParseObject;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 488
    const-string v3, "classname"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-object v1

    .line 492
    :cond_0
    const-string v3, "objectId"

    invoke-virtual {p0, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 494
    .local v2, "objectId":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 495
    .local v1, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v1, p0}, Lcom/parse/ParseObject;->mergeFromDiskJSON(Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseObject;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "defaultClassName"    # Ljava/lang/String;
    .param p2, "isComplete"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    .line 511
    new-instance v0, Lcom/parse/ParseDecoder;

    invoke-direct {v0}, Lcom/parse/ParseDecoder;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/parse/ParseObject;->fromJSON(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/parse/ParseDecoder;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method static fromJSON(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/parse/ParseDecoder;)Lcom/parse/ParseObject;
    .locals 5
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "defaultClassName"    # Ljava/lang/String;
    .param p2, "isComplete"    # Z
    .param p3, "decoder"    # Lcom/parse/ParseDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 528
    const-string v3, "objectId"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, "objectId":Ljava/lang/String;
    const-string v3, "classname"

    invoke-virtual {p0, v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .line 532
    .local v1, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-virtual {v1, p0, p3, p2}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 533
    return-object v1
.end method

.method private getACL(Z)Lcom/parse/ParseACL;
    .locals 6
    .param p1, "mayCopy"    # Z

    .prologue
    .line 3223
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 3224
    :try_start_0
    const-string v3, "ACL"

    invoke-direct {p0, v3}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3225
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 3226
    .local v1, "acl":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 3227
    const/4 v2, 0x0

    monitor-exit v4

    .line 3238
    .end local v1    # "acl":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 3229
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_0
    instance-of v3, v1, Lcom/parse/ParseACL;

    if-nez v3, :cond_1

    .line 3230
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "only ACLs can be stored in the ACL key"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3239
    .end local v1    # "acl":Ljava/lang/Object;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 3232
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    :try_start_1
    move-object v0, v1

    check-cast v0, Lcom/parse/ParseACL;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/parse/ParseACL;->isShared()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3233
    check-cast v1, Lcom/parse/ParseACL;

    .end local v1    # "acl":Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v2

    .line 3234
    .local v2, "copy":Lcom/parse/ParseACL;
    iget-object v3, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v5, "ACL"

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3235
    invoke-virtual {p0, v2}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 3236
    monitor-exit v4

    goto :goto_0

    .line 3238
    .end local v2    # "copy":Lcom/parse/ParseACL;
    .restart local v1    # "acl":Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/parse/ParseACL;

    .end local v1    # "acl":Ljava/lang/Object;
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    goto :goto_0
.end method

.method static getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    invoke-static {}, Lcom/parse/Parse;->checkInit()V

    .line 349
    sget-object v0, Lcom/parse/Parse;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static getClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3369
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    sget-object v2, Lcom/parse/ParseObject;->classNames:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3370
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3371
    const-class v2, Lcom/parse/ParseClassName;

    invoke-virtual {p0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseClassName;

    .line 3372
    .local v0, "info":Lcom/parse/ParseClassName;
    if-nez v0, :cond_0

    .line 3373
    const/4 v2, 0x0

    .line 3378
    .end local v0    # "info":Lcom/parse/ParseClassName;
    :goto_0
    return-object v2

    .line 3375
    .restart local v0    # "info":Lcom/parse/ParseClassName;
    :cond_0
    invoke-interface {v0}, Lcom/parse/ParseClassName;->value()Ljava/lang/String;

    move-result-object v1

    .line 3376
    sget-object v2, Lcom/parse/ParseObject;->classNames:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "info":Lcom/parse/ParseClassName;
    :cond_1
    move-object v2, v1

    .line 3378
    goto :goto_0
.end method

.method static getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 480
    invoke-static {p0, p1}, Lcom/parse/Parse;->getDiskObject(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 481
    .local v0, "object":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 482
    const/4 v1, 0x0

    .line 484
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/parse/ParseObject;->fromDiskJSON(Lorg/json/JSONObject;)Lcom/parse/ParseObject;

    move-result-object v1

    goto :goto_0
.end method

.method private handleDeleteResultAsync(Ljava/lang/Object;)Lbolts/Task;
    .locals 5
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1962
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1964
    .local v2, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 1965
    if-eqz p1, :cond_2

    .line 1966
    .local v1, "success":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1967
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/parse/ParseObject;->isDeleted:Z

    .line 1969
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1971
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v0

    .line 1972
    .local v0, "store":Lcom/parse/OfflineStore;
    if-eqz v0, :cond_1

    .line 1973
    new-instance v3, Lcom/parse/ParseObject$34;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$34;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1987
    :cond_1
    return-object v2

    .line 1965
    .end local v0    # "store":Lcom/parse/OfflineStore;
    .end local v1    # "success":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1969
    .restart local v1    # "success":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private hasDirtyChildren()Z
    .locals 4

    .prologue
    .line 946
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 950
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 951
    .local v0, "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 952
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 953
    .end local v0    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static declared-synchronized impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 5
    .param p0, "encoded"    # Ljava/lang/String;

    .prologue
    .line 414
    const-class v2, Lcom/parse/ParseObject;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/parse/ParseObject;->impreciseDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 418
    :goto_0
    monitor-exit v2

    return-object v1

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/text/ParseException;
    :try_start_1
    const-string v1, "com.parse.ParseObject"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/parse/Parse;->logE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 418
    const/4 v1, 0x0

    goto :goto_0

    .line 414
    .end local v0    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static isAccessible(Ljava/lang/reflect/Member;)Z
    .locals 2
    .param p0, "m"    # Ljava/lang/reflect/Member;

    .prologue
    .line 300
    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.parse"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDataAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3262
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3263
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 3265
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private mergeAfterSave(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Lcom/parse/ParseOperationSet;)V
    .locals 5
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;
    .param p3, "operationsBeforeSave"    # Lcom/parse/ParseOperationSet;

    .prologue
    .line 645
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 648
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, p3}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 650
    .local v1, "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    .line 651
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    .line 652
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseOperationSet;

    .line 654
    .local v0, "nextOperation":Lcom/parse/ParseOperationSet;
    if-nez p1, :cond_0

    .line 656
    invoke-virtual {v0, p3}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 664
    :goto_0
    monitor-exit v3

    .line 665
    return-void

    .line 659
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-direct {p0, p3, v2}, Lcom/parse/ParseObject;->applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V

    .line 660
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 661
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 662
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    goto :goto_0

    .line 664
    .end local v0    # "nextOperation":Lcom/parse/ParseOperationSet;
    .end local v1    # "opIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/parse/ParseOperationSet;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static migrateFromDiskToLDS(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "pinName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 423
    sget-object v1, Lcom/parse/Parse;->applicationContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/parse/ParseObject;->getFromDisk(Landroid/content/Context;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v0

    .line 424
    .local v0, "disk":Lcom/parse/ParseObject;
    if-nez v0, :cond_0

    .line 425
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 428
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$4;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseObject$4;-><init>(Ljava/lang/String;Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method public static pinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3535
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3536
    return-void
.end method

.method public static pinAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3592
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3593
    return-void
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3460
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "includeAllChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3465
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3466
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3471
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 3472
    .local v2, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 3473
    .local v1, "object":Lcom/parse/ParseObject;
    new-instance v3, Lcom/parse/ParseObject$47;

    invoke-direct {v3, v1}, Lcom/parse/ParseObject$47;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 3503
    goto :goto_0

    .line 3505
    .end local v1    # "object":Lcom/parse/ParseObject;
    :cond_1
    new-instance v3, Lcom/parse/ParseObject$48;

    invoke-direct {v3, p0, p1, p2}, Lcom/parse/ParseObject$48;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    return-object v3
.end method

.method public static pinAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3574
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static pinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3439
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3440
    return-void
.end method

.method public static pinAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3555
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3556
    return-void
.end method

.method private rebuildEstimatedData()V
    .locals 5

    .prologue
    .line 2679
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 2680
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 2681
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    iget-object v4, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v2, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2682
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseOperationSet;

    .line 2683
    .local v1, "operations":Lcom/parse/ParseOperationSet;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-direct {p0, v1, v2}, Lcom/parse/ParseObject;->applyOperations(Lcom/parse/ParseOperationSet;Ljava/util/Map;)V

    goto :goto_0

    .line 2685
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "operations":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2686
    return-void
.end method

.method static registerParseSubclasses()V
    .locals 1

    .prologue
    .line 3404
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3405
    const-class v0, Lcom/parse/ParseRole;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3406
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3407
    const-class v0, Lcom/parse/ParseSession;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3409
    const-class v0, Lcom/parse/ParsePin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3410
    const-class v0, Lcom/parse/EventuallyPin;

    invoke-static {v0}, Lcom/parse/ParseObject;->registerSubclass(Ljava/lang/Class;)V

    .line 3411
    return-void
.end method

.method public static registerSubclass(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 314
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 316
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No ParseClassName annoation provided on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 318
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v3, v3

    if-lez v3, :cond_1

    .line 320
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-static {v3}, Lcom/parse/ParseObject;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 321
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default constructor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not accessible."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No default constructor provided for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 328
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :cond_1
    sget-object v3, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 329
    .local v2, "oldValue":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/parse/ParseObject;>;"
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 341
    :cond_2
    :goto_0
    return-void

    .line 333
    :cond_3
    sget-object v3, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 335
    const-class v3, Lcom/parse/ParseUser;

    invoke-static {v3}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 336
    invoke-static {}, Lcom/parse/ParseUser;->clearCurrentUserFromMemory()V

    goto :goto_0

    .line 337
    :cond_4
    const-class v3, Lcom/parse/ParseInstallation;

    invoke-static {v3}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 338
    invoke-static {}, Lcom/parse/ParseInstallation;->clearCurrentInstallationFromMemory()V

    goto :goto_0
.end method

.method public static saveAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2430
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 2431
    return-void
.end method

.method public static saveAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2456
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseObject;->deepSaveAsync(Ljava/lang/Object;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static saveAllInBackground(Ljava/util/List;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/SaveCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2443
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0}, Lcom/parse/ParseObject;->saveAllInBackground(Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2444
    return-void
.end method

.method private setObjectIdInternal(Ljava/lang/String;)V
    .locals 6
    .param p1, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 1116
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1117
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 1120
    .local v0, "oldObjectId":Ljava/lang/String;
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v1

    .line 1121
    .local v1, "store":Lcom/parse/OfflineStore;
    if-eqz v1, :cond_0

    .line 1122
    invoke-virtual {v1, p0, v0, p1}, Lcom/parse/OfflineStore;->updateObjectId(Lcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_0
    iput-object p1, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 1126
    iget-object v2, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1127
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v2

    iget-object v4, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    iget-object v5, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lcom/parse/LocalIdManager;->setObjectId(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1130
    :cond_1
    monitor-exit v3

    .line 1131
    return-void

    .line 1130
    .end local v0    # "oldObjectId":Ljava/lang/String;
    .end local v1    # "store":Lcom/parse/OfflineStore;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static unpinAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3782
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3783
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3745
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3746
    return-void
.end method

.method public static unpinAll(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3650
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3651
    return-void
.end method

.method public static unpinAll(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3696
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3697
    return-void
.end method

.method public static unpinAllInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3770
    const-string v0, "_default"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3724
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3725
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3728
    :cond_0
    if-nez p0, :cond_1

    .line 3729
    const-string p0, "_default"

    .line 3731
    :cond_1
    invoke-static {p0}, Lcom/parse/ParsePin;->unpinAllObjectsAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3626
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3627
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3630
    :cond_0
    if-nez p0, :cond_1

    .line 3631
    const-string p0, "_default"

    .line 3633
    :cond_1
    invoke-static {p0, p1}, Lcom/parse/ParsePin;->unpinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Ljava/util/List;)Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3681
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static unpinAllInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 3758
    invoke-static {}, Lcom/parse/ParseObject;->unpinAllInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3759
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 3710
    invoke-static {p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3711
    return-void
.end method

.method public static unpinAllInBackground(Ljava/lang/String;Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3609
    .local p1, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {p0, p1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3610
    return-void
.end method

.method public static unpinAllInBackground(Ljava/util/List;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/parse/DeleteCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3666
    .local p0, "objects":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const-string v0, "_default"

    invoke-static {v0, p0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3667
    return-void
.end method

.method static unregisterSubclass(Ljava/lang/String;)V
    .locals 1
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 344
    sget-object v0, Lcom/parse/ParseObject;->objectTypes:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2786
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAll(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2787
    return-void
.end method

.method public addAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2799
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddOperation;-><init>(Ljava/util/Collection;)V

    .line 2800
    .local v0, "operation":Lcom/parse/ParseAddOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2801
    return-void
.end method

.method public addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2827
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lcom/parse/ParseAddUniqueOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseAddUniqueOperation;-><init>(Ljava/util/Collection;)V

    .line 2828
    .local v0, "operation":Lcom/parse/ParseAddUniqueOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2829
    return-void
.end method

.method addToHashedObjects(Ljava/lang/Object;)V
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 460
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    new-instance v3, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v3, p1}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :try_start_1
    monitor-exit v2

    .line 467
    return-void

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Couldn\'t serialize container value to JSON."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 466
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addUnique(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2813
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->addAllUnique(Ljava/lang/String;Ljava/util/Collection;)V

    .line 2814
    return-void
.end method

.method checkForChangesToMutableContainers()V
    .locals 5

    .prologue
    .line 1065
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1066
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1067
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/parse/ParseObject;->checkForChangesToMutableContainer(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1070
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1069
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 1070
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2890
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 2891
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 2892
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method copyChangesFrom(Lcom/parse/ParseObject;)V
    .locals 5
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 590
    iget-object v4, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v4

    .line 591
    :try_start_0
    iget-object v3, p1, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseOperationSet;

    .line 592
    .local v2, "operations":Lcom/parse/ParseOperationSet;
    invoke-virtual {v2}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 593
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseFieldOperation;

    invoke-virtual {p0, v1, v3}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    goto :goto_0

    .line 595
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "operations":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "operations":Lcom/parse/ParseOperationSet;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    return-void
.end method

.method currentSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 5
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .param p2, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;
    .param p3, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1135
    iget-object v3, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1140
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1144
    .local v1, "objectJSON":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1145
    iget-object v2, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-static {v2, v1, p3}, Lcom/parse/ParseRESTObjectCommand;->createObjectCommand(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1150
    .local v0, "command":Lcom/parse/ParseRESTObjectCommand;
    :goto_0
    invoke-virtual {v0}, Lcom/parse/ParseRESTObjectCommand;->enableRetrying()V

    .line 1151
    monitor-exit v3

    return-object v0

    .line 1147
    .end local v0    # "command":Lcom/parse/ParseRESTObjectCommand;
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    iget-object v4, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-static {v2, v4, v1, p3}, Lcom/parse/ParseRESTObjectCommand;->updateObjectCommand(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .restart local v0    # "command":Lcom/parse/ParseRESTObjectCommand;
    goto :goto_0

    .line 1152
    .end local v0    # "command":Lcom/parse/ParseRESTObjectCommand;
    .end local v1    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public final delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 2012
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 2013
    return-void
.end method

.method deleteAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p1, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1958
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->currentDeleteCommand(Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseRESTObjectCommand;->executeAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final deleteEventually()Lbolts/Task;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1643
    iget-object v8, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v8

    .line 1644
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 1645
    iget v7, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1647
    const/4 v2, 0x0

    .line 1648
    .local v2, "localId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1649
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v2

    .line 1653
    :cond_0
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v5

    .line 1654
    .local v5, "store":Lcom/parse/OfflineStore;
    if-eqz v5, :cond_1

    .line 1655
    invoke-virtual {v5, p0}, Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v6

    .line 1661
    .local v6, "updateDataTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v4

    .line 1663
    .local v4, "sessionToken":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/parse/ParseObject;->currentDeleteCommand(Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1664
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0, v2}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    .line 1666
    new-instance v7, Lcom/parse/ParseObject$18;

    invoke-direct {v7, p0, v0}, Lcom/parse/ParseObject$18;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseRESTCommand;)V

    invoke-virtual {v6, v7}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    .line 1674
    .local v3, "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1677
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1679
    invoke-virtual {v3}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    .line 1689
    .local v1, "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :goto_1
    return-object v1

    .line 1657
    .end local v0    # "command":Lcom/parse/ParseRESTCommand;
    .end local v1    # "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v3    # "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    .end local v4    # "sessionToken":Ljava/lang/String;
    .end local v6    # "updateDataTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_1
    const/4 v7, 0x0

    :try_start_1
    invoke-static {v7}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v6

    .restart local v6    # "updateDataTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 1674
    .end local v2    # "localId":Ljava/lang/String;
    .end local v5    # "store":Lcom/parse/OfflineStore;
    .end local v6    # "updateDataTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 1681
    .restart local v0    # "command":Lcom/parse/ParseRESTCommand;
    .restart local v2    # "localId":Ljava/lang/String;
    .restart local v3    # "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    .restart local v4    # "sessionToken":Ljava/lang/String;
    .restart local v5    # "store":Lcom/parse/OfflineStore;
    .restart local v6    # "updateDataTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_2
    new-instance v7, Lcom/parse/ParseObject$19;

    invoke-direct {v7, p0}, Lcom/parse/ParseObject$19;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v3, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    .restart local v1    # "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_1
.end method

.method public final deleteEventually(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteEventually()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1623
    return-void
.end method

.method public final deleteInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$35;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$35;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final deleteInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 2023
    invoke-virtual {p0}, Lcom/parse/ParseObject;->deleteInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 2024
    return-void
.end method

.method public fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1812
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method fetchAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1817
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1819
    .local v0, "sessionToken":Ljava/lang/String;
    new-instance v1, Lcom/parse/ParseObject$29;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseObject$29;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-static {v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v1

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$28;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$28;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$27;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$27;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$26;

    invoke-direct {v2, p0}, Lcom/parse/ParseObject$26;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public fetchFromLocalDatastore()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3816
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3817
    return-void
.end method

.method fetchFromLocalDatastoreAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3792
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3793
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3796
    :cond_0
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public fetchFromLocalDatastoreInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 3805
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 3806
    return-void
.end method

.method public fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1901
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public final fetchIfNeededInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1884
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1885
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1886
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1888
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1889
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final fetchIfNeededInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1913
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchIfNeededInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1914
    return-void
.end method

.method public final fetchInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$30;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$30;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final fetchInBackground(Lcom/parse/GetCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1873
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1874
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3310
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 3311
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3312
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3314
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/parse/ParseACL;

    if-eqz v4, :cond_0

    const-string v4, "ACL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3315
    move-object v0, v3

    check-cast v0, Lcom/parse/ParseACL;

    move-object v1, v0

    .line 3316
    .local v1, "acl":Lcom/parse/ParseACL;
    invoke-virtual {v1}, Lcom/parse/ParseACL;->isShared()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3317
    invoke-virtual {v1}, Lcom/parse/ParseACL;->copy()Lcom/parse/ParseACL;

    move-result-object v2

    .line 3318
    .local v2, "copy":Lcom/parse/ParseACL;
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const-string v6, "ACL"

    invoke-interface {v4, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3319
    invoke-virtual {p0, v2}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 3320
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getACL()Lcom/parse/ParseACL;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/Object;
    monitor-exit v5

    .line 3330
    .end local v1    # "acl":Lcom/parse/ParseACL;
    .end local v2    # "copy":Lcom/parse/ParseACL;
    :goto_0
    return-object v3

    .line 3326
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v4, v3, Lcom/parse/ParseRelation;

    if-eqz v4, :cond_1

    .line 3327
    move-object v0, v3

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v4, v0

    invoke-virtual {v4, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3330
    :cond_1
    monitor-exit v5

    goto :goto_0

    .line 3331
    .end local v3    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getACL()Lcom/parse/ParseACL;
    .locals 1

    .prologue
    .line 3219
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseObject;->getACL(Z)Lcom/parse/ParseACL;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3116
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3117
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3118
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3119
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 3120
    const/4 v1, 0x0

    monitor-exit v2

    .line 3122
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    .end local v0    # "value":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 3123
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBytes(Ljava/lang/String;)[B
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2921
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2922
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2923
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2924
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, [B

    if-nez v1, :cond_0

    .line 2925
    const/4 v0, 0x0

    monitor-exit v2

    .line 2928
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, [B

    .end local v0    # "value":Ljava/lang/Object;
    check-cast v0, [B

    monitor-exit v2

    goto :goto_0

    .line 2929
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 542
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 543
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 2

    .prologue
    .line 568
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    monitor-exit v1

    return-object v0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3134
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3135
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3136
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3137
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Date;

    if-nez v1, :cond_0

    .line 3138
    const/4 v0, 0x0

    monitor-exit v2

    .line 3140
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/util/Date;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3141
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3086
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3087
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3088
    const-wide/16 v2, 0x0

    .line 3090
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3071
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3072
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3073
    const/4 v1, 0x0

    .line 3075
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2962
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2963
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2964
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2966
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 2967
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->get()Lcom/parse/PointerOrLocalIdEncodingStrategy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 2968
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2971
    :cond_0
    instance-of v1, v0, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    .line 2972
    const/4 v0, 0x0

    monitor-exit v2

    .line 2974
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 2975
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3046
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3047
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3048
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3050
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 3051
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->get()Lcom/parse/PointerOrLocalIdEncodingStrategy;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v0

    .line 3052
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3055
    :cond_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    .line 3056
    const/4 v0, 0x0

    monitor-exit v2

    .line 3059
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3060
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2988
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 2989
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2991
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 2992
    new-instance v1, Lcom/parse/ParseDecoder;

    invoke-direct {v1}, Lcom/parse/ParseDecoder;-><init>()V

    .line 2993
    .local v1, "decoder":Lcom/parse/ParseDecoder;
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lcom/parse/ParseDecoder;->convertJSONArrayToList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    .line 2994
    .local v3, "value":Ljava/util/List;
    invoke-virtual {p0, p1, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2997
    .end local v1    # "decoder":Lcom/parse/ParseDecoder;
    .end local v3    # "value":Ljava/util/List;
    :cond_0
    instance-of v4, v3, Ljava/util/List;

    if-nez v4, :cond_1

    .line 2998
    const/4 v2, 0x0

    monitor-exit v5

    .line 3002
    :goto_0
    return-object v2

    .line 3001
    :cond_1
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 3002
    .local v2, "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    monitor-exit v5

    goto :goto_0

    .line 3003
    .end local v2    # "returnValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3101
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->getNumber(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    .line 3102
    .local v0, "number":Ljava/lang/Number;
    if-nez v0, :cond_0

    .line 3103
    const-wide/16 v2, 0x0

    .line 3105
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 3016
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 3017
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3019
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 3020
    new-instance v1, Lcom/parse/ParseDecoder;

    invoke-direct {v1}, Lcom/parse/ParseDecoder;-><init>()V

    .line 3021
    .local v1, "decoder":Lcom/parse/ParseDecoder;
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Lcom/parse/ParseDecoder;->convertJSONObjectToMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 3022
    .local v3, "value":Ljava/util/Map;
    invoke-virtual {p0, p1, v3}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3025
    .end local v1    # "decoder":Lcom/parse/ParseDecoder;
    .end local v3    # "value":Ljava/util/Map;
    :cond_0
    instance-of v4, v3, Ljava/util/Map;

    if-nez v4, :cond_1

    .line 3026
    const/4 v2, 0x0

    monitor-exit v5

    .line 3030
    :goto_0
    return-object v2

    .line 3029
    :cond_1
    move-object v0, v3

    check-cast v0, Ljava/util/Map;

    move-object v2, v0

    .line 3030
    .local v2, "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    monitor-exit v5

    goto :goto_0

    .line 3031
    .end local v2    # "returnValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TV;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getNumber(Ljava/lang/String;)Ljava/lang/Number;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2940
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2941
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2942
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2943
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Number;

    if-nez v1, :cond_0

    .line 2944
    const/4 v0, 0x0

    monitor-exit v2

    .line 2946
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/Number;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 2947
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1082
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getOrCreateLocalId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1104
    iget-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1105
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempted to get a localId for an object with an objectId."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1108
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/parse/LocalIdManager;->getDefaultInstance()Lcom/parse/LocalIdManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/LocalIdManager;->createLocalId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/parse/ParseObject;->localId:Ljava/lang/String;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getParseFile(Ljava/lang/String;)Lcom/parse/ParseFile;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3190
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3191
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseFile;

    if-nez v1, :cond_0

    .line 3192
    const/4 v0, 0x0

    .line 3194
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseFile;

    goto :goto_0
.end method

.method public getParseGeoPoint(Ljava/lang/String;)Lcom/parse/ParseGeoPoint;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3205
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 3206
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 3207
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3208
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseGeoPoint;

    if-nez v1, :cond_0

    .line 3209
    const/4 v0, 0x0

    monitor-exit v2

    .line 3211
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseGeoPoint;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 3212
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getParseObject(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3155
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3156
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseObject;

    if-nez v1, :cond_0

    .line 3157
    const/4 v0, 0x0

    .line 3159
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseObject;

    goto :goto_0
.end method

.method public getParseUser(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 3173
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 3174
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/parse/ParseUser;

    if-nez v1, :cond_0

    .line 3175
    const/4 v0, 0x0

    .line 3177
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/parse/ParseUser;

    goto :goto_0
.end method

.method public getRelation(Ljava/lang/String;)Lcom/parse/ParseRelation;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRelation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 3277
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 3279
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 3280
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Lcom/parse/ParseRelation;

    if-eqz v4, :cond_0

    .line 3282
    move-object v0, v3

    check-cast v0, Lcom/parse/ParseRelation;

    move-object v1, v0

    .line 3283
    .local v1, "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    invoke-virtual {v1, p0, p1}, Lcom/parse/ParseRelation;->ensureParentAndKey(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3284
    monitor-exit v5

    move-object v2, v1

    .line 3296
    .end local v1    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .local v2, "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    :goto_0
    return-object v2

    .line 3286
    .end local v2    # "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    :cond_0
    new-instance v1, Lcom/parse/ParseRelation;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseRelation;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    .line 3295
    .restart local v1    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3296
    monitor-exit v5

    move-object v2, v1

    .restart local v2    # "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    goto :goto_0

    .line 3298
    .end local v1    # "relation":Lcom/parse/ParseRelation;, "Lcom/parse/ParseRelation<TT;>;"
    .end local v2    # "relation":Ljava/lang/Object;, "Lcom/parse/ParseRelation<TT;>;"
    .end local v3    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2903
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2904
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkGetAccess(Ljava/lang/String;)V

    .line 2905
    iget-object v1, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2906
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2907
    const/4 v0, 0x0

    monitor-exit v2

    .line 2909
    .end local v0    # "value":Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_0
    check-cast v0, Ljava/lang/String;

    .end local v0    # "value":Ljava/lang/Object;
    monitor-exit v2

    goto :goto_0

    .line 2910
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUpdatedAt()Ljava/util/Date;
    .locals 2

    .prologue
    .line 555
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    monitor-exit v1

    return-object v0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method handleDeleteEventuallyResultAsync(Ljava/lang/Object;)Lbolts/Task;
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1693
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1694
    :try_start_0
    iget v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    .line 1695
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1696
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->handleDeleteResultAsync(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1698
    .local v0, "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parse/ParseObject$20;

    invoke-direct {v1, p0, p1}, Lcom/parse/ParseObject$20;-><init>(Lcom/parse/ParseObject;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 1695
    .end local v0    # "handleDeleteResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method handleFetchResultAsync(Lorg/json/JSONObject;)Lbolts/Task;
    .locals 5
    .param p1, "result"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1712
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1714
    .local v2, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v0

    .line 1720
    .local v0, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v1

    .line 1721
    .local v1, "store":Lcom/parse/OfflineStore;
    if-eqz v1, :cond_0

    .line 1722
    new-instance v3, Lcom/parse/ParseObject$22;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseObject$22;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/ParseObject$21;

    invoke-direct {v4, p0}, Lcom/parse/ParseObject$21;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1740
    :cond_0
    new-instance v3, Lcom/parse/ParseObject$23;

    invoke-direct {v3, p0, v0, p1}, Lcom/parse/ParseObject$23;-><init>(Lcom/parse/ParseObject;Ljava/util/Map;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1753
    if-eqz v1, :cond_1

    .line 1754
    new-instance v3, Lcom/parse/ParseObject$25;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseObject$25;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/ParseObject$24;

    invoke-direct {v4, p0}, Lcom/parse/ParseObject$24;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1772
    :cond_1
    return-object v2
.end method

.method handleSaveEventuallyResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "operationSet"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1584
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    .line 1586
    .local v0, "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v1, Lcom/parse/ParseObject$17;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$17;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method handleSaveResultAsync(Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 4
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "operationsBeforeSave"    # Lcom/parse/ParseOperationSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Void;

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1276
    .local v2, "task":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    invoke-direct {p0}, Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;

    move-result-object v0

    .line 1282
    .local v0, "fetchedObjects":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/parse/ParseObject;>;"
    invoke-static {}, Lcom/parse/OfflineStore;->getCurrent()Lcom/parse/OfflineStore;

    move-result-object v1

    .line 1283
    .local v1, "store":Lcom/parse/OfflineStore;
    if-eqz v1, :cond_0

    .line 1284
    new-instance v3, Lcom/parse/ParseObject$6;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseObject$6;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1293
    :cond_0
    new-instance v3, Lcom/parse/ParseObject$7;

    invoke-direct {v3, p0, v0, p1, p2}, Lcom/parse/ParseObject$7;-><init>(Lcom/parse/ParseObject;Ljava/util/Map;Lorg/json/JSONObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1304
    if-eqz v1, :cond_1

    .line 1305
    new-instance v3, Lcom/parse/ParseObject$8;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseObject$8;-><init>(Lcom/parse/ParseObject;Lcom/parse/OfflineStore;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1313
    :cond_1
    new-instance v3, Lcom/parse/ParseObject$9;

    invoke-direct {v3, p0}, Lcom/parse/ParseObject$9;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1321
    return-object v2
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2751
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method hasChanges()Z
    .locals 2

    .prologue
    .line 974
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 975
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method hasOutstandingOperations()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 984
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 986
    :try_start_0
    iget-object v2, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v0, :cond_0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 987
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public hasSameId(Lcom/parse/ParseObject;)Z
    .locals 3
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 3342
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3343
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public increment(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2761
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V

    .line 2762
    return-void
.end method

.method public increment(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "amount"    # Ljava/lang/Number;

    .prologue
    .line 2773
    new-instance v0, Lcom/parse/ParseIncrementOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseIncrementOperation;-><init>(Ljava/lang/Number;)V

    .line 2774
    .local v0, "operation":Lcom/parse/ParseIncrementOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2775
    return-void
.end method

.method public isDataAvailable()Z
    .locals 2

    .prologue
    .line 3256
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3257
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    monitor-exit v1

    return v0

    .line 3258
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 963
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->isDirty(Z)Z

    move-result v0

    return v0
.end method

.method public isDirty(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 998
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 999
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseOperationSet;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isDirty(Z)Z
    .locals 2
    .param p1, "considerChildren"    # Z

    .prologue
    .line 967
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 968
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 969
    iget-boolean v0, p0, Lcom/parse/ParseObject;->isDeleted:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/parse/ParseObject;->hasDirtyChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 970
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2879
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 580
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mergeAfterFetch(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V
    .locals 2
    .param p1, "result"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;
    .param p3, "completeData"    # Z

    .prologue
    .line 636
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 637
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/parse/ParseObject;->mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 638
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 639
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 640
    monitor-exit v1

    .line 641
    return-void

    .line 640
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method mergeFromDiskJSON(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 693
    iget-object v9, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v9

    .line 697
    :try_start_0
    const-string v8, "id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 698
    iget-object v8, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-nez v8, :cond_0

    .line 699
    const-string v8, "id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 702
    :cond_0
    const-string v8, "created_at"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 703
    const-string v8, "created_at"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "createdAtString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 705
    invoke-static {v0}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 708
    .end local v0    # "createdAtString":Ljava/lang/String;
    :cond_1
    const-string v8, "updated_at"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 709
    const-string v8, "updated_at"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 710
    .local v7, "updatedAtString":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 711
    invoke-static {v7}, Lcom/parse/ParseObject;->impreciseParseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 714
    .end local v7    # "updatedAtString":Ljava/lang/String;
    :cond_2
    const-string v8, "pointers"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 715
    const-string v8, "pointers"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 716
    .local v5, "newPointers":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 717
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 718
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 719
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 720
    .local v6, "pointerArray":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/parse/ParseObject;->createWithoutData(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v10

    invoke-interface {v8, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 724
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "newPointers":Lorg/json/JSONObject;
    .end local v6    # "pointerArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v2

    .line 725
    .local v2, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 729
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 727
    :cond_3
    :try_start_2
    const-string v8, "data"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 728
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v8, Lcom/parse/ParseDecoder;

    invoke-direct {v8}, Lcom/parse/ParseDecoder;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {p0, v1, v8, v10}, Lcom/parse/ParseObject;->mergeAfterFetch(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V

    .line 729
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 730
    return-void
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 3
    .param p1, "other"    # Lcom/parse/ParseObject;

    .prologue
    .line 599
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    if-ne p0, p1, :cond_0

    .line 602
    :try_start_0
    monitor-exit v1

    .line 621
    :goto_0
    return-void

    .line 605
    :cond_0
    iget-object v0, p1, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    .line 606
    iget-object v0, p1, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    .line 607
    iget-object v0, p1, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    iput-object v0, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    .line 608
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 609
    iget-object v0, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    iget-object v2, p1, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 612
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 613
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Attempt to mergeFromObject during a save."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 615
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 616
    iget-object v0, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v2, Lcom/parse/ParseOperationSet;

    invoke-direct {v2}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 619
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 620
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method mergeFromServer(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;Z)V
    .locals 9
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;
    .param p3, "completeData"    # Z

    .prologue
    const/4 v6, 0x1

    .line 734
    iget-object v7, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 736
    :try_start_0
    iget-boolean v8, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    if-nez v8, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    :goto_0
    iput-boolean v6, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 739
    .local v4, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 740
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 741
    .local v3, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string v6, "objectId"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 744
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 778
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v2

    .line 779
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 783
    .end local v2    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 736
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 747
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    :try_start_3
    const-string v6, "createdAt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 748
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    goto :goto_1

    .line 751
    :cond_4
    const-string v6, "updatedAt"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 752
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    iput-object v6, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    goto :goto_1

    .line 755
    :cond_5
    const-string v6, "ACL"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 756
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;

    move-result-object v0

    .line 757
    .local v0, "acl":Lcom/parse/ParseACL;
    iget-object v6, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const-string v8, "ACL"

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    goto :goto_1

    .line 761
    .end local v0    # "acl":Lcom/parse/ParseACL;
    :cond_6
    const-string v6, "__type"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "className"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 765
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 766
    .local v5, "value":Ljava/lang/Object;
    invoke-virtual {p2, v5}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 768
    .local v1, "decodedObject":Ljava/lang/Object;
    invoke-static {v1}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 769
    invoke-virtual {p0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 771
    :cond_7
    iget-object v6, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 774
    .end local v1    # "decodedObject":Ljava/lang/Object;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_8
    iget-object v6, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v6, :cond_9

    .line 775
    iget-object v6, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    iput-object v6, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 781
    :cond_9
    :try_start_4
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 782
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 783
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 784
    return-void
.end method

.method mergeREST(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 18
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "decoder"    # Lcom/parse/ParseDecoder;

    .prologue
    .line 840
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 842
    .local v13, "saveEventuallyOperationSets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseOperationSet;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 844
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 845
    .local v8, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 846
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 847
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v15, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    const-string v15, "__type"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    const-string v15, "className"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 852
    const-string v15, "objectId"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 853
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 932
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :catch_0
    move-exception v4

    .line 933
    .local v4, "e":Lorg/json/JSONException;
    :try_start_1
    new-instance v15, Ljava/lang/RuntimeException;

    invoke-direct {v15, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 937
    .end local v4    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v15

    .line 856
    .restart local v7    # "key":Ljava/lang/String;
    .restart local v8    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :try_start_2
    const-string v15, "createdAt"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 857
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    goto :goto_0

    .line 860
    :cond_2
    const-string v15, "updatedAt"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 861
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/parse/Parse;->stringToDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    goto :goto_0

    .line 864
    :cond_3
    const-string v15, "isDeletingEventually"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 865
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/parse/ParseObject;->isDeletingEventually:I

    goto/16 :goto_0

    .line 868
    :cond_4
    const-string v15, "ACL"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 869
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-static {v15, v0}, Lcom/parse/ParseACL;->createACLFromJSONObject(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseACL;

    move-result-object v1

    .line 870
    .local v1, "acl":Lcom/parse/ParseACL;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    const-string v17, "ACL"

    move-object/from16 v0, v17

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 874
    .end local v1    # "acl":Lcom/parse/ParseACL;
    :cond_5
    const-string v15, "__complete"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 876
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    if-nez v15, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    :cond_6
    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    goto/16 :goto_0

    :cond_7
    const/4 v15, 0x0

    goto :goto_1

    .line 879
    :cond_8
    const-string v15, "__operations"

    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    .line 880
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v9

    .line 882
    .local v9, "newerOperations":Lcom/parse/ParseOperationSet;
    const-string v15, "__operations"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 883
    .local v12, "operations":Lorg/json/JSONArray;
    if-eqz v12, :cond_d

    .line 884
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->clear()V

    .line 889
    const/4 v2, 0x0

    .line 890
    .local v2, "current":Lcom/parse/ParseOperationSet;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v5, v15, :cond_c

    .line 891
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 892
    .local v11, "operationSetJSON":Lorg/json/JSONObject;
    move-object/from16 v0, p2

    invoke-static {v11, v0}, Lcom/parse/ParseOperationSet;->fromRest(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseOperationSet;

    move-result-object v10

    .line 894
    .local v10, "operationSet":Lcom/parse/ParseOperationSet;
    invoke-virtual {v10}, Lcom/parse/ParseOperationSet;->isSaveEventually()Z

    move-result v15

    if-eqz v15, :cond_a

    .line 895
    if-eqz v2, :cond_9

    .line 896
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v15, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 897
    const/4 v2, 0x0

    .line 899
    :cond_9
    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 900
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v15, v10}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 890
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 904
    :cond_a
    if-eqz v2, :cond_b

    .line 905
    invoke-virtual {v10, v2}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    .line 907
    :cond_b
    move-object v2, v10

    goto :goto_3

    .line 909
    .end local v10    # "operationSet":Lcom/parse/ParseOperationSet;
    .end local v11    # "operationSetJSON":Lorg/json/JSONObject;
    :cond_c
    if-eqz v2, :cond_d

    .line 910
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v15, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 915
    .end local v2    # "current":Lcom/parse/ParseOperationSet;
    .end local v5    # "i":I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/parse/ParseOperationSet;->mergeFrom(Lcom/parse/ParseOperationSet;)V

    goto/16 :goto_0

    .line 920
    .end local v9    # "newerOperations":Lcom/parse/ParseOperationSet;
    .end local v12    # "operations":Lorg/json/JSONArray;
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 921
    .local v14, "value":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 923
    .local v3, "decodedObject":Ljava/lang/Object;
    invoke-static {v3}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 924
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/parse/ParseObject;->addToHashedObjects(Ljava/lang/Object;)V

    .line 926
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v15, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 929
    .end local v3    # "decodedObject":Ljava/lang/Object;
    .end local v7    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/Object;
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-nez v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v15, :cond_11

    .line 930
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 935
    :cond_11
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 936
    invoke-direct/range {p0 .. p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 937
    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 940
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/parse/ParseOperationSet;

    .line 941
    .restart local v10    # "operationSet":Lcom/parse/ParseOperationSet;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;

    goto :goto_4

    .line 943
    .end local v10    # "operationSet":Lcom/parse/ParseOperationSet;
    :cond_12
    return-void
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 3395
    const/4 v0, 0x1

    return v0
.end method

.method performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "operation"    # Lcom/parse/ParseFieldOperation;

    .prologue
    .line 2693
    iget-object v5, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 2694
    :try_start_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2695
    .local v3, "oldValue":Ljava/lang/Object;
    invoke-interface {p2, v3, p0, p1}, Lcom/parse/ParseFieldOperation;->apply(Ljava/lang/Object;Lcom/parse/ParseObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2696
    .local v1, "newValue":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 2697
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2702
    :goto_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseFieldOperation;

    .line 2703
    .local v2, "oldOperation":Lcom/parse/ParseFieldOperation;
    invoke-interface {p2, v2}, Lcom/parse/ParseFieldOperation;->mergeWithPrevious(Lcom/parse/ParseFieldOperation;)Lcom/parse/ParseFieldOperation;

    move-result-object v0

    .line 2704
    .local v0, "newOperation":Lcom/parse/ParseFieldOperation;
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/parse/ParseOperationSet;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2706
    invoke-direct {p0, v1}, Lcom/parse/ParseObject;->checkpointMutableContainer(Ljava/lang/Object;)V

    .line 2707
    iget-object v4, p0, Lcom/parse/ParseObject;->dataAvailability:Ljava/util/Map;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2708
    monitor-exit v5

    .line 2709
    return-void

    .line 2699
    .end local v0    # "newOperation":Lcom/parse/ParseFieldOperation;
    .end local v2    # "oldOperation":Lcom/parse/ParseFieldOperation;
    :cond_0
    iget-object v4, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2708
    .end local v1    # "newValue":Ljava/lang/Object;
    .end local v3    # "oldValue":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method performPut(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2728
    if-nez p1, :cond_0

    .line 2729
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2732
    :cond_0
    if-nez p2, :cond_1

    .line 2733
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2736
    :cond_1
    invoke-static {p2}, Lcom/parse/Parse;->isValidType(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type for value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2740
    :cond_2
    new-instance v0, Lcom/parse/ParseSetOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseSetOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2741
    return-void
.end method

.method performRemove(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2844
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 2845
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2847
    .local v0, "object":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 2848
    invoke-static {}, Lcom/parse/ParseDeleteOperation;->getInstance()Lcom/parse/ParseDeleteOperation;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2850
    :cond_0
    monitor-exit v2

    .line 2851
    return-void

    .line 2850
    .end local v0    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3921
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3922
    return-void
.end method

.method public pin(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3869
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3870
    return-void
.end method

.method public pinInBackground()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3904
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3849
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method pinInBackground(Ljava/lang/String;Z)Lbolts/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "includeAllChildren"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3853
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/parse/ParseObject;->pinAllInBackground(Ljava/lang/String;Ljava/util/List;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public pinInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 3887
    invoke-virtual {p0}, Lcom/parse/ParseObject;->pinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3888
    return-void
.end method

.method public pinInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 3833
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->pinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3834
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 2722
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 2724
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseObject;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2725
    return-void
.end method

.method public final refresh()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1786
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    .line 1787
    return-void
.end method

.method public final refreshInBackground(Lcom/parse/RefreshCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/RefreshCallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1800
    invoke-virtual {p0}, Lcom/parse/ParseObject;->fetchInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1801
    return-void
.end method

.method registerSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3350
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3351
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->subscribe(Lcom/parse/ParseCallback2;)V

    .line 3352
    monitor-exit v1

    .line 3353
    return-void

    .line 3352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2838
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 2840
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->performRemove(Ljava/lang/String;)V

    .line 2841
    return-void
.end method

.method public removeAll(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2865
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->checkKeyIsMutable(Ljava/lang/String;)V

    .line 2867
    new-instance v0, Lcom/parse/ParseRemoveOperation;

    invoke-direct {v0, p2}, Lcom/parse/ParseRemoveOperation;-><init>(Ljava/util/Collection;)V

    .line 2868
    .local v0, "operation":Lcom/parse/ParseRemoveOperation;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseObject;->performOperation(Ljava/lang/String;Lcom/parse/ParseFieldOperation;)V

    .line 2869
    return-void
.end method

.method revert()V
    .locals 2

    .prologue
    .line 628
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 629
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseOperationSet;->clear()V

    .line 630
    invoke-direct {p0}, Lcom/parse/ParseObject;->rebuildEstimatedData()V

    .line 631
    invoke-direct {p0}, Lcom/parse/ParseObject;->checkpointAllMutableContainers()V

    .line 632
    monitor-exit v1

    .line 633
    return-void

    .line 632
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final save()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 1345
    return-void
.end method

.method saveAsync(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "toAwait":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v3, 0x0

    .line 1364
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1365
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 1371
    :goto_0
    return-object v2

    .line 1368
    :cond_0
    new-instance v0, Lbolts/Capture;

    invoke-direct {v0}, Lbolts/Capture;-><init>()V

    .line 1369
    .local v0, "operations":Lbolts/Capture;, "Lbolts/Capture<Lcom/parse/ParseOperationSet;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 1371
    .local v1, "sessionToken":Ljava/lang/String;
    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$14;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$14;-><init>(Lcom/parse/ParseObject;Lbolts/Capture;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$13;

    invoke-direct {v3, p0, v1}, Lcom/parse/ParseObject$13;-><init>(Lcom/parse/ParseObject;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$12;

    invoke-direct {v3, p0, v0, v1}, Lcom/parse/ParseObject$12;-><init>(Lcom/parse/ParseObject;Lbolts/Capture;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/parse/ParseObject$11;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseObject$11;-><init>(Lcom/parse/ParseObject;Lbolts/Capture;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
.end method

.method saveAsync(Lcom/parse/ParseOperationSet;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "operationSet"    # Lcom/parse/ParseOperationSet;
    .param p2, "sessionToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseOperationSet;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1429
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2}, Lcom/parse/ParseObject;->currentSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    .line 1431
    .local v0, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public final saveEventually()Lbolts/Task;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 1481
    invoke-virtual {p0}, Lcom/parse/ParseObject;->isDirty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 1482
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v11

    invoke-virtual {v11}, Lcom/parse/ParseEventuallyQueue;->fakeObjectUpdate()V

    .line 1483
    invoke-static {v12}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    .line 1552
    :goto_0
    return-object v3

    .line 1490
    :cond_0
    iget-object v12, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v12

    .line 1491
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 1498
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1499
    .local v10, "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v11, p0, Lcom/parse/ParseObject;->estimatedData:Ljava/util/Map;

    const/4 v13, 0x0

    invoke-static {v11, v10, v13}, Lcom/parse/ParseObject;->collectDirtyChildren(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    .line 1501
    const/4 v5, 0x0

    .line 1502
    .local v5, "localId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_1

    .line 1503
    invoke-virtual {p0}, Lcom/parse/ParseObject;->getOrCreateLocalId()Ljava/lang/String;

    move-result-object v5

    .line 1506
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseObject;->startSave()Lcom/parse/ParseOperationSet;

    move-result-object v7

    .line 1507
    .local v7, "operationSet":Lcom/parse/ParseOperationSet;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Lcom/parse/ParseOperationSet;->setIsSaveEventually(Z)V

    .line 1509
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionToken()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 1511
    .local v9, "sessionToken":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/parse/PointerOrLocalIdEncodingStrategy;->get()Lcom/parse/PointerOrLocalIdEncodingStrategy;

    move-result-object v11

    invoke-virtual {p0, v7, v11, v9}, Lcom/parse/ParseObject;->currentSaveCommand(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v1

    .line 1515
    .local v1, "command":Lcom/parse/ParseRESTCommand;
    invoke-virtual {v1, v5}, Lcom/parse/ParseRESTCommand;->setLocalId(Ljava/lang/String;)V

    .line 1518
    invoke-virtual {v7}, Lcom/parse/ParseOperationSet;->getUUID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Lcom/parse/ParseRESTCommand;->setOperationSetUUID(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->retainLocalIds()V

    .line 1523
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseObject;

    .line 1524
    .local v6, "object":Lcom/parse/ParseObject;
    invoke-virtual {v6}, Lcom/parse/ParseObject;->saveEventually()Lbolts/Task;
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1526
    .end local v1    # "command":Lcom/parse/ParseRESTCommand;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "object":Lcom/parse/ParseObject;
    :catch_0
    move-exception v2

    .line 1527
    .local v2, "exception":Lcom/parse/ParseException;
    :try_start_2
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v13, "Unable to saveEventually."

    invoke-direct {v11, v13, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 1529
    .end local v2    # "exception":Lcom/parse/ParseException;
    .end local v5    # "localId":Ljava/lang/String;
    .end local v7    # "operationSet":Lcom/parse/ParseOperationSet;
    .end local v9    # "sessionToken":Ljava/lang/String;
    .end local v10    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .restart local v1    # "command":Lcom/parse/ParseRESTCommand;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "localId":Ljava/lang/String;
    .restart local v7    # "operationSet":Lcom/parse/ParseOperationSet;
    .restart local v9    # "sessionToken":Ljava/lang/String;
    .restart local v10    # "unsavedChildren":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :cond_2
    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1532
    invoke-static {}, Lcom/parse/Parse;->getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;

    move-result-object v0

    .line 1533
    .local v0, "cache":Lcom/parse/ParseEventuallyQueue;
    invoke-virtual {v0, v1, p0}, Lcom/parse/ParseEventuallyQueue;->enqueueEventuallyAsync(Lcom/parse/ParseNetworkCommand;Lcom/parse/ParseObject;)Lbolts/Task;

    move-result-object v8

    .line 1534
    .local v8, "runEventuallyTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Object;>;"
    invoke-direct {p0, v7}, Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)Lbolts/Task;

    .line 1537
    invoke-virtual {v1}, Lcom/parse/ParseRESTCommand;->releaseLocalIds()V

    .line 1540
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1542
    invoke-virtual {v8}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v3

    .local v3, "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 1544
    .end local v3    # "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    :cond_3
    new-instance v11, Lcom/parse/ParseObject$15;

    invoke-direct {v11, p0, v7}, Lcom/parse/ParseObject$15;-><init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V

    invoke-virtual {v8, v11}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    .restart local v3    # "handleSaveResultTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    goto/16 :goto_0
.end method

.method public final saveEventually(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 1462
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveEventually()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1463
    return-void
.end method

.method public final saveInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/parse/ParseObject;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseObject$10;

    invoke-direct {v1, p0}, Lcom/parse/ParseObject$10;-><init>(Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public final saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/SaveCallback;

    .prologue
    .line 1442
    invoke-virtual {p0}, Lcom/parse/ParseObject;->saveInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1443
    return-void
.end method

.method saveToDisk(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-static {}, Lcom/parse/OfflineStore;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ParseObject#saveToDisk is not allowed when OfflineStore is enabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_0
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 454
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/parse/PointerEncodingStrategy;->get()Lcom/parse/PointerEncodingStrategy;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/parse/ParseObject;->toJSONObjectForDataFile(ZLcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v0

    .line 455
    .local v0, "object":Lorg/json/JSONObject;
    invoke-static {p1, p2, v0}, Lcom/parse/Parse;->saveDiskObject(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 456
    monitor-exit v2

    .line 457
    return-void

    .line 456
    .end local v0    # "object":Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setACL(Lcom/parse/ParseACL;)V
    .locals 1
    .param p1, "acl"    # Lcom/parse/ParseACL;

    .prologue
    .line 3246
    const-string v0, "ACL"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3247
    return-void
.end method

.method setDefaultValues()V
    .locals 1

    .prologue
    .line 3385
    invoke-virtual {p0}, Lcom/parse/ParseObject;->needsDefaultACL()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3386
    invoke-static {}, Lcom/parse/ParseACL;->getDefaultACL()Lcom/parse/ParseACL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseObject;->setACL(Lcom/parse/ParseACL;)V

    .line 3388
    :cond_0
    return-void
.end method

.method public setObjectId(Ljava/lang/String;)V
    .locals 2
    .param p1, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 1092
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1093
    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/ParseObject;->setObjectIdInternal(Ljava/lang/String;)V

    .line 1094
    monitor-exit v1

    .line 1095
    return-void

    .line 1094
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method startSave()Lcom/parse/ParseOperationSet;
    .locals 4

    .prologue
    .line 1325
    iget-object v2, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1326
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseObject;->currentOperations()Lcom/parse/ParseOperationSet;

    move-result-object v0

    .line 1327
    .local v0, "currentOperations":Lcom/parse/ParseOperationSet;
    iget-object v1, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    new-instance v3, Lcom/parse/ParseOperationSet;

    invoke-direct {v3}, Lcom/parse/ParseOperationSet;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1328
    monitor-exit v2

    return-object v0

    .line 1329
    .end local v0    # "currentOperations":Lcom/parse/ParseOperationSet;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method toJSONObjectForDataFile(ZLcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 15
    .param p1, "includeOperations"    # Z
    .param p2, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;

    .prologue
    .line 1172
    iget-object v13, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v13

    .line 1173
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 1176
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1177
    .local v7, "objectJSON":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1181
    .local v1, "dataJSON":Lorg/json/JSONObject;
    :try_start_1
    iget-object v12, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1182
    .local v5, "key":Ljava/lang/String;
    iget-object v12, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1185
    .local v6, "object":Ljava/lang/Object;
    invoke-static {v6}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1186
    iget-object v12, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v12, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/parse/ParseJSONCacheItem;

    invoke-virtual {v12}, Lcom/parse/ParseJSONCacheItem;->getJSONObject()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1217
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 1218
    .local v2, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v12, Ljava/lang/RuntimeException;

    const-string v14, "could not serialize object to JSON"

    invoke-direct {v12, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1222
    .end local v1    # "dataJSON":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v7    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 1188
    .restart local v1    # "dataJSON":Lorg/json/JSONObject;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v6    # "object":Ljava/lang/Object;
    .restart local v7    # "objectJSON":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    move-object/from16 v0, p2

    invoke-static {v6, v0}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1192
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "object":Ljava/lang/Object;
    :cond_1
    iget-object v12, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v12, :cond_2

    .line 1193
    const-string v12, "createdAt"

    iget-object v14, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    invoke-static {v14}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1195
    :cond_2
    iget-object v12, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-eqz v12, :cond_3

    .line 1196
    const-string v12, "updatedAt"

    iget-object v14, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    invoke-static {v14}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1198
    :cond_3
    iget-object v12, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v12, :cond_4

    .line 1199
    const-string v12, "objectId"

    iget-object v14, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1202
    :cond_4
    const-string v12, "data"

    invoke-virtual {v7, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1203
    const-string v12, "classname"

    iget-object v14, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v7, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1205
    if-eqz p1, :cond_7

    .line 1206
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 1207
    .local v11, "operations":Lorg/json/JSONArray;
    iget-object v12, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/parse/ParseOperationSet;

    .line 1208
    .local v9, "operationSet":Lcom/parse/ParseOperationSet;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 1209
    .local v10, "operationSetJSON":Lorg/json/JSONObject;
    invoke-virtual {v9}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1210
    .restart local v5    # "key":Ljava/lang/String;
    invoke-virtual {v9, v5}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/parse/ParseFieldOperation;

    .line 1211
    .local v8, "op":Lcom/parse/ParseFieldOperation;
    move-object/from16 v0, p2

    invoke-interface {v8, v0}, Lcom/parse/ParseFieldOperation;->encode(Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v5, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 1213
    .end local v5    # "key":Ljava/lang/String;
    .end local v8    # "op":Lcom/parse/ParseFieldOperation;
    :cond_5
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 1215
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v9    # "operationSet":Lcom/parse/ParseOperationSet;
    .end local v10    # "operationSetJSON":Lorg/json/JSONObject;
    :cond_6
    const-string v12, "operations"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1221
    .end local v11    # "operations":Lorg/json/JSONArray;
    :cond_7
    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v7
.end method

.method toJSONObjectForSaving(Lcom/parse/ParseOperationSet;Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "operations"    # Lcom/parse/ParseOperationSet;
    .param p2, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;

    .prologue
    .line 1239
    iget-object v8, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v8

    .line 1241
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    .local v5, "objectJSON":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p1}, Lcom/parse/ParseOperationSet;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1246
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lcom/parse/ParseOperationSet;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/parse/ParseFieldOperation;

    .line 1248
    .local v6, "operation":Lcom/parse/ParseFieldOperation;
    invoke-static {v6, p2}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v1

    .line 1249
    .local v1, "encoded":Ljava/lang/Object;
    invoke-virtual {v5, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1251
    instance-of v7, v6, Lcom/parse/ParseSetOperation;

    if-eqz v7, :cond_0

    .line 1252
    check-cast v6, Lcom/parse/ParseSetOperation;

    .end local v6    # "operation":Lcom/parse/ParseFieldOperation;
    invoke-virtual {v6}, Lcom/parse/ParseSetOperation;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 1253
    .local v4, "object":Ljava/lang/Object;
    invoke-static {v4}, Lcom/parse/Parse;->isContainerObject(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1255
    iget-object v7, p0, Lcom/parse/ParseObject;->hashedObjects:Ljava/util/Map;

    new-instance v9, Lcom/parse/ParseJSONCacheItem;

    invoke-direct {v9, v4}, Lcom/parse/ParseJSONCacheItem;-><init>(Ljava/lang/Object;)V

    invoke-interface {v7, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1264
    .end local v1    # "encoded":Ljava/lang/Object;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 1265
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v9, "could not serialize object to JSON"

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1269
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v5    # "objectJSON":Lorg/json/JSONObject;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1261
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "objectJSON":Lorg/json/JSONObject;
    :cond_1
    :try_start_3
    iget-object v7, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 1262
    const-string v7, "objectId"

    iget-object v9, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1268
    :cond_2
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v5
.end method

.method toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;
    .locals 10
    .param p1, "objectEncoder"    # Lcom/parse/ParseObjectEncodingStrategy;

    .prologue
    .line 791
    iget-object v8, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v8

    .line 792
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseObject;->checkForChangesToMutableContainers()V

    .line 795
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "className"

    iget-object v9, p0, Lcom/parse/ParseObject;->className:Ljava/lang/String;

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 801
    iget-object v7, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 802
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/parse/ParseObject;->serverData:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 803
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v6, p1}, Lcom/parse/Parse;->encode(Ljava/lang/Object;Lcom/parse/ParseObjectEncodingStrategy;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 831
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 832
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v9, "could not serialize object to JSON"

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 836
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "json":Lorg/json/JSONObject;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 806
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    iget-object v7, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 807
    const-string v7, "objectId"

    iget-object v9, p0, Lcom/parse/ParseObject;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 809
    :cond_1
    iget-object v7, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    if-eqz v7, :cond_2

    .line 810
    const-string v7, "createdAt"

    iget-object v9, p0, Lcom/parse/ParseObject;->createdAt:Ljava/util/Date;

    invoke-static {v9}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 812
    :cond_2
    iget-object v7, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    if-eqz v7, :cond_3

    .line 813
    const-string v7, "updatedAt"

    iget-object v9, p0, Lcom/parse/ParseObject;->updatedAt:Ljava/util/Date;

    invoke-static {v9}, Lcom/parse/Parse;->dateToString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 816
    :cond_3
    const-string v7, "isDeletingEventually"

    iget v9, p0, Lcom/parse/ParseObject;->isDeletingEventually:I

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 823
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 824
    .local v5, "operations":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/parse/ParseObject;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseOperationSet;

    .line 825
    .local v4, "operationSet":Lcom/parse/ParseOperationSet;
    invoke-virtual {v4, p1}, Lcom/parse/ParseOperationSet;->toRest(Lcom/parse/ParseObjectEncodingStrategy;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 827
    .end local v4    # "operationSet":Lcom/parse/ParseOperationSet;
    :cond_4
    const-string v7, "__operations"

    invoke-virtual {v2, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 829
    const-string v7, "__complete"

    iget-boolean v9, p0, Lcom/parse/ParseObject;->hasBeenFetched:Z

    invoke-virtual {v2, v7, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 835
    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2
.end method

.method public unpin()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3988
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3989
    return-void
.end method

.method public unpin(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 3953
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/Parse;->waitForTask(Lbolts/Task;)Ljava/lang/Object;

    .line 3954
    return-void
.end method

.method public unpinInBackground()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3978
    const-string v0, "_default"

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/parse/ParseObject;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3944
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/parse/ParseObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;Ljava/util/List;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public unpinInBackground(Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 3966
    invoke-virtual {p0}, Lcom/parse/ParseObject;->unpinInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3967
    return-void
.end method

.method public unpinInBackground(Ljava/lang/String;Lcom/parse/DeleteCallback;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/parse/DeleteCallback;

    .prologue
    .line 3933
    invoke-virtual {p0, p1}, Lcom/parse/ParseObject;->unpinInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/Parse;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 3934
    return-void
.end method

.method unregisterSaveListener(Lcom/parse/GetCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3356
    .local p1, "callback":Lcom/parse/GetCallback;, "Lcom/parse/GetCallback<Lcom/parse/ParseObject;>;"
    iget-object v1, p0, Lcom/parse/ParseObject;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 3357
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseObject;->saveEvent:Lcom/parse/ParseMulticastDelegate;

    invoke-virtual {v0, p1}, Lcom/parse/ParseMulticastDelegate;->unsubscribe(Lcom/parse/ParseCallback2;)V

    .line 3358
    monitor-exit v1

    .line 3359
    return-void

    .line 3358
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method updateBeforeSave()V
    .locals 0

    .prologue
    .line 1603
    return-void
.end method

.method validateDelete()V
    .locals 0

    .prologue
    .line 1928
    return-void
.end method

.method validateSave()V
    .locals 0

    .prologue
    .line 1334
    return-void
.end method
