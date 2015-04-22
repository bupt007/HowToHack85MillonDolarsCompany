.class Lcom/parse/ProcFileReader;
.super Ljava/lang/Object;
.source "ProcFileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ProcFileReader$OpenFDLimits;
    }
.end annotation


# static fields
.field public static final CANNOT_DETERMINE_OPEN_FDS:I = -0x1

.field public static final SECURITY_EXCEPTION:I = -0x2

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/parse/ProcFileReader;

    sput-object v0, Lcom/parse/ProcFileReader;->TAG:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static getOpenFDCount()I
    .locals 9

    .prologue
    .line 40
    const/4 v4, 0x3

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/proc/%s/fd"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "/proc/self/fd"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "/proc/%s/fd"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 45
    .local v0, "FD_DIRS":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 46
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "fdFiles":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 48
    array-length v4, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v2    # "fdFiles":[Ljava/lang/String;
    :goto_1
    return v4

    .line 45
    .restart local v2    # "fdFiles":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "fdFiles":[Ljava/lang/String;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 54
    .local v1, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/parse/ProcFileReader;->TAG:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v4, -0x2

    goto :goto_1
.end method

.method public static getOpenFDLimits()Lcom/parse/ProcFileReader$OpenFDLimits;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "s":Ljava/util/Scanner;
    :try_start_0
    new-instance v2, Ljava/util/Scanner;

    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/self/limits"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v1    # "s":Ljava/util/Scanner;
    .local v2, "s":Ljava/util/Scanner;
    :try_start_1
    const-string v4, "Max open files"

    const/16 v5, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/util/Scanner;->findWithinHorizon(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-nez v4, :cond_1

    .line 78
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    .end local v2    # "s":Ljava/util/Scanner;
    .restart local v1    # "s":Ljava/util/Scanner;
    :cond_0
    :goto_0
    return-object v3

    .line 72
    .end local v1    # "s":Ljava/util/Scanner;
    .restart local v2    # "s":Ljava/util/Scanner;
    :cond_1
    :try_start_2
    new-instance v4, Lcom/parse/ProcFileReader$OpenFDLimits;

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/parse/ProcFileReader$OpenFDLimits;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {v2}, Ljava/util/Scanner;->close()V

    :cond_2
    move-object v3, v4

    goto :goto_0

    .line 73
    .end local v2    # "s":Ljava/util/Scanner;
    .restart local v1    # "s":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 78
    .local v0, "e":Ljava/util/NoSuchElementException;
    :goto_2
    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_3

    .line 79
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    :cond_3
    throw v3

    .line 78
    .end local v1    # "s":Ljava/util/Scanner;
    .restart local v2    # "s":Ljava/util/Scanner;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "s":Ljava/util/Scanner;
    .restart local v1    # "s":Ljava/util/Scanner;
    goto :goto_3

    .line 75
    .end local v1    # "s":Ljava/util/Scanner;
    .restart local v2    # "s":Ljava/util/Scanner;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "s":Ljava/util/Scanner;
    .restart local v1    # "s":Ljava/util/Scanner;
    goto :goto_2

    .line 73
    .end local v1    # "s":Ljava/util/Scanner;
    .restart local v2    # "s":Ljava/util/Scanner;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "s":Ljava/util/Scanner;
    .restart local v1    # "s":Ljava/util/Scanner;
    goto :goto_1
.end method
