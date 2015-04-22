.class Lcom/parse/OfflineStore;
.super Ljava/lang/Object;
.source "OfflineStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/OfflineStore$OfflineEncodingStrategy;,
        Lcom/parse/OfflineStore$OfflineDecoder;
    }
.end annotation


# static fields
.field private static final MAX_SQL_VARIABLES:I = 0x3e7

.field private static defaultInstance:Lcom/parse/OfflineStore;

.field private static final defaultInstanceLock:Ljava/lang/Object;


# instance fields
.field private final classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/WeakValueHashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field

.field private final fetchedObjects:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseObject;",
            ">;>;"
        }
    .end annotation
.end field

.field private final helper:Lcom/parse/OfflineSQLiteOpenHelper;

.field private final lock:Ljava/lang/Object;

.field private final objectToUuidMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/parse/ParseObject;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final uuidToObjectMap:Lcom/parse/WeakValueHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/WeakValueHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    .line 198
    new-instance v0, Lcom/parse/WeakValueHashMap;

    invoke-direct {v0}, Lcom/parse/WeakValueHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    .line 205
    new-instance v0, Lcom/parse/WeakValueHashMap;

    invoke-direct {v0}, Lcom/parse/WeakValueHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    .line 214
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    .line 221
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    .line 227
    new-instance v0, Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-direct {v0, p1}, Lcom/parse/OfflineSQLiteOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    .line 228
    return-void
.end method

.method static synthetic access$1000(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseObject;
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parse/OfflineStore;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parse/OfflineStore;)Lcom/parse/OfflineSQLiteOpenHelper;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->deleteDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/OfflineStore;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/OfflineStore;)Lcom/parse/WeakValueHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/parse/OfflineStore;)Ljava/util/WeakHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseQuery;
    .param p2, "x2"    # Lcom/parse/ParseUser;
    .param p3, "x3"    # Lcom/parse/ParsePin;
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/parse/OfflineStore;->getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 1
    .param p0, "x0"    # Lcom/parse/OfflineStore;
    .param p1, "x1"    # Lcom/parse/ParseObject;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Lcom/parse/ParseSQLiteDatabase;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private deleteDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 5
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    new-instance v1, Lbolts/Capture;

    invoke-direct {v1}, Lbolts/Capture;-><init>()V

    .line 1332
    .local v1, "uuid":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 1333
    :try_start_0
    iget-object v3, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;

    .line 1334
    .local v2, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 1336
    const/4 v3, 0x0

    invoke-static {v3}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v3

    monitor-exit v4

    .line 1403
    :goto_0
    return-object v3

    .line 1338
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    new-instance v3, Lcom/parse/OfflineStore$37;

    invoke-direct {v3, p0, v1}, Lcom/parse/OfflineStore$37;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 1348
    new-instance v3, Lcom/parse/OfflineStore$39;

    invoke-direct {v3, p0, v1, p2}, Lcom/parse/OfflineStore$39;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v2, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$38;

    invoke-direct {v4, p0, p2, p1}, Lcom/parse/OfflineStore$38;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Lcom/parse/ParseObject;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 1403
    .local v0, "unpinTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v3, Lcom/parse/OfflineStore$42;

    invoke-direct {v3, p0, v1, p2}, Lcom/parse/OfflineStore$42;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$41;

    invoke-direct {v4, p0, v1, p2}, Lcom/parse/OfflineStore$41;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    new-instance v4, Lcom/parse/OfflineStore$40;

    invoke-direct {v4, p0, p1}, Lcom/parse/OfflineStore$40;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v3, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v3

    goto :goto_0

    .line 1338
    .end local v0    # "unpinTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/Void;>;"
    .end local v2    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 6
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "uuids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v5, 0x3e7

    .line 1157
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_0

    .line 1158
    const/4 v4, 0x0

    invoke-static {v4}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    .line 1179
    :goto_0
    return-object v4

    .line 1163
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_1

    .line 1164
    const/4 v4, 0x0

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lcom/parse/OfflineStore;->deleteObjects(Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$32;

    invoke-direct {v5, p0, p1, p2}, Lcom/parse/OfflineStore$32;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    goto :goto_0

    .line 1172
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v4, [Ljava/lang/String;

    .line 1173
    .local v2, "placeholders":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 1174
    const-string v4, "?"

    aput-object v4, v2, v1

    .line 1173
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1176
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uuid IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1178
    .local v3, "where":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {p1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1179
    .local v0, "args":[Ljava/lang/String;
    const-string v4, "ParseObjects"

    invoke-virtual {p2, v4, v3, v0}, Lcom/parse/ParseSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v4

    goto :goto_0
.end method

.method static disableOfflineStore()V
    .locals 2

    .prologue
    .line 63
    sget-object v1, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableOfflineStore(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    sget-object v1, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/parse/OfflineStore;

    invoke-direct {v0, p0}, Lcom/parse/OfflineStore;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    .line 50
    monitor-exit v1

    .line 51
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "enableOfflineStore() called multiple times."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Z)Lbolts/Task;
    .locals 7
    .param p2, "user"    # Lcom/parse/ParseUser;
    .param p3, "pin"    # Lcom/parse/ParsePin;
    .param p4, "isCount"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            "Z)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 387
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()Lbolts/Task;

    move-result-object v6

    new-instance v0, Lcom/parse/OfflineStore$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineStore$5;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Z)V

    invoke-virtual {v6, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 21
    .param p2, "user"    # Lcom/parse/ParseUser;
    .param p3, "pin"    # Lcom/parse/ParsePin;
    .param p4, "isCount"    # Z
    .param p5, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            "Z",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/parse/ParseQuery;->includeIsDeletingEventually:Z

    .line 418
    .local v15, "includeIsDeletingEventually":Z
    new-instance v6, Lcom/parse/OfflineQueryLogic;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/parse/OfflineQueryLogic;-><init>(Lcom/parse/OfflineStore;)V

    .line 420
    .local v6, "queryLogic":Lcom/parse/OfflineQueryLogic;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v10, "results":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p3, :cond_1

    .line 424
    const-string v18, "ParseObjects"

    .line 425
    .local v18, "table":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v4, 0x0

    const-string v5, "uuid"

    aput-object v5, v17, v4

    .line 426
    .local v17, "select":[Ljava/lang/String;
    const-string v20, "className=?"

    .line 427
    .local v20, "where":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND isDeletingEventually=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 430
    :cond_0
    const/4 v4, 0x1

    new-array v14, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/parse/ParseQuery;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v4

    .line 432
    .local v14, "args":[Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3, v14}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v16

    .line 461
    .end local v14    # "args":[Ljava/lang/String;
    .end local v17    # "select":[Ljava/lang/String;
    .end local v18    # "table":Ljava/lang/String;
    .end local v20    # "where":Ljava/lang/String;
    .local v16, "queryTask":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    :goto_0
    new-instance v4, Lcom/parse/OfflineStore$8;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lcom/parse/OfflineStore$8;-><init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParseSQLiteDatabase;Ljava/util/List;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    new-instance v7, Lcom/parse/OfflineStore$7;

    move-object/from16 v8, p0

    move-object v9, v6

    move-object/from16 v11, p1

    move/from16 v12, p4

    move-object/from16 v13, p5

    invoke-direct/range {v7 .. v13}, Lcom/parse/OfflineStore$7;-><init>(Lcom/parse/OfflineStore;Lcom/parse/OfflineQueryLogic;Ljava/util/List;Lcom/parse/ParseQuery;ZLcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v4, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    .end local v16    # "queryTask":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    :goto_1
    return-object v4

    .line 434
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lbolts/Task;

    .line 435
    .local v19, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-nez v19, :cond_2

    .line 437
    invoke-static {v10}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    goto :goto_1

    .line 440
    :cond_2
    new-instance v4, Lcom/parse/OfflineStore$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v4, v0, v15, v1, v2}, Lcom/parse/OfflineStore$6;-><init>(Lcom/parse/OfflineStore;ZLcom/parse/ParseQuery;Lcom/parse/ParseSQLiteDatabase;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v16

    .restart local v16    # "queryTask":Lbolts/Task;, "Lbolts/Task<Landroid/database/Cursor;>;"
    goto :goto_0
.end method

.method public static getCurrent()Lcom/parse/OfflineStore;
    .locals 2

    .prologue
    .line 74
    sget-object v1, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 75
    :try_start_0
    sget-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 8
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "newUUID":Ljava/lang/String;
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v1

    .line 238
    .local v1, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<Ljava/lang/String;>.TaskCompletionSource;"
    iget-object v5, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 239
    :try_start_0
    iget-object v4, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbolts/Task;

    .line 240
    .local v2, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 241
    monitor-exit v5

    .line 273
    .end local v2    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    .line 245
    .restart local v2    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :cond_0
    iget-object v4, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v4, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v4, v0, p1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 247
    iget-object v4, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/OfflineStore$1;

    invoke-direct {v7, p0, p1}, Lcom/parse/OfflineStore$1;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    invoke-virtual {v4, p1, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 261
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "uuid"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v4, "className"

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v4, "ParseObjects"

    invoke-virtual {p2, v4, v3}, Lcom/parse/ParseSQLiteDatabase;->insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$2;

    invoke-direct {v5, p0, v1, v0}, Lcom/parse/OfflineStore$2;-><init>(Lcom/parse/OfflineStore;Lbolts/Task$TaskCompletionSource;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 273
    invoke-virtual {v1}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v2

    goto :goto_0

    .line 253
    .end local v2    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    .end local v3    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getPointerAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 8
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 290
    iget-object v5, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v5

    .line 291
    :try_start_0
    iget-object v4, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v4, p1}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 292
    .local v1, "existing":Lcom/parse/ParseObject;, "TT;"
    if-eqz v1, :cond_0

    .line 293
    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v4

    monitor-exit v5

    .line 305
    :goto_0
    return-object v4

    .line 295
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    const/4 v4, 0x2

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "className"

    aput-object v4, v2, v6

    const-string v4, "objectId"

    aput-object v4, v2, v7

    .line 303
    .local v2, "select":[Ljava/lang/String;
    const-string v3, "uuid = ?"

    .line 304
    .local v3, "where":Ljava/lang/String;
    new-array v0, v7, [Ljava/lang/String;

    aput-object p1, v0, v6

    .line 305
    .local v0, "args":[Ljava/lang/String;
    const-string v4, "ParseObjects"

    invoke-virtual {p2, v4, v2, v3, v0}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$3;

    invoke-direct {v5, p0, p1}, Lcom/parse/OfflineStore$3;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    goto :goto_0

    .line 295
    .end local v0    # "args":[Ljava/lang/String;
    .end local v1    # "existing":Lcom/parse/ParseObject;, "TT;"
    .end local v2    # "select":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    .line 54
    sget-object v1, Lcom/parse/OfflineStore;->defaultInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Lcom/parse/OfflineStore;->defaultInstance:Lcom/parse/OfflineStore;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 6
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1001
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    if-eqz p2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1004
    .local v2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    :goto_0
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1005
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v3, "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 1012
    .local v1, "obj":Lcom/parse/ParseObject;
    invoke-virtual {p0, v1, p3}, Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v4

    invoke-virtual {v4}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1001
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "obj":Lcom/parse/ParseObject;
    .end local v2    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .end local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 1015
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "objects":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    .restart local v3    # "tasks":Ljava/util/List;, "Ljava/util/List<Lbolts/Task<Ljava/lang/Void;>;>;"
    :cond_2
    invoke-static {v3}, Lbolts/Task;->whenAll(Ljava/util/Collection;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$24;

    invoke-direct {v5, p0, p1}, Lcom/parse/OfflineStore$24;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$23;

    invoke-direct {v5, p0, p3}, Lcom/parse/OfflineStore$23;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$22;

    invoke-direct {v5, p0, p1, p3}, Lcom/parse/OfflineStore$22;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    new-instance v5, Lcom/parse/OfflineStore$21;

    invoke-direct {v5, p0, v2, p3}, Lcom/parse/OfflineStore$21;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v4, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v4

    return-object v4
.end method

.method private saveLocallyAsync(Lcom/parse/ParseObject;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 3
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "includeAllChildren"    # Z
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Z",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 979
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v0, "objectsInTree":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/parse/ParseObject;>;"
    if-nez p2, :cond_0

    .line 982
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 995
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 984
    :cond_0
    new-instance v1, Lcom/parse/OfflineStore$20;

    invoke-direct {v1, p0, v0}, Lcom/parse/OfflineStore$20;-><init>(Lcom/parse/OfflineStore;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/parse/OfflineStore$20;->setYieldRoot(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/parse/ParseTraverser;->setTraverseParseObjects(Z)Lcom/parse/ParseTraverser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parse/ParseTraverser;->traverse(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private saveLocallyAsync(Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 11
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "object"    # Lcom/parse/ParseObject;
    .param p3, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    invoke-virtual {p2}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseObject;->isDataAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseObject;->hasChanges()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/parse/ParseObject;->hasOutstandingOperations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 859
    :goto_0
    return-object v0

    .line 855
    :cond_0
    new-instance v2, Lbolts/Capture;

    invoke-direct {v2}, Lbolts/Capture;-><init>()V

    .line 856
    .local v2, "uuid":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    new-instance v4, Lbolts/Capture;

    invoke-direct {v4}, Lbolts/Capture;-><init>()V

    .line 859
    .local v4, "encoded":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/Object;>;"
    invoke-direct {p0, p2, p3}, Lcom/parse/OfflineStore;->getOrCreateUUIDAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v6

    new-instance v0, Lcom/parse/OfflineStore$17;

    move-object v1, p0

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineStore$17;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;Lbolts/Capture;Lcom/parse/ParseObject;)V

    invoke-virtual {v6, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v5, Lcom/parse/OfflineStore$16;

    move-object v6, p0

    move-object v7, p2

    move-object v8, v4

    move-object v9, v2

    move-object v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/parse/OfflineStore$16;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lbolts/Capture;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$15;

    invoke-direct {v1, p0, p1, v2, p3}, Lcom/parse/OfflineStore$15;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private unpinAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
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
    .line 1074
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$27;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$27;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1102
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1104
    .local v0, "uuidsToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Void;

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$31;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/OfflineStore$31;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$30;

    invoke-direct {v2, p0, v0, p2}, Lcom/parse/OfflineStore$30;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$29;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/OfflineStore$29;-><init>(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineStore$28;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineStore$28;-><init>(Lcom/parse/OfflineStore;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method private updateDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 12
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1252
    new-instance v2, Lbolts/Capture;

    invoke-direct {v2}, Lbolts/Capture;-><init>()V

    .line 1253
    .local v2, "uuid":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    new-instance v4, Lbolts/Capture;

    invoke-direct {v4}, Lbolts/Capture;-><init>()V

    .line 1257
    .local v4, "jsonObject":Lbolts/Capture;, "Lbolts/Capture<Lorg/json/JSONObject;>;"
    iget-object v1, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1258
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbolts/Task;

    .line 1259
    .local v11, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-nez v11, :cond_0

    .line 1261
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1264
    :goto_0
    return-object v0

    .line 1263
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    new-instance v0, Lcom/parse/OfflineStore$35;

    move-object v1, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineStore$35;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;Lbolts/Capture;Lcom/parse/ParseObject;)V

    invoke-virtual {v11, v0}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v5, Lcom/parse/OfflineStore$34;

    move-object v6, p0

    move-object v7, p1

    move-object v8, v4

    move-object v9, v2

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lcom/parse/OfflineStore$34;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Lbolts/Capture;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v5}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 1263
    .end local v11    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method clearDatabase(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0, p1}, Lcom/parse/OfflineSQLiteOpenHelper;->clearDatabase(Landroid/content/Context;)V

    .line 1456
    return-void
.end method

.method countAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;)Lbolts/Task;
    .locals 2
    .param p2, "user"    # Lcom/parse/ParseUser;
    .param p3, "pin"    # Lcom/parse/ParsePin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$4;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$4;-><init>(Lcom/parse/OfflineStore;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method deleteDataForObjectAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$36;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$36;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method fetchLocallyAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(TT;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 823
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$14;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$14;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 13
    .param p2, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(TT;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 615
    .local p1, "object":Lcom/parse/ParseObject;, "TT;"
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v5

    .line 618
    .local v5, "tcs":Lbolts/Task$TaskCompletionSource;, "Lbolts/Task<TT;>.TaskCompletionSource;"
    iget-object v10, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 619
    :try_start_0
    iget-object v9, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 624
    iget-object v9, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbolts/Task;

    monitor-exit v10

    .line 751
    :goto_0
    return-object v9

    .line 631
    :cond_0
    iget-object v9, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v5}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v11

    invoke-virtual {v9, p1, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    iget-object v9, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbolts/Task;

    .line 634
    .local v7, "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 636
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "objectId":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v9}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v2

    .line 644
    .local v2, "jsonStringTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    if-nez v3, :cond_2

    .line 646
    if-nez v7, :cond_1

    .line 751
    :goto_1
    new-instance v9, Lcom/parse/OfflineStore$13;

    invoke-direct {v9, p0, p2, p1}, Lcom/parse/OfflineStore$13;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;Lcom/parse/ParseObject;)V

    invoke-virtual {v2, v9}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v9

    new-instance v10, Lcom/parse/OfflineStore$12;

    invoke-direct {v10, p0, v5, p1}, Lcom/parse/OfflineStore$12;-><init>(Lcom/parse/OfflineStore;Lbolts/Task$TaskCompletionSource;Lcom/parse/ParseObject;)V

    invoke-virtual {v9, v10}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v9

    goto :goto_0

    .line 634
    .end local v1    # "className":Ljava/lang/String;
    .end local v2    # "jsonStringTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    .end local v3    # "objectId":Ljava/lang/String;
    .end local v7    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 661
    .restart local v1    # "className":Ljava/lang/String;
    .restart local v2    # "jsonStringTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    .restart local v3    # "objectId":Ljava/lang/String;
    .restart local v7    # "uuidTask":Lbolts/Task;, "Lbolts/Task<Ljava/lang/String;>;"
    :cond_1
    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "json"

    aput-object v10, v4, v9

    .line 662
    .local v4, "select":[Ljava/lang/String;
    const-string v8, "uuid = ?"

    .line 663
    .local v8, "where":Ljava/lang/String;
    new-instance v6, Lbolts/Capture;

    invoke-direct {v6}, Lbolts/Capture;-><init>()V

    .line 664
    .local v6, "uuid":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    new-instance v9, Lcom/parse/OfflineStore$10;

    invoke-direct {v9, p0, v6, p2, v4}, Lcom/parse/OfflineStore$10;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;Lcom/parse/ParseSQLiteDatabase;[Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v9

    new-instance v10, Lcom/parse/OfflineStore$9;

    invoke-direct {v10, p0, v6}, Lcom/parse/OfflineStore$9;-><init>(Lcom/parse/OfflineStore;Lbolts/Capture;)V

    invoke-virtual {v9, v10}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    .line 686
    goto :goto_1

    .line 688
    .end local v4    # "select":[Ljava/lang/String;
    .end local v6    # "uuid":Lbolts/Capture;, "Lbolts/Capture<Ljava/lang/String;>;"
    .end local v8    # "where":Ljava/lang/String;
    :cond_2
    if-eqz v7, :cond_3

    .line 693
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "This object must have already been fetched from the local datastore, but isn\'t marked as fetched."

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Lbolts/Task$TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    .line 695
    iget-object v10, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v10

    .line 697
    :try_start_2
    iget-object v9, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v9, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 699
    invoke-virtual {v5}, Lbolts/Task$TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v9

    goto :goto_0

    .line 698
    :catchall_1
    move-exception v9

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v9

    .line 708
    :cond_3
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "json"

    aput-object v10, v4, v9

    const/4 v9, 0x1

    const-string v10, "uuid"

    aput-object v10, v4, v9

    .line 709
    .restart local v4    # "select":[Ljava/lang/String;
    const-string v9, "%s = ? AND %s = ?"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "className"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const-string v12, "objectId"

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 712
    .restart local v8    # "where":Ljava/lang/String;
    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v0, v9

    const/4 v9, 0x1

    aput-object v3, v0, v9

    .line 713
    .local v0, "args":[Ljava/lang/String;
    const-string v9, "ParseObjects"

    invoke-virtual {p2, v9, v4, v8, v0}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lbolts/Task;

    move-result-object v9

    new-instance v10, Lcom/parse/OfflineStore$11;

    invoke-direct {v10, p0, p1}, Lcom/parse/OfflineStore$11;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v9, v10}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    goto/16 :goto_1
.end method

.method findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;)Lbolts/Task;
    .locals 1
    .param p2, "user"    # Lcom/parse/ParseUser;
    .param p3, "pin"    # Lcom/parse/ParsePin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;Lcom/parse/ParseSQLiteDatabase;)Lbolts/Task;
    .locals 6
    .param p2, "user"    # Lcom/parse/ParseUser;
    .param p3, "pin"    # Lcom/parse/ParsePin;
    .param p4, "db"    # Lcom/parse/ParseSQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseQuery",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lcom/parse/ParsePin;",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "query":Lcom/parse/ParseQuery;, "Lcom/parse/ParseQuery<TT;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/OfflineStore;->findAsync(Lcom/parse/ParseQuery;Lcom/parse/ParseUser;Lcom/parse/ParsePin;ZLcom/parse/ParseSQLiteDatabase;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method getOrCreateObjectWithoutData(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/parse/ParseObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 559
    if-nez p2, :cond_0

    .line 560
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "objectId cannot be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 565
    .local v0, "classNameAndObjectId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 566
    :try_start_0
    iget-object v2, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v2, v0}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseObject;

    .line 567
    .local v1, "object":Lcom/parse/ParseObject;
    if-eqz v1, :cond_1

    .line 568
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v3

    .line 572
    :goto_0
    return-object v2

    :cond_1
    invoke-static {p1}, Lcom/parse/ParseObject;->create(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 573
    .end local v1    # "object":Lcom/parse/ParseObject;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method registerNewObject(Lcom/parse/ParseObject;)V
    .locals 4
    .param p1, "object"    # Lcom/parse/ParseObject;

    .prologue
    .line 1187
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getObjectId()Ljava/lang/String;

    move-result-object v2

    .line 1188
    .local v2, "objectId":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1189
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 1191
    .local v1, "classNameAndObjectId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v3, v1, p1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1193
    .end local v0    # "className":Ljava/lang/String;
    .end local v1    # "classNameAndObjectId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method saveLocallyAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$18;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$18;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;)Lbolts/Task;
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseObject;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 944
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Lcom/parse/ParseObject;>;"
    iget-object v0, p0, Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$19;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/OfflineStore$19;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method simulateReboot()V
    .locals 2

    .prologue
    .line 1443
    iget-object v1, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1444
    :try_start_0
    iget-object v0, p0, Lcom/parse/OfflineStore;->uuidToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0}, Lcom/parse/WeakValueHashMap;->clear()V

    .line 1445
    iget-object v0, p0, Lcom/parse/OfflineStore;->objectToUuidMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1446
    iget-object v0, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v0}, Lcom/parse/WeakValueHashMap;->clear()V

    .line 1447
    iget-object v0, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 1448
    monitor-exit v1

    .line 1449
    return-void

    .line 1448
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method unpinAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 2
    .param p1, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1055
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$26;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$26;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$25;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$25;-><init>(Lcom/parse/OfflineStore;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method updateDataForObjectAsync(Lcom/parse/ParseObject;)Lbolts/Task;
    .locals 4
    .param p1, "object"    # Lcom/parse/ParseObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1203
    iget-object v2, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 1204
    :try_start_0
    iget-object v1, p0, Lcom/parse/OfflineStore;->fetchedObjects:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbolts/Task;

    .line 1205
    .local v0, "fetched":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject;>;"
    if-nez v0, :cond_0

    .line 1206
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "An object cannot be updated if it wasn\'t fetched."

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 1210
    :goto_0
    return-object v1

    .line 1209
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1210
    new-instance v1, Lcom/parse/OfflineStore$33;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineStore$33;-><init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 1209
    .end local v0    # "fetched":Lbolts/Task;, "Lbolts/Task<Lcom/parse/ParseObject;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method updateObjectId(Lcom/parse/ParseObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "object"    # Lcom/parse/ParseObject;
    .param p2, "oldObjectId"    # Ljava/lang/String;
    .param p3, "newObjectId"    # Ljava/lang/String;

    .prologue
    .line 581
    if-eqz p2, :cond_1

    .line 582
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 602
    :goto_0
    return-void

    .line 585
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "objectIds cannot be changed in offline mode."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 588
    :cond_1
    invoke-virtual {p1}, Lcom/parse/ParseObject;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 589
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 591
    .local v1, "classNameAndNewObjectId":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/parse/OfflineStore;->lock:Ljava/lang/Object;

    monitor-enter v4

    .line 593
    :try_start_0
    iget-object v3, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v3, v1}, Lcom/parse/WeakValueHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseObject;

    .line 594
    .local v2, "existing":Lcom/parse/ParseObject;
    if-eqz v2, :cond_2

    if-eq v2, p1, :cond_2

    .line 595
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Attempted to change an objectId to one that\'s already known to the Offline Store."

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 601
    .end local v2    # "existing":Lcom/parse/ParseObject;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 600
    .restart local v2    # "existing":Lcom/parse/ParseObject;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/parse/OfflineStore;->classNameAndObjectIdToObjectMap:Lcom/parse/WeakValueHashMap;

    invoke-virtual {v3, v1, p1}, Lcom/parse/WeakValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 601
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
