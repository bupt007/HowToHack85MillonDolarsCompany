.class Lcom/parse/DropBoxCollector;
.super Ljava/lang/Object;
.source "DropBoxCollector.java"


# static fields
.field private static final SYSTEM_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "system_app_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "system_app_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "system_app_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "system_server_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "system_server_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system_server_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BATTERY_DISCHARGE_INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SYSTEM_RECOVERY_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SYSTEM_BOOT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SYSTEM_LAST_KMSG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "APANIC_CONSOLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "APANIC_THREADS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SYSTEM_RESTART"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SYSTEM_TOMBSTONE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data_app_strictmode"

    aput-object v2, v0, v1

    sput-object v0, Lcom/parse/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "additionalTags"    # [Ljava/lang/String;

    .prologue
    .line 62
    :try_start_0
    invoke-static {}, Lcom/parse/Compatibility;->getDropBoxServiceName()Ljava/lang/String;

    move-result-object v13

    .line 63
    .local v13, "serviceName":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v6, "dropboxContent":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 66
    .local v5, "dropbox":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string v23, "getNextEntry"

    const/16 v24, 0x2

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const-class v26, Ljava/lang/String;

    aput-object v26, v24, v25

    const/16 v25, 0x1

    sget-object v26, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 67
    .local v9, "getNextEntry":Ljava/lang/reflect/Method;
    if-eqz v9, :cond_7

    .line 68
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 69
    .local v19, "timer":Landroid/text/format/Time;
    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->setToNow()V

    .line 70
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v22, v0

    invoke-static {}, Lcom/parse/ACRA;->getConfig()Lcom/parse/ReportsCrashes;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lcom/parse/ReportsCrashes;->dropboxCollectionMinutes()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v19

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 71
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 72
    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 74
    .local v20, "time":J
    invoke-static {}, Lcom/parse/ACRA;->getConfig()Lcom/parse/ReportsCrashes;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lcom/parse/ReportsCrashes;->includeDropBoxSystemTags()Z

    move-result v22

    if-eqz v22, :cond_2

    .line 75
    new-instance v17, Ljava/util/ArrayList;

    sget-object v22, Lcom/parse/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 79
    .local v17, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    if-lez v22, :cond_0

    .line 80
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 82
    :cond_0
    const/16 v18, 0x0

    .line 83
    .local v18, "text":Ljava/lang/String;
    const/4 v8, 0x0

    .line 84
    .local v8, "entry":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_6

    .line 85
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v8    # "entry":Ljava/lang/Object;
    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 86
    .local v16, "tag":Ljava/lang/String;
    move-wide/from16 v14, v20

    .line 87
    .local v14, "msec":J
    const-string v22, "Tag: "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    const/16 v23, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 89
    .restart local v8    # "entry":Ljava/lang/Object;
    if-eqz v8, :cond_5

    .line 90
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-string v23, "getText"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sget-object v26, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 91
    .local v10, "getText":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string v24, "getTimeMillis"

    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 92
    .local v11, "getTimeMillis":Ljava/lang/reflect/Method;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    const-string v24, "close"

    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Class;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 93
    .local v4, "close":Ljava/lang/reflect/Method;
    :goto_2
    if-eqz v8, :cond_1

    .line 94
    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Long;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 95
    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 96
    const-string v22, "@"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x1f4

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v10, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "text":Ljava/lang/String;
    check-cast v18, Ljava/lang/String;

    .line 98
    .restart local v18    # "text":Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 99
    const-string v22, "Text: "

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    :goto_3
    const/16 v22, 0x0

    check-cast v22, [Ljava/lang/Object;

    move-object/from16 v0, v22

    invoke-virtual {v4, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v16, v22, v23

    const/16 v23, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v9, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_2

    .line 77
    .end local v4    # "close":Ljava/lang/reflect/Method;
    .end local v8    # "entry":Ljava/lang/Object;
    .end local v10    # "getText":Ljava/lang/reflect/Method;
    .end local v11    # "getTimeMillis":Ljava/lang/reflect/Method;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "msec":J
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "text":Ljava/lang/String;
    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .restart local v17    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_0

    .line 101
    .restart local v4    # "close":Ljava/lang/reflect/Method;
    .restart local v8    # "entry":Ljava/lang/Object;
    .restart local v10    # "getText":Ljava/lang/reflect/Method;
    .restart local v11    # "getTimeMillis":Ljava/lang/reflect/Method;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v14    # "msec":J
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v18    # "text":Ljava/lang/String;
    :cond_3
    const-string v22, "Not Text!"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_3

    .line 117
    .end local v4    # "close":Ljava/lang/reflect/Method;
    .end local v5    # "dropbox":Ljava/lang/Object;
    .end local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v8    # "entry":Ljava/lang/Object;
    .end local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v10    # "getText":Ljava/lang/reflect/Method;
    .end local v11    # "getTimeMillis":Ljava/lang/reflect/Method;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v14    # "msec":J
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "timer":Landroid/text/format/Time;
    .end local v20    # "time":J
    :catch_0
    move-exception v7

    .line 118
    .local v7, "e":Ljava/lang/SecurityException;
    const-string v22, "CrashReporting"

    const-string v23, "DropBoxManager not available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    .end local v7    # "e":Ljava/lang/SecurityException;
    :cond_4
    :goto_4
    const-string v22, "N/A"

    :goto_5
    return-object v22

    .line 107
    .restart local v5    # "dropbox":Ljava/lang/Object;
    .restart local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .restart local v8    # "entry":Ljava/lang/Object;
    .restart local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "serviceName":Ljava/lang/String;
    .restart local v14    # "msec":J
    .restart local v16    # "tag":Ljava/lang/String;
    .restart local v17    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "text":Ljava/lang/String;
    .restart local v19    # "timer":Landroid/text/format/Time;
    .restart local v20    # "time":J
    :cond_5
    :try_start_1
    const-string v22, "Nothing."

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    goto/16 :goto_1

    .line 119
    .end local v5    # "dropbox":Ljava/lang/Object;
    .end local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v8    # "entry":Ljava/lang/Object;
    .end local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "serviceName":Ljava/lang/String;
    .end local v14    # "msec":J
    .end local v16    # "tag":Ljava/lang/String;
    .end local v17    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "timer":Landroid/text/format/Time;
    .end local v20    # "time":J
    :catch_1
    move-exception v7

    .line 120
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    const-string v22, "CrashReporting"

    const-string v23, "DropBoxManager not available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 112
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    .restart local v5    # "dropbox":Ljava/lang/Object;
    .restart local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .restart local v8    # "entry":Ljava/lang/Object;
    .restart local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .restart local v13    # "serviceName":Ljava/lang/String;
    .restart local v17    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v18    # "text":Ljava/lang/String;
    .restart local v19    # "timer":Landroid/text/format/Time;
    .restart local v20    # "time":J
    :cond_6
    :try_start_2
    const-string v22, "No tag configured for collection."

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .end local v8    # "entry":Ljava/lang/Object;
    .end local v17    # "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "text":Ljava/lang/String;
    .end local v19    # "timer":Landroid/text/format/Time;
    .end local v20    # "time":J
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v22

    goto :goto_5

    .line 121
    .end local v5    # "dropbox":Ljava/lang/Object;
    .end local v6    # "dropboxContent":Ljava/lang/StringBuilder;
    .end local v9    # "getNextEntry":Ljava/lang/reflect/Method;
    .end local v13    # "serviceName":Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 122
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v22, "CrashReporting"

    const-string v23, "DropBoxManager not available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 123
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v7

    .line 124
    .local v7, "e":Ljava/lang/IllegalAccessException;
    const-string v22, "CrashReporting"

    const-string v23, "DropBoxManager not available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 125
    .end local v7    # "e":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v7

    .line 126
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v22, "CrashReporting"

    const-string v23, "DropBoxManager not available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 127
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v7

    .line 128
    .local v7, "e":Ljava/lang/NoSuchFieldException;
    const-string v22, "CrashReporting"

    const-string v23, "DropBoxManager not available."

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method
