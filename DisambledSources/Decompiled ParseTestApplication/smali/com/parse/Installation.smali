.class Lcom/parse/Installation;
.super Ljava/lang/Object;
.source "Installation.java"


# static fields
.field private static final INSTALLATION:Ljava/lang/String; = "installation"

.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Installation;->sID:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized id(Lcom/parse/FileProvider;)Ljava/lang/String;
    .locals 5
    .param p0, "fileProvider"    # Lcom/parse/FileProvider;

    .prologue
    .line 37
    const-class v4, Lcom/parse/Installation;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/parse/Installation;->sID:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 38
    const-string v3, "cr"

    invoke-interface {p0, v3}, Lcom/parse/FileProvider;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 39
    .local v1, "filesDir":Ljava/io/File;
    if-nez v1, :cond_0

    .line 40
    const-string v3, "n/a"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .end local v1    # "filesDir":Ljava/io/File;
    :goto_0
    monitor-exit v4

    return-object v3

    .line 43
    .restart local v1    # "filesDir":Ljava/io/File;
    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "installation"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .local v2, "installation":Ljava/io/File;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    invoke-static {v2}, Lcom/parse/Installation;->writeInstallationFile(Ljava/io/File;)V

    .line 47
    :cond_1
    invoke-static {v2}, Lcom/parse/Installation;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/parse/Installation;->sID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .end local v1    # "filesDir":Ljava/io/File;
    .end local v2    # "installation":Ljava/io/File;
    :cond_2
    :try_start_3
    sget-object v3, Lcom/parse/Installation;->sID:Ljava/lang/String;

    goto :goto_0

    .line 48
    .restart local v1    # "filesDir":Ljava/io/File;
    .restart local v2    # "installation":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "n/a"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "filesDir":Ljava/io/File;
    .end local v2    # "installation":Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    .local v1, "f":Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 59
    .local v0, "bytes":[B
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 60
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-object v2

    .end local v0    # "bytes":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v2
.end method

.method private static writeInstallationFile(Ljava/io/File;)V
    .locals 3
    .param p0, "installation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "id":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 74
    return-void

    .line 72
    .end local v0    # "id":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method
