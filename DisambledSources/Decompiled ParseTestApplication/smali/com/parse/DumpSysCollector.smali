.class Lcom/parse/DumpSysCollector;
.super Ljava/lang/Object;
.source "DumpSysCollector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static collectLargerMemoryInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v1, "writer":Ljava/lang/StringBuilder;
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 117
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Large heap size ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 120
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "writer":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method protected static collectMemInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v5, "meminfo":Ljava/lang/StringBuilder;
    const-string v12, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 53
    .local v2, "am":Landroid/app/ActivityManager;
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 54
    .local v6, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 55
    new-instance v3, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v3}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 56
    .local v3, "dmi":Landroid/os/Debug$MemoryInfo;
    invoke-static {v3}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 57
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    .line 58
    .local v4, "memclass":I
    const/high16 v12, 0x42c80000    # 100.0f

    iget v13, v3, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    iget v14, v3, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    const/high16 v14, 0x44800000    # 1024.0f

    int-to-float v15, v4

    mul-float/2addr v14, v15

    div-float/2addr v13, v14

    mul-float/2addr v12, v13

    float-to-int v7, v12

    .line 60
    .local v7, "pct_dn":I
    iget v12, v3, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    mul-int/lit8 v12, v12, 0x64

    int-to-float v12, v12

    const/high16 v13, 0x44800000    # 1024.0f

    int-to-float v14, v4

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    float-to-int v9, v12

    .line 61
    .local v9, "pct_n":I
    iget v12, v3, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    iget v13, v3, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    add-int/2addr v12, v13

    iget v13, v3, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    add-int/2addr v12, v13

    mul-int/lit8 v12, v12, 0x64

    int-to-float v12, v12

    const/high16 v13, 0x44800000    # 1024.0f

    int-to-float v14, v4

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    float-to-int v8, v12

    .line 64
    .local v8, "pct_dno":I
    iget v12, v3, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    mul-int/lit8 v12, v12, 0x64

    int-to-float v12, v12

    const/high16 v13, 0x44800000    # 1024.0f

    int-to-float v14, v4

    mul-float/2addr v13, v14

    div-float/2addr v12, v13

    float-to-int v10, v12

    .line 66
    .local v10, "pct_o":I
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "percent dalvik+native / native / d+n+other / other %d / %d / %d / %d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "avail/thresh/low? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v6, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, v6, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-wide/16 v14, 0x64

    iget-wide v0, v6, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    long-to-float v13, v14

    iget-wide v14, v6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-float v14, v14

    div-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%) memclass="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v12, "DebugMemInfo(kB): Private / Proportional / Shared"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "          dalvik: %7d / %7d / %7d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v0, v3, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v3, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v3, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "          native: %7d / %7d / %7d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v0, v3, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v3, Landroid/os/Debug$MemoryInfo;->nativePss:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v3, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "           other: %7d / %7d / %7d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget v0, v3, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget v0, v3, Landroid/os/Debug$MemoryInfo;->otherPss:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget v0, v3, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "GC: %d GCs, %d freed, %d free count"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/Debug;->getGlobalGcInvocationCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedSize()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {}, Landroid/os/Debug;->getGlobalFreedCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "Native Heap: size/allocated/free %7d / %7d / %7d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "Threads: alloc count/alloc size/ext ac/ext as %7d / %7d / %7d / %7d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {}, Landroid/os/Debug;->getThreadAllocCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {}, Landroid/os/Debug;->getThreadAllocSize()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {}, Landroid/os/Debug;->getThreadExternalAllocCount()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {}, Landroid/os/Debug;->getThreadExternalAllocSize()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    .line 99
    .local v11, "runtime":Ljava/lang/Runtime;
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v13, "Java Heap: size/allocated/free %7d / %7d / %7d"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v11}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual {v11}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v16

    invoke-virtual {v11}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v18

    sub-long v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-virtual {v11}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12
.end method
