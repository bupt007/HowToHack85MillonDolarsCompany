.class Lcom/parse/SettingsCollector;
.super Ljava/lang/Object;
.source "SettingsCollector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectSecureSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 84
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .local v6, "result":Ljava/lang/StringBuilder;
    const-class v8, Landroid/provider/Settings$Secure;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 86
    .local v4, "keys":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 87
    .local v3, "key":Ljava/lang/reflect/Field;
    const-class v8, Ljava/lang/Deprecated;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_0

    invoke-static {v3}, Lcom/parse/SettingsCollector;->isAuthorized(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 89
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 91
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "CrashReporting"

    const-string v9, "Error : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 95
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v8, "CrashReporting"

    const-string v9, "Error : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 101
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "key":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static collectSystemSettings(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v6, "result":Ljava/lang/StringBuilder;
    const-class v8, Landroid/provider/Settings$System;

    invoke-virtual {v8}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 53
    .local v4, "keys":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v3, v0, v2

    .line 57
    .local v3, "key":Ljava/lang/reflect/Field;
    const-class v8, Ljava/lang/Deprecated;

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/lang/String;

    if-ne v8, v9, :cond_0

    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 61
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v7    # "value":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "CrashReporting"

    const-string v9, "Error : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 65
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v8, "CrashReporting"

    const-string v9, "Error : "

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 71
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v3    # "key":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method private static isAuthorized(Ljava/lang/reflect/Field;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/reflect/Field;

    .prologue
    .line 105
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI_AP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
