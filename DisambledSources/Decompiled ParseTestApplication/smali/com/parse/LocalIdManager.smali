.class Lcom/parse/LocalIdManager;
.super Ljava/lang/Object;
.source "LocalIdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/LocalIdManager$1;,
        Lcom/parse/LocalIdManager$MapEntry;
    }
.end annotation


# static fields
.field private static defaultInstance:Lcom/parse/LocalIdManager;


# instance fields
.field private diskPath:Ljava/io/File;

.field private random:Ljava/util/Random;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v0

    .line 47
    .local v0, "parseDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "LocalId"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    .line 48
    iget-object v1, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 50
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lcom/parse/LocalIdManager;->random:Ljava/util/Random;

    .line 51
    return-void
.end method

.method public static declared-synchronized getDefaultInstance()Lcom/parse/LocalIdManager;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/parse/LocalIdManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/parse/LocalIdManager;->defaultInstance:Lcom/parse/LocalIdManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/parse/LocalIdManager;

    invoke-direct {v0}, Lcom/parse/LocalIdManager;-><init>()V

    sput-object v0, Lcom/parse/LocalIdManager;->defaultInstance:Lcom/parse/LocalIdManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/parse/LocalIdManager;->defaultInstance:Lcom/parse/LocalIdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;
    .locals 5
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->isLocalId(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to get invalid local id: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\"."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 77
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/parse/Parse;->getDiskObject(Ljava/io/File;)Lorg/json/JSONObject;

    move-result-object v1

    .line 78
    .local v1, "json":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 79
    new-instance v0, Lcom/parse/LocalIdManager$MapEntry;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/parse/LocalIdManager$MapEntry;-><init>(Lcom/parse/LocalIdManager;Lcom/parse/LocalIdManager$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :goto_0
    monitor-exit p0

    return-object v0

    .line 82
    :cond_1
    :try_start_2
    new-instance v0, Lcom/parse/LocalIdManager$MapEntry;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/parse/LocalIdManager$MapEntry;-><init>(Lcom/parse/LocalIdManager;Lcom/parse/LocalIdManager$1;)V

    .line 83
    .local v0, "entry":Lcom/parse/LocalIdManager$MapEntry;
    const-string v2, "retainCount"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    .line 84
    const-string v2, "objectId"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private isLocalId(Ljava/lang/String;)Z
    .locals 4
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 57
    const-string v3, "local_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v2

    .line 60
    :cond_1
    const/4 v1, 0x6

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 62
    .local v0, "c":C
    const/16 v3, 0x30

    if-lt v0, v3, :cond_2

    const/16 v3, 0x39

    if-le v0, v3, :cond_3

    :cond_2
    const/16 v3, 0x61

    if-lt v0, v3, :cond_0

    const/16 v3, 0x66

    if-gt v0, v3, :cond_0

    .line 60
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    .end local v0    # "c":C
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private declared-synchronized putMapEntry(Ljava/lang/String;Lcom/parse/LocalIdManager$MapEntry;)V
    .locals 6
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "entry"    # Lcom/parse/LocalIdManager$MapEntry;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->isLocalId(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 93
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to get invalid local id: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 96
    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .local v2, "json":Lorg/json/JSONObject;
    :try_start_2
    const-string v3, "retainCount"

    iget v4, p2, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    iget-object v3, p2, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 100
    const-string v3, "objectId"

    iget-object v4, p2, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :cond_1
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-direct {v0, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v0, "file":Ljava/io/File;
    iget-object v3, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_2
    invoke-static {v0, v2}, Lcom/parse/Parse;->saveDiskObject(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 102
    .end local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "je":Lorg/json/JSONException;
    :try_start_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Error creating local id map entry."

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private declared-synchronized removeMapEntry(Ljava/lang/String;)V
    .locals 4
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->isLocalId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to get invalid local id: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 121
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 122
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    monitor-exit p0

    return-void
.end method


# virtual methods
.method declared-synchronized clear()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 193
    .local v3, "files":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 205
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 196
    :cond_1
    :try_start_1
    array-length v7, v3

    if-eqz v7, :cond_0

    .line 199
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 200
    .local v2, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/parse/LocalIdManager;->diskPath:Ljava/io/File;

    invoke-direct {v1, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 202
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to delete file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in localId cache."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 199
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "files":[Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileName":Ljava/lang/String;
    :cond_3
    const/4 v6, 0x1

    goto :goto_0
.end method

.method declared-synchronized createLocalId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/parse/LocalIdManager;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    .line 130
    .local v2, "localIdNumber":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "localId":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/parse/LocalIdManager;->isLocalId(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generated an invalid local id: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "This should never happen. Contact us at https://parse.com/help"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v0    # "localId":Ljava/lang/String;
    .end local v2    # "localIdNumber":J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 137
    .restart local v0    # "localId":Ljava/lang/String;
    .restart local v2    # "localIdNumber":J
    :cond_0
    monitor-exit p0

    return-object v0
.end method

.method declared-synchronized getObjectId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;

    move-result-object v0

    .line 170
    .local v0, "entry":Lcom/parse/LocalIdManager$MapEntry;
    iget-object v1, v0, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 169
    .end local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized releaseLocalIdOnDisk(Ljava/lang/String;)V
    .locals 2
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;

    move-result-object v0

    .line 155
    .local v0, "entry":Lcom/parse/LocalIdManager$MapEntry;
    iget v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    .line 157
    iget v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    if-lez v1, :cond_0

    .line 158
    invoke-direct {p0, p1, v0}, Lcom/parse/LocalIdManager;->putMapEntry(Ljava/lang/String;Lcom/parse/LocalIdManager$MapEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->removeMapEntry(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 154
    .end local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized retainLocalIdOnDisk(Ljava/lang/String;)V
    .locals 2
    .param p1, "localId"    # Ljava/lang/String;

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;

    move-result-object v0

    .line 145
    .local v0, "entry":Lcom/parse/LocalIdManager$MapEntry;
    iget v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/parse/LocalIdManager;->putMapEntry(Ljava/lang/String;Lcom/parse/LocalIdManager$MapEntry;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 144
    .end local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized setObjectId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "localId"    # Ljava/lang/String;
    .param p2, "objectId"    # Ljava/lang/String;

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/parse/LocalIdManager;->getMapEntry(Ljava/lang/String;)Lcom/parse/LocalIdManager$MapEntry;

    move-result-object v0

    .line 178
    .local v0, "entry":Lcom/parse/LocalIdManager$MapEntry;
    iget v1, v0, Lcom/parse/LocalIdManager$MapEntry;->retainCount:I

    if-lez v1, :cond_1

    .line 179
    iget-object v1, v0, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to set an objectId for a localId that already has one."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 183
    .restart local v0    # "entry":Lcom/parse/LocalIdManager$MapEntry;
    :cond_0
    :try_start_1
    iput-object p2, v0, Lcom/parse/LocalIdManager$MapEntry;->objectId:Ljava/lang/String;

    .line 184
    invoke-direct {p0, p1, v0}, Lcom/parse/LocalIdManager;->putMapEntry(Ljava/lang/String;Lcom/parse/LocalIdManager$MapEntry;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :cond_1
    monitor-exit p0

    return-void
.end method
